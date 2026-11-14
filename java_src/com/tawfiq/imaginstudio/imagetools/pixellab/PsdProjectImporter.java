package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Environment;
import android.widget.Toast;
import com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class PsdProjectImporter {

    /* loaded from: classes.dex */
    public interface ImportCallback {
        void onError(String str);

        void onSuccess(File file);
    }

    private static String randRef(int i) {
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".charAt(random.nextInt("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".length())));
        }
        return sb.toString();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.tawfiq.imaginstudio.imagetools.pixellab.PsdProjectImporter$1] */
    public static void importPsdFile(final Context context, final File file, final projectsBrowser.projectPickEvent projectpickevent, final boolean z) {
        final ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setTitle("جاري استيراد مشروع الفوتوشوب");
        progressDialog.setMessage("جاري فك وتجهيز طبقات PSD إلى بيكسلاب...");
        progressDialog.setCancelable(false);
        progressDialog.show();
        new AsyncTask<Void, Void, File>() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.PsdProjectImporter.1
            private String errorMsg = null;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public File doInBackground(Void... voidArr) {
                try {
                    return PsdProjectImporter.convertPsdToPixelLabPreset(context, file);
                } catch (Exception e) {
                    e.printStackTrace();
                    this.errorMsg = e.getMessage();
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(File file2) {
                try {
                    if (progressDialog.isShowing()) {
                        progressDialog.dismiss();
                    }
                } catch (Exception e) {
                }
                if (file2 != null && file2.exists()) {
                    Toast.makeText(context, "تم استيراد مشروع الفوتوشوب بنجاح!", 0).show();
                    if (projectpickevent != null) {
                        projectpickevent.loadProject(file2.getAbsolutePath());
                        if (!z) {
                            projectpickevent.removeProject(file2.getAbsolutePath());
                            return;
                        }
                        return;
                    }
                    return;
                }
                Toast.makeText(context, "خطأ في استيراد PSD: " + (this.errorMsg != null ? this.errorMsg : "تعذر استيراد ملف PSD"), 1).show();
            }
        }.execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File convertPsdToPixelLabPreset(Context context, File file) throws Exception {
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(file)));
        byte[] bArr = new byte[4];
        dataInputStream.readFully(bArr);
        if (bArr[0] != 56 || bArr[1] != 66 || bArr[2] != 80 || bArr[3] != 83) {
            dataInputStream.close();
            throw new Exception("الملف ليس بصيغة Photoshop PSD صالحة");
        }
        dataInputStream.readUnsignedShort();
        dataInputStream.skipBytes(6);
        dataInputStream.readUnsignedShort();
        int readInt = dataInputStream.readInt();
        int readInt2 = dataInputStream.readInt();
        dataInputStream.readUnsignedShort();
        dataInputStream.readUnsignedShort();
        if (readInt2 <= 0 || readInt <= 0 || readInt2 > 16384 || readInt > 16384) {
            dataInputStream.close();
            throw new Exception("أبعاد PSD غير مدعومة: " + readInt2 + "x" + readInt);
        }
        long readInt3 = dataInputStream.readInt() & 4294967295L;
        if (readInt3 > 0) {
            dataInputStream.skipBytes((int) readInt3);
        }
        long readInt4 = dataInputStream.readInt() & 4294967295L;
        if (readInt4 > 0) {
            dataInputStream.skipBytes((int) readInt4);
        }
        String name = file.getName();
        if (name.lastIndexOf(46) != -1) {
            name = name.substring(0, name.lastIndexOf(46));
        }
        File file2 = new File(Environment.getExternalStorageDirectory(), "pixelLab/presets");
        file2.mkdirs();
        File returnAvailableFile = commonFuncs.returnAvailableFile(file2, name);
        returnAvailableFile.mkdirs();
        File file3 = new File(returnAvailableFile, "res");
        file3.mkdirs();
        ArrayList arrayList = new ArrayList();
        if ((dataInputStream.readInt() & 4294967295L) > 0 && dataInputStream.readInt() > 0) {
            int abs = Math.abs((int) dataInputStream.readShort());
            for (int i = 0; i < abs; i++) {
                int readInt5 = dataInputStream.readInt();
                int readInt6 = dataInputStream.readInt();
                int readInt7 = dataInputStream.readInt();
                int readInt8 = dataInputStream.readInt();
                int readUnsignedShort = dataInputStream.readUnsignedShort();
                for (int i2 = 0; i2 < readUnsignedShort; i2++) {
                    dataInputStream.skipBytes(6);
                }
                dataInputStream.readFully(new byte[4]);
                dataInputStream.readFully(new byte[4]);
                int readUnsignedByte = dataInputStream.readUnsignedByte();
                dataInputStream.skipBytes(3);
                int readInt9 = dataInputStream.readInt();
                if (readInt9 > 0) {
                    dataInputStream.skipBytes(readInt9);
                }
                int i3 = readInt8 - readInt6;
                int i4 = readInt7 - readInt5;
                if (i3 > 0 && i4 > 0) {
                    LayerInfo layerInfo = new LayerInfo();
                    layerInfo.top = readInt5;
                    layerInfo.left = readInt6;
                    layerInfo.width = i3;
                    layerInfo.height = i4;
                    layerInfo.opacity = readUnsignedByte;
                    arrayList.add(layerInfo);
                }
            }
        }
        dataInputStream.close();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(appStateConstants.BG_WIDTH, readInt2);
        jSONObject.put(appStateConstants.BG_HEIGHT, readInt);
        jSONObject.put(appStateConstants.BG_ACTUAL_WIDTH, readInt2);
        jSONObject.put(appStateConstants.BG_ACTUAL_HEIGHT, readInt);
        jSONObject.put(appStateConstants.BG_COLOR, -16777216);
        jSONObject.put(appStateConstants.BG_TYPE, 1);
        jSONObject.put("currTab", 0);
        jSONObject.put(appStateConstants.BG_PHOTO_FORCED_DIM, false);
        jSONObject.put(appStateConstants.BG_ROTATION, 0);
        jSONObject.put(appStateConstants.OBJECTS_SELECTED_REFERENCE, "0");
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(appStateConstants.OBJECTS_SKIP_EMPTY, true);
        if (arrayList.isEmpty()) {
            LayerInfo layerInfo2 = new LayerInfo();
            layerInfo2.top = 0;
            layerInfo2.left = 0;
            layerInfo2.width = readInt2;
            layerInfo2.height = readInt;
            layerInfo2.opacity = 255;
            arrayList.add(layerInfo2);
        }
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i6 < arrayList.size()) {
                LayerInfo layerInfo3 = (LayerInfo) arrayList.get(i6);
                String str = "shape" + i6;
                jSONArray.put(str);
                String str2 = "layer_" + i6 + ".png";
                File file4 = new File(file3, str2);
                Bitmap createBitmap = Bitmap.createBitmap(Math.min(layerInfo3.width, 2048), Math.min(layerInfo3.height, 2048), Bitmap.Config.ARGB_8888);
                FileOutputStream fileOutputStream = new FileOutputStream(file4);
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.close();
                createBitmap.recycle();
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(appStateConstants.SHAPE_REFERENCE, randRef(5));
                jSONObject3.put("shapeX", layerInfo3.left);
                jSONObject3.put("shapeY", layerInfo3.top);
                jSONObject3.put(appStateConstants.SHAPE_WIDTH, String.valueOf(layerInfo3.width));
                jSONObject3.put(appStateConstants.SHAPE_HEIGHT, String.valueOf(layerInfo3.height));
                jSONObject3.put("shapeOldContainerWidth", readInt2);
                jSONObject3.put("shapeOldContainerHeight", readInt);
                jSONObject3.put(appStateConstants.SHAPE_ROTATION, "0");
                jSONObject3.put(appStateConstants.SHAPE_OPACITY, (int) Math.round((layerInfo3.opacity / 255.0d) * 100.0d));
                jSONObject3.put(appStateConstants.SHAPE_IMAGE_SHAPE_TYPE, 1);
                jSONObject3.put(appStateConstants.SHAPE_IMAGE_SRC_V2, true);
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put(appStateConstants.IMG_SRC_PATH, "/res/" + str2);
                jSONObject4.put(appStateConstants.IMG_SRC_SOURCE_TYPE, "local_file");
                jSONObject4.put(appStateConstants.IMG_SRC_ASSET_FOLDER, false);
                jSONObject3.put(appStateConstants.SHAPE_IMAGE_SRC, jSONObject4);
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put(appStateConstants.CROP_INFO_CIRC, false);
                jSONObject5.put(appStateConstants.CROP_INFO_ROT, 0);
                jSONObject5.put(appStateConstants.CROP_INFO_POR_LEFT, 0);
                jSONObject5.put(appStateConstants.CROP_INFO_POR_TOP, 0);
                jSONObject5.put(appStateConstants.CROP_INFO_POR_RIGHT, 100000);
                jSONObject5.put(appStateConstants.CROP_INFO_POR_BOTTOM, 100000);
                jSONObject5.put(appStateConstants.CROP_INFO_FLIP_VER, false);
                jSONObject5.put(appStateConstants.CROP_INFO_FLIP_HOR, false);
                jSONObject3.put(appStateConstants.SHAPE_IMAGE_CROP_INFO, jSONObject5);
                jSONObject3.put(appStateConstants.OBJECT_HIDDEN, false);
                jSONObject3.put(appStateConstants.OBJECT_LOCKED, false);
                jSONObject3.put(appStateConstants.SHAPE_STROKE_ENABLED, false);
                jSONObject3.put(appStateConstants.SHAPE_SHADOW_ENABLED, false);
                jSONObject3.put(appStateConstants.SHAPE_INNER_ENABLED, false);
                jSONObject3.put(appStateConstants.SHAPE_EMBOSS_ENABLED, false);
                jSONObject3.put(appStateConstants.SHAPE_THREE_D_ENABLED, false);
                jSONObject3.put(appStateConstants.SHAPE_COLOR_OVERLAY_ENABLED, false);
                jSONObject2.put(str, jSONObject3);
                i5 = i6 + 1;
            } else {
                jSONObject.put(appStateConstants.OBJECTS_IDS, jSONArray);
                jSONObject.put(appStateConstants.OBJECTS_BUNDLE, jSONObject2);
                FileOutputStream fileOutputStream2 = new FileOutputStream(new File(returnAvailableFile, "data.plab"));
                fileOutputStream2.write(jSONObject.toString(2).getBytes("UTF-8"));
                fileOutputStream2.close();
                return returnAvailableFile;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class LayerInfo {
        int height;
        int left;
        int opacity;
        int top;
        int width;

        private LayerInfo() {
        }
    }
}
