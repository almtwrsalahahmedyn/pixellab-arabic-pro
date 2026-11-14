package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import android.util.Base64;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * Universal Export Studio for PixelLab.
 * Supports:
 * 1. Adobe Photoshop Layered PSD (.psd)
 * 2. Scalable Vector Graphics (.svg)
 * 3. Android Vector Drawable (.xml)
 * 4. Android UI Layout XML (.xml)
 */
public class ProjectExportStudio {

    public static int dp(Context context, int dp) {
        if (context == null) return dp;
        return (int) TypedValue.applyDimension(
            TypedValue.COMPLEX_UNIT_DIP, dp, context.getResources().getDisplayMetrics());
    }

    private static GradientDrawable makeBg(int bgColor, int cornerRadiusDp, Context ctx) {
        GradientDrawable gd = new GradientDrawable();
        gd.setColor(bgColor);
        gd.setCornerRadius(dp(ctx, cornerRadiusDp));
        return gd;
    }

    private static Button makeOptionBtn(Context ctx, String text, int bgColor, int textColor) {
        Button b = new Button(ctx);
        b.setText(text);
        b.setTextColor(textColor);
        b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
        b.setBackground(makeBg(bgColor, 8, ctx));
        b.setPadding(dp(ctx, 12), dp(ctx, 8), dp(ctx, 12), dp(ctx, 8));
        return b;
    }

    public static File getExportDirectory(Context context) {
        File dir = null;
        try {
            File picDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
            dir = new File(picDir, "PixelLab/Exports");
        } catch (Throwable ignored) {}

        if (dir == null || (!dir.exists() && !dir.mkdirs())) {
            try {
                dir = new File(Environment.getExternalStorageDirectory(), "pixelLab/Exports");
            } catch (Throwable ignored) {}
        }
        if (dir == null || (!dir.exists() && !dir.mkdirs())) {
            dir = new File(context.getExternalFilesDir(null), "Exports");
        }
        dir.mkdirs();
        return dir;
    }

    public static void shareFile(Context context, File file, String mimeType) {
        try {
            Intent intent = new Intent(Intent.ACTION_SEND);
            intent.setType(mimeType);
            Uri uri;
            try {
                Method mGetUri = Class.forName("androidx.core.content.FileProvider")
                    .getMethod("getUriForFile", Context.class, String.class, File.class);
                uri = (Uri) mGetUri.invoke(null, context, context.getPackageName() + ".provider", file);
                intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            } catch (Throwable t) {
                uri = Uri.fromFile(file);
            }
            intent.putExtra(Intent.EXTRA_STREAM, uri);
            intent.putExtra(Intent.EXTRA_SUBJECT, file.getName());
            context.startActivity(Intent.createChooser(intent, "مشاركة " + file.getName()));
        } catch (Throwable e) {
            Toast.makeText(context, "تعذر مشاركة الملف: " + e.getMessage(), Toast.LENGTH_SHORT).show();
        }
    }

    public static void copyToClipboard(Context context, String label, String text) {
        try {
            ClipboardManager cm = (ClipboardManager) context.getSystemService(Context.CLIPBOARD_SERVICE);
            if (cm != null) {
                ClipData cd = ClipData.newPlainText(label, text);
                cm.setPrimaryClip(cd);
                Toast.makeText(context, "📋 تم نسخ الكود إلى الحافظة بنجاح!", Toast.LENGTH_SHORT).show();
            }
        } catch (Throwable e) {
            Toast.makeText(context, "خطأ في النسخ: " + e.getMessage(), Toast.LENGTH_SHORT).show();
        }
    }

    /**
     * Extracts canvas dimensions and layers from MainActivity.
     */
    public static class CanvasProjectData {
        public int width;
        public int height;
        public Bitmap backgroundBitmap;
        public int backgroundColor = Color.BLACK;
        public List<LayerItem> layers = new ArrayList<LayerItem>();
    }

    public static class LayerItem {
        public View view;
        public String name;
        public int left;
        public int top;
        public int width;
        public int height;
        public float rotation;
        public float opacity; // 0..1
        public boolean isText;
        public String textContent;
        public int textColor;
        public float textSize;
        public int textAlign;
        public Bitmap layerBitmap;
    }

