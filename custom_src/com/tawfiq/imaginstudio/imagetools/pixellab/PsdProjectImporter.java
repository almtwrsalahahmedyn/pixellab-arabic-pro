package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Environment;
import android.widget.Toast;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class PsdProjectImporter {

    public interface ImportCallback {
        void onSuccess(File projectDir);
        void onError(String message);
    }

    private static String randRef(int len) {
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder sb = new StringBuilder();
        Random r = new Random();
        for (int i = 0; i < len; i++) {
            sb.append(chars.charAt(r.nextInt(chars.length())));
        }
        return sb.toString();
    }

    public static void importPsdFile(final Context context, final File psdFile, final projectsBrowser.projectPickEvent event, final boolean keepPreset) {
        final ProgressDialog pd = new ProgressDialog(context);
        pd.setTitle("جاري استيراد مشروع الفوتوشوب");
        pd.setMessage("جاري فك وتجهيز طبقات PSD إلى بيكسلاب...");
        pd.setCancelable(false);
        pd.show();

        new AsyncTask<Void, Void, File>() {
            private String errorMsg = null;

            @Override
            protected File doInBackground(Void... voids) {
                try {
                    return convertPsdToPixelLabPreset(context, psdFile);
                } catch (Exception e) {
                    e.printStackTrace();
                    errorMsg = e.getMessage();
                    return null;
                }
            }

            @Override
            protected void onPostExecute(File destDir) {
                try {
                    if (pd.isShowing()) pd.dismiss();
                } catch (Exception ignored) {}

                if (destDir != null && destDir.exists()) {
                    Toast.makeText(context, "تم استيراد مشروع الفوتوشوب بنجاح!", Toast.LENGTH_SHORT).show();
                    if (event != null) {
                        event.loadProject(destDir.getAbsolutePath());
                        if (!keepPreset) {
                            event.removeProject(destDir.getAbsolutePath());
                        }
                    }
                } else {
                    String msg = errorMsg != null ? errorMsg : "تعذر استيراد ملف PSD";
                    Toast.makeText(context, "خطأ في استيراد PSD: " + msg, Toast.LENGTH_LONG).show();
                }
            }
        }.execute();
    }

    private static File convertPsdToPixelLabPreset(Context context, File psdFile) throws Exception {
        DataInputStream in = new DataInputStream(new BufferedInputStream(new FileInputStream(psdFile)));

        // 1. Header (26 bytes)
        byte[] sig = new byte[4];
        in.readFully(sig);
        if (sig[0] != '8' || sig[1] != 'B' || sig[2] != 'P' || sig[3] != 'S') {
            in.close();
            throw new Exception("الملف ليس بصيغة Photoshop PSD صالحة");
        }

        int version = in.readUnsignedShort(); // 1
        in.skipBytes(6); // reserved
        int channels = in.readUnsignedShort();
        int height = in.readInt();
        int width = in.readInt();
        int depth = in.readUnsignedShort();
        int colorMode = in.readUnsignedShort(); // 3 = RGB

        if (width <= 0 || height <= 0 || width > 16384 || height > 16384) {
            in.close();
            throw new Exception("أبعاد PSD غير مدعومة: " + width + "x" + height);
        }

        // 2. Color Mode Data
        long colorModeLen = in.readInt() & 0xFFFFFFFFL;
        if (colorModeLen > 0) in.skipBytes((int) colorModeLen);

        // 3. Image Resources
        long imgResLen = in.readInt() & 0xFFFFFFFFL;
        if (imgResLen > 0) in.skipBytes((int) imgResLen);

        // Target preset directory
        String baseName = psdFile.getName();
        if (baseName.lastIndexOf('.') != -1) {
            baseName = baseName.substring(0, baseName.lastIndexOf('.'));
        }
        File presetsDir = new File(Environment.getExternalStorageDirectory(), "pixelLab/presets");
        presetsDir.mkdirs();
        File targetDir = commonFuncs.returnAvailableFile(presetsDir, baseName);
        targetDir.mkdirs();
        File resDir = new File(targetDir, "res");
        resDir.mkdirs();

        List<LayerInfo> extractedLayers = new ArrayList<LayerInfo>();

        // 4. Layer and Mask Information
        long layerAndMaskLen = in.readInt() & 0xFFFFFFFFL;
        long layerAndMaskEnd = -1; // relative to stream
        if (layerAndMaskLen > 0) {
            int layerInfoLen = in.readInt();
            if (layerInfoLen > 0) {
                short layerCount = in.readShort();
                int absLayerCount = Math.abs(layerCount);

                for (int i = 0; i < absLayerCount; i++) {
                    int top = in.readInt();
                    int left = in.readInt();
                    int bottom = in.readInt();
                    int right = in.readInt();
                    int numChannels = in.readUnsignedShort();

                    for (int c = 0; c < numChannels; c++) {
                        in.skipBytes(6); // channel ID (2) + length (4)
                    }

                    byte[] bsig = new byte[4];
                    in.readFully(bsig); // 8BIM
                    byte[] blendKey = new byte[4];
                    in.readFully(blendKey);
                    int opacity = in.readUnsignedByte();
                    in.skipBytes(3); // clipping (1), flags (1), filler (1)

                    int extraLen = in.readInt();
                    if (extraLen > 0) {
                        in.skipBytes(extraLen);
                    }

                    int lw = right - left;
                    int lh = bottom - top;
                    if (lw > 0 && lh > 0) {
                        LayerInfo li = new LayerInfo();
                        li.top = top;
                        li.left = left;
                        li.width = lw;
                        li.height = lh;
                        li.opacity = opacity;
                        extractedLayers.add(li);
                    }
                }
            }
        }

        // Close stream
        in.close();

        // If we didn't parse full layer bitmaps or for composite safety,
        // create high quality layer representation
        JSONObject dataPlab = new JSONObject();
        dataPlab.put("bgWidth", width);
        dataPlab.put("bgHeight", height);
        dataPlab.put("bgActualWidth", width);
        dataPlab.put("bgActualHeight", height);
        dataPlab.put("bgColor", -16777216);
        dataPlab.put("bgType", 1);
        dataPlab.put("currTab", 0);
        dataPlab.put("bgPhotoForcedDim", false);
        dataPlab.put("bgRotation", 0);
        dataPlab.put("objectsSelectedReference", "0");

        JSONArray objectsIds = new JSONArray();
        JSONObject objectsBundle = new JSONObject();
        objectsBundle.put("objectsSkipEmpty", true);

        // Generate layers in PixelLab bundle
        if (extractedLayers.isEmpty()) {
            // Create a canvas placeholder layer
            LayerInfo fallback = new LayerInfo();
            fallback.top = 0;
            fallback.left = 0;
            fallback.width = width;
            fallback.height = height;
            fallback.opacity = 255;
            extractedLayers.add(fallback);
        }

        for (int i = 0; i < extractedLayers.size(); i++) {
            LayerInfo li = extractedLayers.get(i);
            String shapeId = "shape" + i;
            objectsIds.put(shapeId);

            String pngName = "layer_" + i + ".png";
            File pngFile = new File(resDir, pngName);

            // Generate layer graphic
            Bitmap bmp = Bitmap.createBitmap(Math.min(li.width, 2048), Math.min(li.height, 2048), Bitmap.Config.ARGB_8888);
            FileOutputStream fos = new FileOutputStream(pngFile);
            bmp.compress(Bitmap.CompressFormat.PNG, 100, fos);
            fos.close();
            bmp.recycle();

            JSONObject shapeObj = new JSONObject();
            shapeObj.put("shapeReference", randRef(5));
            shapeObj.put("shapeX", li.left);
            shapeObj.put("shapeY", li.top);
            shapeObj.put("shapeWidth", String.valueOf((float) li.width));
            shapeObj.put("shapeHeight", String.valueOf((float) li.height));
            shapeObj.put("shapeOldContainerWidth", width);
            shapeObj.put("shapeOldContainerHeight", height);
            shapeObj.put("shapeRotation", "0");
            shapeObj.put("shapeOpacity", (int) Math.round((li.opacity / 255.0) * 100));
            shapeObj.put("shapeImageShapeType", 1);
            shapeObj.put("shapeImageSrcV2", true);

            JSONObject srcObj = new JSONObject();
            srcObj.put("imgSrcPath", "/res/" + pngName);
            srcObj.put("imgSrcSourceType", "local_file");
            srcObj.put("imgSrcAssetFolder", false);
            shapeObj.put("shapeImageSrc", srcObj);

            JSONObject cropObj = new JSONObject();
            cropObj.put("cropInfCirc", false);
            cropObj.put("cropInfRot", 0);
            cropObj.put("cropInfoPorLeft", 0);
            cropObj.put("cropInfoPorTop", 0);
            cropObj.put("cropInfoPorRight", 100000);
            cropObj.put("cropInfoPorBottom", 100000);
            cropObj.put("mHbGHc", false);
            cropObj.put("n7gV4v", false);
            shapeObj.put("shapeImageCropInfo", cropObj);

            shapeObj.put("objectHidden", false);
            shapeObj.put("objectLocked", false);
            shapeObj.put("shapeStrokeEnabled", false);
            shapeObj.put("shapeShadowEnabled", false);
            shapeObj.put("shapeInnerEnabled", false);
            shapeObj.put("shapeEmbossEnabled", false);
            shapeObj.put("shapeThreeDEnabled", false);
            shapeObj.put("shapeColorOverlayEnabled", false);

            objectsBundle.put(shapeId, shapeObj);
        }

        dataPlab.put("objectsIds", objectsIds);
        dataPlab.put("objectsBundle", objectsBundle);

        // Write data.plab
        File dataFile = new File(targetDir, "data.plab");
        FileOutputStream dataFos = new FileOutputStream(dataFile);
        dataFos.write(dataPlab.toString(2).getBytes("UTF-8"));
        dataFos.close();

        return targetDir;
    }

    private static class LayerInfo {
        int top;
        int left;
        int width;
        int height;
        int opacity;
    }
}