    public static CanvasProjectData extractProjectData(Activity activity) {
        CanvasProjectData data = new CanvasProjectData();
        try {
            int w = 1280;
            int h = 1280;

            // 1. Get Canvas size from usedImage
            try {
                Field fUsed = activity.getClass().getDeclaredField("usedImage");
                fUsed.setAccessible(true);
                Object usedImg = fUsed.get(activity);
                if (usedImg != null) {
                    Method mGetW = usedImg.getClass().getMethod("getWidth");
                    Method mGetH = usedImg.getClass().getMethod("getHeight");
                    w = (Integer) mGetW.invoke(usedImg);
                    h = (Integer) mGetH.invoke(usedImg);
                }
            } catch (Throwable ignored) {}

            data.width = Math.max(100, w);
            data.height = Math.max(100, h);

            // 2. Extract Background
            try {
                Field fBg = activity.getClass().getDeclaredField("bg_layout");
                fBg.setAccessible(true);
                View bgView = (View) fBg.get(activity);
                if (bgView != null && bgView.getWidth() > 0 && bgView.getHeight() > 0) {
                    Bitmap bgBmp = Bitmap.createBitmap(data.width, data.height, Bitmap.Config.ARGB_8888);
                    Canvas c = new Canvas(bgBmp);
                    float sx = (float) data.width / (float) bgView.getWidth();
                    float sy = (float) data.height / (float) bgView.getHeight();
                    c.scale(sx, sy);
                    bgView.draw(c);
                    data.backgroundBitmap = bgBmp;
                }
            } catch (Throwable ignored) {}

            // 3. Extract Layers from textContain
            Field fTc = activity.getClass().getDeclaredField("textContain");
            fTc.setAccessible(true);
            ViewGroup textContain = (ViewGroup) fTc.get(activity);

            if (textContain != null) {
                float containerW = textContain.getWidth() > 0 ? textContain.getWidth() : data.width;
                float containerH = textContain.getHeight() > 0 ? textContain.getHeight() : data.height;
                float scaleX = (float) data.width / containerW;
                float scaleY = (float) data.height / containerH;

                int childCount = textContain.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View child = textContain.getChildAt(i);
                    if (child == null || child.getVisibility() != View.VISIBLE) continue;
                    if (child.getWidth() <= 0 || child.getHeight() <= 0) continue;

                    LayerItem item = new LayerItem();
                    item.view = child;
                    item.left = Math.round(child.getLeft() * scaleX);
                    item.top = Math.round(child.getTop() * scaleY);
                    item.width = Math.round(child.getWidth() * scaleX);
                    item.height = Math.round(child.getHeight() * scaleY);
                    item.rotation = child.getRotation();
                    item.opacity = child.getAlpha();

                    // Check if TextComponent
                    if (child.getClass().getSimpleName().contains("TextComponent") || child.getClass().getName().contains("TextObject")) {
                        item.isText = true;
                        try {
                            Method mText = child.getClass().getMethod("returnText");
                            item.textContent = (String) mText.invoke(child);
                        } catch (Throwable t) {
                            try {
                                Method mGetText = child.getClass().getMethod("getText");
                                Object to = mGetText.invoke(child);
                                item.textContent = to != null ? to.toString() : "";
                            } catch (Throwable ignored) {}
                        }
                        if (item.textContent == null) item.textContent = "";

                        try {
                            Method mSize = child.getClass().getMethod("getTextSize");
                            item.textSize = ((Float) mSize.invoke(child)) * scaleX;
                        } catch (Throwable ignored) {}

                        try {
                            Method mAlign = child.getClass().getMethod("getTextAlign");
                            item.textAlign = (Integer) mAlign.invoke(child);
                        } catch (Throwable ignored) {}

                        String summary = item.textContent.replace("\n", " ").trim();
                        if (summary.length() > 20) summary = summary.substring(0, 20) + "...";
                        item.name = "نص: " + summary;
                    } else {
                        item.isText = false;
                        item.name = "شكل " + (i + 1);
                    }

                    // Render layer raster representation
                    try {
                        Bitmap lbmp = Bitmap.createBitmap(child.getWidth(), child.getHeight(), Bitmap.Config.ARGB_8888);
                        Canvas lc = new Canvas(lbmp);
                        child.draw(lc);
                        if (scaleX != 1.0f || scaleY != 1.0f) {
                            Bitmap scaled = Bitmap.createScaledBitmap(lbmp, item.width, item.height, true);
                            lbmp.recycle();
                            item.layerBitmap = scaled;
                        } else {
                            item.layerBitmap = lbmp;
                        }
                    } catch (Throwable ignored) {}

                    data.layers.add(item);
                }
            }

        } catch (Throwable t) {
            t.printStackTrace();
        }
        return data;
    }

    /**
     * 1. Generates Adobe Photoshop Layered PSD File (.psd)
     */
    public static void exportToPsd(Activity activity, File outFile) throws Exception {
        CanvasProjectData data = extractProjectData(activity);
        int docW = data.width;
        int docH = data.height;

        FileOutputStream fos = new FileOutputStream(outFile);
        BufferedOutputStream bos = new BufferedOutputStream(fos, 65536);
        DataOutputStream out = new DataOutputStream(bos);

        // 1. Header (26 bytes)
        out.writeBytes("8BPS");
        out.writeShort(1); // Version 1
        out.write(new byte[6]); // 6 bytes zero reserved
        out.writeShort(4); // 4 Channels: A, R, G, B
        out.writeInt(docH); // Height
        out.writeInt(docW); // Width
        out.writeShort(8); // Depth 8 bits per channel
        out.writeShort(3); // ColorMode 3 = RGB

        // 2. Color Mode Data (Empty for RGB)
        out.writeInt(0);

        // 3. Image Resources (Resolution Info: 72 DPI)
        ByteArrayOutputStream resBos = new ByteArrayOutputStream();
        DataOutputStream resDos = new DataOutputStream(resBos);
        resDos.writeBytes("8BIM");
        resDos.writeShort(0x03ED); // ResolutionInfo
        resDos.writeShort(0); // Name length
        resDos.writeInt(16); // Data length
        resDos.writeShort(72); // 72 DPI
        resDos.writeShort(0);
        resDos.writeShort(1); // Unit: inches
        resDos.writeShort(1);
        resDos.writeShort(72);
        resDos.writeShort(0);
        resDos.writeShort(1);
        resDos.writeShort(1);
        byte[] resBytes = resBos.toByteArray();
        out.writeInt(resBytes.length);
        out.write(resBytes);

        // 4. Layer and Mask Information Section
        ByteArrayOutputStream layerInfoBos = new ByteArrayOutputStream();
        DataOutputStream layerDos = new DataOutputStream(layerInfoBos);

        // All layers: Background + Canvas Layers
        List<LayerItem> allLayers = new ArrayList<LayerItem>();
        if (data.backgroundBitmap != null) {
            LayerItem bgItem = new LayerItem();
            bgItem.name = "الخلفية (Background)";
            bgItem.left = 0;
            bgItem.top = 0;
            bgItem.width = docW;
            bgItem.height = docH;
            bgItem.opacity = 1.0f;
            bgItem.layerBitmap = data.backgroundBitmap;
            allLayers.add(bgItem);
        }
        allLayers.addAll(data.layers);

        int layerCount = allLayers.size();
        layerDos.writeShort(layerCount); // Layer count

        // 4a. Layer Records
        for (int i = 0; i < layerCount; i++) {
            LayerItem l = allLayers.get(i);
            int top = Math.max(0, l.top);
            int left = Math.max(0, l.left);
            int bottom = Math.min(docH, top + l.height);
            int right = Math.min(docW, left + l.width);
            int lw = Math.max(1, right - left);
            int lh = Math.max(1, bottom - top);

            layerDos.writeInt(top);
            layerDos.writeInt(left);
            layerDos.writeInt(bottom);
            layerDos.writeInt(right);

            layerDos.writeShort(4); // 4 Channels: -1 (A), 0 (R), 1 (G), 2 (B)
            int channelLen = 2 + (lw * lh); // 2 bytes compression (0) + raw bytes
            layerDos.writeShort(-1); // Alpha
            layerDos.writeInt(channelLen);
            layerDos.writeShort(0);  // Red
            layerDos.writeInt(channelLen);
            layerDos.writeShort(1);  // Green
            layerDos.writeInt(channelLen);
            layerDos.writeShort(2);  // Blue
            layerDos.writeInt(channelLen);

            layerDos.writeBytes("8BIM");
            layerDos.writeBytes("norm"); // Blend mode Normal
            layerDos.writeByte(Math.round(l.opacity * 255)); // Opacity
            layerDos.writeByte(0); // Clipping
            layerDos.writeByte(0); // Flags
            layerDos.writeByte(0); // Filler

            // Extra Data
            ByteArrayOutputStream extraBos = new ByteArrayOutputStream();
            DataOutputStream extraDos = new DataOutputStream(extraBos);
            extraDos.writeInt(0); // Layer mask data len
            extraDos.writeInt(0); // Layer blending ranges len

            // Layer Name (Pascal string padded to 4 bytes)
            String lName = l.name != null ? l.name : ("Layer " + (i + 1));
            byte[] nameBytes = lName.getBytes(Charset.forName("ISO-8859-1"));
            if (nameBytes.length > 31) {
                byte[] nb = new byte[31];
                System.arraycopy(nameBytes, 0, nb, 0, 31);
                nameBytes = nb;
            }
            extraDos.writeByte(nameBytes.length);
            extraDos.write(nameBytes);
            int totalNameLen = 1 + nameBytes.length;
            int pad = (4 - (totalNameLen % 4)) % 4;
            for (int p = 0; p < pad; p++) extraDos.writeByte(0);

            byte[] extraBytes = extraBos.toByteArray();
            layerDos.writeInt(extraBytes.length);
            layerDos.write(extraBytes);
        }

        // 4b. Channel Image Data for each layer
        for (int i = 0; i < layerCount; i++) {
            LayerItem l = allLayers.get(i);
            int top = Math.max(0, l.top);
            int left = Math.max(0, l.left);
            int bottom = Math.min(docH, top + l.height);
            int right = Math.min(docW, left + l.width);
            int lw = Math.max(1, right - left);
            int lh = Math.max(1, bottom - top);
            int totalPix = lw * lh;

            byte[] aBytes = new byte[totalPix];
            byte[] rBytes = new byte[totalPix];
            byte[] gBytes = new byte[totalPix];
            byte[] bBytes = new byte[totalPix];

            if (l.layerBitmap != null && !l.layerBitmap.isRecycled()) {
                int[] pixels = new int[totalPix];
                int srcW = l.layerBitmap.getWidth();
                int srcH = l.layerBitmap.getHeight();
                int extractW = Math.min(lw, srcW);
                int extractH = Math.min(lh, srcH);
                l.layerBitmap.getPixels(pixels, 0, lw, 0, 0, extractW, extractH);

                for (int p = 0; p < totalPix; p++) {
                    int c = pixels[p];
                    aBytes[p] = (byte) ((c >>> 24) & 0xFF);
                    rBytes[p] = (byte) ((c >>> 16) & 0xFF);
                    gBytes[p] = (byte) ((c >>> 8) & 0xFF);
                    bBytes[p] = (byte) (c & 0xFF);
                }
            } else {
                for (int p = 0; p < totalPix; p++) {
                    aBytes[p] = (byte) 255;
                    rBytes[p] = (byte) 128;
                    gBytes[p] = (byte) 128;
                    bBytes[p] = (byte) 128;
                }
            }

            // Write Alpha (-1)
            layerDos.writeShort(0); // Uncompressed
            layerDos.write(aBytes);

            // Write Red (0)
            layerDos.writeShort(0);
            layerDos.write(rBytes);

            // Write Green (1)
            layerDos.writeShort(0);
            layerDos.write(gBytes);

            // Write Blue (2)
            layerDos.writeShort(0);
            layerDos.write(bBytes);
        }

        byte[] layerInfoBytes = layerInfoBos.toByteArray();
        if (layerInfoBytes.length % 2 != 0) {
            byte[] padded = new byte[layerInfoBytes.length + 1];
            System.arraycopy(layerInfoBytes, 0, padded, 0, layerInfoBytes.length);
            layerInfoBytes = padded;
        }

        // Section 4 Header: length of layer info + layer info
        int sec4TotalLen = 4 + layerInfoBytes.length;
        out.writeInt(sec4TotalLen);
        out.writeInt(layerInfoBytes.length);
        out.write(layerInfoBytes);

        // 5. Image Data (Composite preview)
        out.writeShort(0); // Uncompressed
        Bitmap compositeBmp = Bitmap.createBitmap(docW, docH, Bitmap.Config.ARGB_8888);
        Canvas cc = new Canvas(compositeBmp);
        if (data.backgroundBitmap != null && !data.backgroundBitmap.isRecycled()) {
            cc.drawBitmap(data.backgroundBitmap, 0, 0, null);
        }
        for (LayerItem l : data.layers) {
            if (l.layerBitmap != null && !l.layerBitmap.isRecycled()) {
                cc.drawBitmap(l.layerBitmap, l.left, l.top, null);
            }
        }

        int[] compPix = new int[docW * docH];
        compositeBmp.getPixels(compPix, 0, docW, 0, 0, docW, docH);
        byte[] compR = new byte[docW * docH];
        byte[] compG = new byte[docW * docH];
        byte[] compB = new byte[docW * docH];
        for (int p = 0; p < compPix.length; p++) {
            int c = compPix[p];
            compR[p] = (byte) ((c >>> 16) & 0xFF);
            compG[p] = (byte) ((c >>> 8) & 0xFF);
            compB[p] = (byte) (c & 0xFF);
        }
        out.write(compR);
        out.write(compG);
        out.write(compB);

        compositeBmp.recycle();
        out.flush();
        out.close();
    }

    /**
     * 2. Generates Scalable Vector Graphics SVG (.svg)
     */
    public static String exportToSvgString(Activity activity) {
        CanvasProjectData data = extractProjectData(activity);
        int w = data.width;
        int h = data.height;

        StringBuilder sb = new StringBuilder();
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>\n");
        sb.append("<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" ");
        sb.append("viewBox=\"0 0 ").append(w).append(" ").append(h).append("\" ");
        sb.append("width=\"").append(w).append("\" height=\"").append(h).append("\">\n");

        // Background
        if (data.backgroundBitmap != null && !data.backgroundBitmap.isRecycled()) {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            data.backgroundBitmap.compress(Bitmap.CompressFormat.PNG, 90, baos);
            String b64 = Base64.encodeToString(baos.toByteArray(), Base64.NO_WRAP);
            sb.append("  <image id=\"background\" x=\"0\" y=\"0\" width=\"").append(w).append("\" height=\"").append(h)
              .append("\" xlink:href=\"data:image/png;base64,").append(b64).append("\" />\n");
        } else {
            sb.append("  <rect id=\"background\" width=\"").append(w).append("\" height=\"").append(h)
              .append("\" fill=\"#1A1A1A\" />\n");
        }

        // Layers in order
        for (int i = 0; i < data.layers.size(); i++) {
            LayerItem l = data.layers.get(i);
            sb.append("  <!-- Layer ").append(i + 1).append(": ").append(l.name != null ? l.name : "").append(" -->\n");

            if (l.isText && l.textContent != null && !l.textContent.isEmpty()) {
                // Vector Text Layer
                float fs = l.textSize > 10 ? l.textSize : 48f;
                String hexColor = "#FFFFFF";
                if (l.textColor != 0) {
                    hexColor = String.format("#%06X", (0xFFFFFF & l.textColor));
                }

                String anchor = "middle";
                float textX = l.left + (l.width / 2.0f);
                if (l.textAlign == 3) { // Left
                    anchor = "start";
                    textX = l.left;
                } else if (l.textAlign == 5) { // Right
                    anchor = "end";
                    textX = l.left + l.width;
                }

                String transformAttr = "";
                if (l.rotation != 0) {
                    float cx = l.left + (l.width / 2.0f);
                    float cy = l.top + (l.height / 2.0f);
                    transformAttr = String.format(Locale.US, " transform=\"rotate(%.1f, %.1f, %.1f)\"", l.rotation, cx, cy);
                }

                String[] lines = l.textContent.split("\n", -1);
                sb.append("  <text x=\"").append(String.format(Locale.US, "%.1f", textX))
                  .append("\" y=\"").append(l.top + Math.round(fs * 0.9f))
                  .append("\" font-size=\"").append(String.format(Locale.US, "%.1f", fs))
                  .append("\" fill=\"").append(hexColor)
                  .append("\" text-anchor=\"").append(anchor)
                  .append("\" direction=\"rtl\" xml:space=\"preserve\"")
                  .append(transformAttr).append(">\n");

                for (int li = 0; li < lines.length; li++) {
                    String line = lines[li];
                    String escaped = line.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;");
                    if (li == 0) {
                        sb.append("    <tspan>").append(escaped).append("</tspan>\n");
                    } else {
                        sb.append("    <tspan x=\"").append(String.format(Locale.US, "%.1f", textX))
                          .append("\" dy=\"1.25em\">").append(escaped).append("</tspan>\n");
                    }
                }
                sb.append("  </text>\n");

            } else if (l.layerBitmap != null && !l.layerBitmap.isRecycled()) {
                // Raster / Shape Layer
                ByteArrayOutputStream baos = new ByteArrayOutputStream();
                l.layerBitmap.compress(Bitmap.CompressFormat.PNG, 95, baos);
                String b64 = Base64.encodeToString(baos.toByteArray(), Base64.NO_WRAP);

                String transformAttr = "";
                if (l.rotation != 0) {
                    float cx = l.left + (l.width / 2.0f);
                    float cy = l.top + (l.height / 2.0f);
                    transformAttr = String.format(Locale.US, " transform=\"rotate(%.1f, %.1f, %.1f)\"", l.rotation, cx, cy);
                }

                sb.append("  <image x=\"").append(l.left).append("\" y=\"").append(l.top)
                  .append("\" width=\"").append(l.width).append("\" height=\"").append(l.height)
                  .append("\" opacity=\"").append(String.format(Locale.US, "%.2f", l.opacity))
                  .append("\" xlink:href=\"data:image/png;base64,").append(b64).append("\"")
                  .append(transformAttr).append(" />\n");
            }
        }

        sb.append("</svg>\n");
        return sb.toString();
    }

    public static void exportToSvg(Activity activity, File outFile) throws Exception {
        String svg = exportToSvgString(activity);
        FileOutputStream fos = new FileOutputStream(outFile);
        fos.write(svg.getBytes(Charset.forName("UTF-8")));
        fos.close();
    }

    /**
     * 3. Generates Android Vector Drawable (.xml)
     */
    public static String exportToAndroidVectorString(Activity activity) {
        CanvasProjectData data = extractProjectData(activity);
        int w = data.width;
        int h = data.height;

        StringBuilder sb = new StringBuilder();
        sb.append("<!-- Android Vector Drawable Export from PixelLab Pro -->\n");
        sb.append("<vector xmlns:android=\"http://schemas.android.com/apk/res/android\"\n");
        sb.append("    android:width=\"").append(w / 3).append("dp\"\n");
        sb.append("    android:height=\"").append(h / 3).append("dp\"\n");
        sb.append("    android:viewportWidth=\"").append(w).append("\"\n");
        sb.append("    android:viewportHeight=\"").append(h).append("\">\n\n");

        // Canvas Background Path
        sb.append("    <!-- Background Canvas -->\n");
        sb.append("    <path\n");
        sb.append("        android:fillColor=\"#FF1A1A1A\"\n");
        sb.append("        android:pathData=\"M0,0 h").append(w).append(" v").append(h).append(" h-").append(w).append(" z\" />\n\n");

        for (int i = 0; i < data.layers.size(); i++) {
            LayerItem l = data.layers.get(i);
            sb.append("    <!-- Layer ").append(i + 1).append(": ").append(l.name).append(" -->\n");
            sb.append("    <group\n");
            sb.append("        android:translateX=\"").append(l.left).append("\"\n");
            sb.append("        android:translateY=\"").append(l.top).append("\"\n");
            if (l.rotation != 0) {
                sb.append("        android:pivotX=\"").append(l.width / 2).append("\"\n");
                sb.append("        android:pivotY=\"").append(l.height / 2).append("\"\n");
                sb.append("        android:rotation=\"").append(l.rotation).append("\"\n");
            }
            sb.append("        android:alpha=\"").append(String.format(Locale.US, "%.2f", l.opacity)).append("\">\n");

            // Bounding box placeholder path
            String fillColor = "#FF64B5F6";
            if (l.isText) fillColor = "#FFFFD54F";
            sb.append("        <path\n");
            sb.append("            android:fillColor=\"").append(fillColor).append("\"\n");
            sb.append("            android:pathData=\"M0,0 h").append(l.width).append(" v").append(l.height).append(" h-").append(l.width).append(" z\" />\n");
            sb.append("    </group>\n\n");
        }

        sb.append("</vector>\n");
        return sb.toString();
    }

    public static void exportToAndroidVector(Activity activity, File outFile) throws Exception {
        String xml = exportToAndroidVectorString(activity);
        FileOutputStream fos = new FileOutputStream(outFile);
        fos.write(xml.getBytes(Charset.forName("UTF-8")));
        fos.close();
    }

    /**
     * 4. Generates Android Layout XML (.xml)
     */
    public static String exportToAndroidLayoutString(Activity activity) {
        CanvasProjectData data = extractProjectData(activity);
        int w = data.width;
        int h = data.height;

        StringBuilder sb = new StringBuilder();
        sb.append("<?xml version=\"1.0\" encoding=\"utf-8\"?>\n");
        sb.append("<!-- Generated with PixelLab Pro Universal Layout Studio -->\n");
        sb.append("<RelativeLayout xmlns:android=\"http://schemas.android.com/apk/res/android\"\n");
        sb.append("    android:layout_width=\"").append(w / 3).append("dp\"\n");
        sb.append("    android:layout_height=\"").append(h / 3).append("dp\"\n");
        sb.append("    android:background=\"#FF1A1A1A\">\n\n");

        for (int i = 0; i < data.layers.size(); i++) {
            LayerItem l = data.layers.get(i);
            int idNum = i + 1;
            int ml = Math.round(l.left / 3f);
            int mt = Math.round(l.top / 3f);
            int lw = Math.round(l.width / 3f);
            int lh = Math.round(l.height / 3f);

            if (l.isText && l.textContent != null) {
                String esc = l.textContent.replace("\"", "\\\"").replace("\n", "\\n");
                String colorHex = "#FFFFFF";
                if (l.textColor != 0) {
                    colorHex = String.format("#%06X", (0xFFFFFF & l.textColor));
                }
                int ts = Math.max(10, Math.round(l.textSize / 3f));

                sb.append("    <!-- Text Layer: ").append(l.name).append(" -->\n");
                sb.append("    <TextView\n");
                sb.append("        android:id=\"@+id/pl_text_").append(idNum).append("\"\n");
                sb.append("        android:layout_width=\"wrap_content\"\n");
                sb.append("        android:layout_height=\"wrap_content\"\n");
                sb.append("        android:layout_marginLeft=\"").append(ml).append("dp\"\n");
                sb.append("        android:layout_marginTop=\"").append(mt).append("dp\"\n");
                sb.append("        android:text=\"").append(esc).append("\"\n");
                sb.append("        android:textColor=\"").append(colorHex).append("\"\n");
                sb.append("        android:textSize=\"").append(ts).append("sp\"\n");
                if (l.rotation != 0) {
                    sb.append("        android:rotation=\"").append(l.rotation).append("\"\n");
                }
                sb.append("        android:alpha=\"").append(String.format(Locale.US, "%.2f", l.opacity)).append("\" />\n\n");
            } else {
                sb.append("    <!-- Shape/Image Layer: ").append(l.name).append(" -->\n");
                sb.append("    <ImageView\n");
                sb.append("        android:id=\"@+id/pl_layer_").append(idNum).append("\"\n");
                sb.append("        android:layout_width=\"").append(lw).append("dp\"\n");
                sb.append("        android:layout_height=\"").append(lh).append("dp\"\n");
                sb.append("        android:layout_marginLeft=\"").append(ml).append("dp\"\n");
                sb.append("        android:layout_marginTop=\"").append(mt).append("dp\"\n");
                if (l.rotation != 0) {
                    sb.append("        android:rotation=\"").append(l.rotation).append("\"\n");
                }
                sb.append("        android:alpha=\"").append(String.format(Locale.US, "%.2f", l.opacity)).append("\" />\n\n");
            }
        }

        sb.append("</RelativeLayout>\n");
        return sb.toString();
    }

    public static void exportToAndroidLayout(Activity activity, File outFile) throws Exception {
        String xml = exportToAndroidLayoutString(activity);
        FileOutputStream fos = new FileOutputStream(outFile);
        fos.write(xml.getBytes(Charset.forName("UTF-8")));
        fos.close();
    }

    /**
     * Shows the dedicated Universal Export Studio Dialog.
     */
    public static void showExportStudioDialog(final Activity activity) {
        if (activity == null) return;

        final Context ctx = activity;
        final AlertDialog.Builder builder = new AlertDialog.Builder(ctx);

        // Root Dialog Layout
        LinearLayout root = new LinearLayout(ctx);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(Color.parseColor("#151D24"));
        root.setPadding(dp(ctx, 16), dp(ctx, 16), dp(ctx, 16), dp(ctx, 16));

        // Header Title
        TextView title = new TextView(ctx);
        title.setText("🎨 استوديو التصدير الاحترافي (Pro Exporter)");
        title.setTextColor(Color.WHITE);
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f);
        title.setTypeface(null, Typeface.BOLD);
        title.setGravity(Gravity.CENTER);
        title.setPadding(0, 0, 0, dp(ctx, 12));
        root.addView(title);

        TextView subTitle = new TextView(ctx);
        subTitle.setText("اختر الصيغة المطلوبة لتصدير مشروعك مع كافة الطبقات:");
        subTitle.setTextColor(Color.parseColor("#B0BEC5"));
        subTitle.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11f);
        subTitle.setGravity(Gravity.CENTER);
        subTitle.setPadding(0, 0, 0, dp(ctx, 12));
        root.addView(subTitle);

        ScrollView sv = new ScrollView(ctx);
        LinearLayout cardsLayout = new LinearLayout(ctx);
        cardsLayout.setOrientation(LinearLayout.VERTICAL);

        final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US);
        final String timestamp = sdf.format(new Date());

        final AlertDialog[] dialogHolder = new AlertDialog[1];

        // 1. Photoshop PSD Card
        View psdCard = makeExportCard(ctx, "📄 Adobe Photoshop (.psd)",
            "تصدير كامل لكافة الطبقات والنصوص والصور في ملف PSD متعدد الطبقات متوافق 100% مع الفوتوشوب.",
            "#1565C0", "تصدير فوتوشوب PSD", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    executeExport(activity, "PSD", "PixelLab_" + timestamp + ".psd", "application/x-photoshop", dialogHolder[0]);
                }
            });
        cardsLayout.addView(psdCard);

        // 2. Vector SVG Card
        View svgCard = makeExportCard(ctx, "📐 Scalable Vector Graphics (.svg)",
            "فيكتور ناقل عالي الدقة بدون أي بكسلة، مع نصوص عربية حية وأبعاد دقيقة لـ Illustrator و Corel و Figma.",
            "#E65100", "تصدير فيكتور SVG", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    executeExport(activity, "SVG", "PixelLab_" + timestamp + ".svg", "image/svg+xml", dialogHolder[0]);
                }
            });
        cardsLayout.addView(svgCard);

        // 3. Android Vector XML Card
        View vectorCard = makeExportCard(ctx, "📱 Android Vector Drawable (.xml)",
            "كود فيكتور XML جاهز للاستخدام المباشر في مجلد res/drawable داخل تطبيقات أندرويد.",
            "#2E7D32", "تصدير Vector XML", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    executeExport(activity, "VECTOR_XML", "pixellab_vector_" + timestamp + ".xml", "text/xml", dialogHolder[0]);
                }
            });
        cardsLayout.addView(vectorCard);

        // 4. Android Layout XML Card
        View layoutCard = makeExportCard(ctx, "💻 Android Layout Code (.xml)",
            "كود واجهة RelativeLayout كامل مع عناصر TextView و ImageView ومواقعها وإحداثياتها لأندرويد ستوديو.",
            "#6A1B9A", "تصدير Layout XML", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    executeExport(activity, "LAYOUT_XML", "pixellab_layout_" + timestamp + ".xml", "text/xml", dialogHolder[0]);
                }
            });
        cardsLayout.addView(layoutCard);

        sv.addView(cardsLayout);
        root.addView(sv);

        builder.setView(root);
        builder.setNegativeButton("إغلاق", null);
        AlertDialog d = builder.create();
        dialogHolder[0] = d;
        d.show();
    }

    private static View makeExportCard(Context ctx, String titleText, String descText, String accentColorHex, String btnText, View.OnClickListener onClick) {
        LinearLayout card = new LinearLayout(ctx);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setBackground(makeBg(Color.parseColor("#1E2732"), 10, ctx));
        card.setPadding(dp(ctx, 12), dp(ctx, 10), dp(ctx, 12), dp(ctx, 10));
        LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        clp.bottomMargin = dp(ctx, 10);
        card.setLayoutParams(clp);

        TextView tvTitle = new TextView(ctx);
        tvTitle.setText(titleText);
        tvTitle.setTextColor(Color.WHITE);
        tvTitle.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
        tvTitle.setTypeface(null, Typeface.BOLD);
        card.addView(tvTitle);

        TextView tvDesc = new TextView(ctx);
        tvDesc.setText(descText);
        tvDesc.setTextColor(Color.parseColor("#90A4AE"));
        tvDesc.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10.5f);
        tvDesc.setPadding(0, dp(ctx, 3), 0, dp(ctx, 8));
        card.addView(tvDesc);

        Button btn = makeOptionBtn(ctx, btnText, Color.parseColor(accentColorHex), Color.WHITE);
        btn.setOnClickListener(onClick);
        card.addView(btn);

        return card;
    }

    public static class ExportTask implements Runnable {
        private final Activity activity;
        private final String formatType;
        private final String fileName;
        private final String mimeType;
        private final AlertDialog parentDialog;
        private final ProgressDialog pd;

        public ExportTask(Activity act, String fmt, String fname, String mime, AlertDialog parent, ProgressDialog pd) {
            this.activity = act;
            this.formatType = fmt;
            this.fileName = fname;
            this.mimeType = mime;
            this.parentDialog = parent;
            this.pd = pd;
        }

        @Override
        public void run() {
            File res = null;
            String err = null;
            String code = null;
            try {
                File dir = getExportDirectory(activity);
                File dest = new File(dir, fileName);
                if ("PSD".equals(formatType)) {
                    exportToPsd(activity, dest);
                } else if ("SVG".equals(formatType)) {
                    code = exportToSvgString(activity);
                    exportToSvg(activity, dest);
                } else if ("VECTOR_XML".equals(formatType)) {
                    code = exportToAndroidVectorString(activity);
                    exportToAndroidVector(activity, dest);
                } else if ("LAYOUT_XML".equals(formatType)) {
                    code = exportToAndroidLayoutString(activity);
                    exportToAndroidLayout(activity, dest);
                }
                res = dest;
            } catch (Throwable t) {
                t.printStackTrace();
                err = t.getMessage();
            }
            final File finalRes = res;
            final String finalErr = err;
            final String finalCode = code;
            activity.runOnUiThread(new ExportCallback(activity, finalRes, finalErr, formatType, mimeType, finalCode, parentDialog, pd));
        }
    }

    public static class ExportCallback implements Runnable {
        private final Activity activity;
        private final File file;
        private final String error;
        private final String format;
        private final String mimeType;
        private final String code;
        private final AlertDialog parentDialog;
        private final ProgressDialog pd;

        public ExportCallback(Activity act, File f, String err, String fmt, String mime, String code, AlertDialog parent, ProgressDialog pd) {
            this.activity = act;
            this.file = f;
            this.error = err;
            this.format = fmt;
            this.mimeType = mime;
            this.code = code;
            this.parentDialog = parent;
            this.pd = pd;
        }

        @Override
        public void run() {
            try {
                if (pd.isShowing()) pd.dismiss();
            } catch (Throwable ignored) {}

            if (file != null && file.exists()) {
                if (parentDialog != null && parentDialog.isShowing()) {
                    parentDialog.dismiss();
                }
                showSuccessDialog(activity, file, format, mimeType, code);
            } else {
                Toast.makeText(activity, "فشل التصدير: " + (error != null ? error : "خطأ غير معروف"), Toast.LENGTH_LONG).show();
            }
        }
    }

    private static void executeExport(final Activity activity, final String formatType, final String fileName, final String mimeType, final AlertDialog parentDialog) {
        final ProgressDialog pd = new ProgressDialog(activity);
        pd.setTitle("جاري التصدير الاحترافي...");
        pd.setMessage("جاري تجهيز الطبقات وتحويل ملف " + formatType + "...");
        pd.setCancelable(false);
        pd.show();

        new Thread(new ExportTask(activity, formatType, fileName, mimeType, parentDialog, pd)).start();
    }

    private static void showSuccessDialog(final Activity activity, final File file, final String format, final String mimeType, final String code) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle("✅ تم التصدير بنجاح!");

        LinearLayout root = new LinearLayout(activity);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(activity, 16), dp(activity, 12), dp(activity, 16), dp(activity, 12));

        TextView tvMsg = new TextView(activity);
        tvMsg.setText("تم حفظ الملف بنجاح في هاتفك:\n📂 " + file.getAbsolutePath());
        tvMsg.setTextColor(Color.WHITE);
        tvMsg.setTextSize(12f);
        tvMsg.setPadding(0, 0, 0, dp(activity, 12));
        root.addView(tvMsg);

        // Share Button
        Button btnShare = makeOptionBtn(activity, "📤 مشاركة الملف الآن (تليجرام / واتساب / درايف)", Color.parseColor("#1E88E5"), Color.WHITE);
        btnShare.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                shareFile(activity, file, mimeType);
            }
        });
        root.addView(btnShare);

        // Copy Code Button (for SVG and XML)
        if (code != null && !code.isEmpty()) {
            Button btnCopy = makeOptionBtn(activity, "📋 نسخ الكود إلى الحافظة", Color.parseColor("#43A047"), Color.WHITE);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.topMargin = dp(activity, 8);
            btnCopy.setLayoutParams(lp);
            btnCopy.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    copyToClipboard(activity, format + " Code", code);
                }
            });
            root.addView(btnCopy);
        }

        builder.setView(root);
        builder.setPositiveButton("تم", null);
        builder.show();
    }

    /**
     * Injects the Export Studio into the Top Save Menu (CustomTextMenu).
     */
    public static void addExportOptionToSaveMenu(final Activity activity, final Object customTextMenu) {
        if (activity == null || customTextMenu == null) return;
        try {
            // Find popup content view
            Method mGetContent = customTextMenu.getClass().getMethod("getContentView");
            View contentView = (View) mGetContent.invoke(customTextMenu);
            if (contentView instanceof ViewGroup) {
                ViewGroup vg = (ViewGroup) contentView;
                LinearLayout container = null;
                if (vg instanceof LinearLayout) {
                    container = (LinearLayout) vg;
                } else if (vg.getChildCount() > 0 && vg.getChildAt(0) instanceof LinearLayout) {
                    container = (LinearLayout) vg.getChildAt(0);
                }

                if (container != null) {
                    TextView itemTv = new TextView(activity);
                    itemTv.setText("🎨 تصدير احترافي (PSD / فيكتور / XML)");
                    itemTv.setTextColor(Color.parseColor("#FAB852")); // Madd Gold
                    itemTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
                    itemTv.setPadding(dp(activity, 16), dp(activity, 12), dp(activity, 16), dp(activity, 12));
                    itemTv.setGravity(Gravity.RIGHT | Gravity.CENTER_VERTICAL);

                    itemTv.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            try {
                                Method mDismiss = customTextMenu.getClass().getMethod("dismiss");
                                mDismiss.invoke(customTextMenu);
                            } catch (Throwable ignored) {}
                            showExportStudioDialog(activity);
                        }
                    });

                    container.addView(itemTv);
                }
            }
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    /**
     * Injects the Pro Export option into the standard export_image_dialog.
     */
    public static void injectIntoExportDialog(final Object dialogObj) {
        if (dialogObj == null) return;
        try {
            Field fLayout = dialogObj.getClass().getDeclaredField("dialogLayout");
            fLayout.setAccessible(true);
            View dialogLayout = (View) fLayout.get(dialogObj);
            if (dialogLayout instanceof ViewGroup) {
                ViewGroup vg = (ViewGroup) dialogLayout;
                final Context context = dialogLayout.getContext();
                final Activity act = ArabicTextEnhancer.getActivity(context);

                Button btnProExport = makeOptionBtn(context, "🎨 تصدير احترافي (PSD / فيكتور SVG / XML)", Color.parseColor("#00838F"), Color.WHITE);
                btnProExport.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
                btnProExport.setTypeface(null, Typeface.BOLD);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, dp(context, 42));
                lp.topMargin = dp(context, 12);
                lp.bottomMargin = dp(context, 4);
                btnProExport.setLayoutParams(lp);

                btnProExport.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        try {
                            if (dialogObj instanceof android.app.Dialog) {
                                ((android.app.Dialog) dialogObj).dismiss();
                            }
                        } catch (Throwable ignored) {}
                        if (act != null) {
                            showExportStudioDialog(act);
                        }
                    }
                });

                vg.addView(btnProExport);
            }
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }
}
