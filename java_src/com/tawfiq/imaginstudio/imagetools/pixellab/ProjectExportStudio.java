package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Environment;
import android.util.Base64;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class ProjectExportStudio {

    /* loaded from: classes.dex */
    public static class CanvasProjectData {
        public Bitmap backgroundBitmap;
        public int height;
        public int width;
        public int backgroundColor = -16777216;
        public List<LayerItem> layers = new ArrayList();
    }

    /* loaded from: classes.dex */
    public static class LayerItem {
        public int height;
        public boolean isText;
        public Bitmap layerBitmap;
        public int left;
        public String name;
        public float opacity;
        public float rotation;
        public int textAlign;
        public int textColor;
        public String textContent;
        public float textSize;
        public int top;
        public View view;
        public int width;
    }

    public static int dp(Context context, int i) {
        return context == null ? i : (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    private static GradientDrawable makeBg(int i, int i2, Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(dp(context, i2));
        return gradientDrawable;
    }

    private static Button makeOptionBtn(Context context, String str, int i, int i2) {
        Button button = new Button(context);
        button.setText(str);
        button.setTextColor(i2);
        button.setTextSize(2, 12.0f);
        button.setBackground(makeBg(i, 8, context));
        button.setPadding(dp(context, 12), dp(context, 8), dp(context, 12), dp(context, 8));
        return button;
    }

    public static File getExportDirectory(Context context) {
        File file;
        try {
            file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "PixelLab/Exports");
        } catch (Throwable th) {
            file = null;
        }
        if (file == null || (!file.exists() && !file.mkdirs())) {
            try {
                file = new File(Environment.getExternalStorageDirectory(), "pixelLab/Exports");
            } catch (Throwable th2) {
            }
        }
        if (file == null || (!file.exists() && !file.mkdirs())) {
            file = new File(context.getExternalFilesDir(null), "Exports");
        }
        file.mkdirs();
        return file;
    }

    public static void shareFile(Context context, File file, String str) {
        Uri fromFile;
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType(str);
            try {
                fromFile = (Uri) Class.forName("androidx.core.content.FileProvider").getMethod("getUriForFile", Context.class, String.class, File.class).invoke(null, context, context.getPackageName() + ".provider", file);
                intent.addFlags(1);
            } catch (Throwable th) {
                fromFile = Uri.fromFile(file);
            }
            intent.putExtra("android.intent.extra.STREAM", fromFile);
            intent.putExtra("android.intent.extra.SUBJECT", file.getName());
            context.startActivity(Intent.createChooser(intent, "مشاركة " + file.getName()));
        } catch (Throwable th2) {
            Toast.makeText(context, "تعذر مشاركة الملف: " + th2.getMessage(), 0).show();
        }
    }

    public static void copyToClipboard(Context context, String str, String str2) {
        try {
            ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(ClipData.newPlainText(str, str2));
                Toast.makeText(context, "📋 تم نسخ الكود إلى الحافظة بنجاح!", 0).show();
            }
        } catch (Throwable th) {
            Toast.makeText(context, "خطأ في النسخ: " + th.getMessage(), 0).show();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:44|(7:49|50|51|(3:56|57|58)|59|57|58)|62|63|64|65|(1:67)|68|69|71|72|73|(1:75)|76|50|51|(4:53|56|57|58)|59|57|58) */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01b4, code lost:
    
        r10 = r8.getClass().getMethod("getText", new java.lang.Class[0]).invoke(r8, new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01c6, code lost:
    
        if (r10 != null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01c8, code lost:
    
        r10 = r10.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01ce, code lost:
    
        r9.textContent = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01cd, code lost:
    
        r10 = "";
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ce A[Catch: all -> 0x0296, TryCatch #5 {all -> 0x0296, blocks: (B:11:0x0060, B:21:0x00b9, B:23:0x00ce, B:25:0x00d4, B:26:0x00dd, B:28:0x00e3, B:29:0x00ec, B:31:0x00fb, B:33:0x0101, B:38:0x0109, B:40:0x010f, B:44:0x0117, B:46:0x016e, B:49:0x017f, B:57:0x028c, B:62:0x019a, B:65:0x01d3, B:67:0x01d7, B:73:0x0215, B:75:0x022b, B:76:0x0242, B:94:0x00e9, B:95:0x00da), top: B:10:0x0060 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tawfiq.imaginstudio.imagetools.pixellab.ProjectExportStudio.CanvasProjectData extractProjectData(android.app.Activity r13) {
        /*
            Method dump skipped, instructions count: 667
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.ProjectExportStudio.extractProjectData(android.app.Activity):com.tawfiq.imaginstudio.imagetools.pixellab.ProjectExportStudio$CanvasProjectData");
    }

    public static void exportToPsd(Activity activity, File file) throws Exception {
        ArrayList arrayList;
        int i;
        CanvasProjectData extractProjectData = extractProjectData(activity);
        int i2 = extractProjectData.width;
        int i3 = extractProjectData.height;
        DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(file), 65536));
        dataOutputStream.writeBytes("8BPS");
        int i4 = 1;
        dataOutputStream.writeShort(1);
        dataOutputStream.write(new byte[6]);
        dataOutputStream.writeShort(4);
        dataOutputStream.writeInt(i3);
        dataOutputStream.writeInt(i2);
        dataOutputStream.writeShort(8);
        dataOutputStream.writeShort(3);
        int i5 = 0;
        dataOutputStream.writeInt(0);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream2.writeBytes("8BIM");
        dataOutputStream2.writeShort(1005);
        dataOutputStream2.writeShort(0);
        dataOutputStream2.writeInt(16);
        dataOutputStream2.writeShort(72);
        dataOutputStream2.writeShort(0);
        dataOutputStream2.writeShort(1);
        dataOutputStream2.writeShort(1);
        dataOutputStream2.writeShort(72);
        dataOutputStream2.writeShort(0);
        dataOutputStream2.writeShort(1);
        dataOutputStream2.writeShort(1);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        dataOutputStream.writeInt(byteArray.length);
        dataOutputStream.write(byteArray);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream3 = new DataOutputStream(byteArrayOutputStream2);
        ArrayList arrayList2 = new ArrayList();
        if (extractProjectData.backgroundBitmap != null) {
            LayerItem layerItem = new LayerItem();
            layerItem.name = "الخلفية (Background)";
            layerItem.left = 0;
            layerItem.top = 0;
            layerItem.width = i2;
            layerItem.height = i3;
            layerItem.opacity = 1.0f;
            layerItem.layerBitmap = extractProjectData.backgroundBitmap;
            arrayList2.add(layerItem);
        }
        arrayList2.addAll(extractProjectData.layers);
        int size = arrayList2.size();
        dataOutputStream3.writeShort(size);
        int i6 = 0;
        while (i6 < size) {
            LayerItem layerItem2 = (LayerItem) arrayList2.get(i6);
            int max = Math.max(i5, layerItem2.top);
            int max2 = Math.max(i5, layerItem2.left);
            int min = Math.min(i3, layerItem2.height + max);
            int min2 = Math.min(i2, layerItem2.width + max2);
            CanvasProjectData canvasProjectData = extractProjectData;
            int max3 = Math.max(1, min2 - max2);
            DataOutputStream dataOutputStream4 = dataOutputStream;
            int max4 = Math.max(1, min - max);
            dataOutputStream3.writeInt(max);
            dataOutputStream3.writeInt(max2);
            dataOutputStream3.writeInt(min);
            dataOutputStream3.writeInt(min2);
            dataOutputStream3.writeShort(4);
            int i7 = (max3 * max4) + 2;
            dataOutputStream3.writeShort(-1);
            dataOutputStream3.writeInt(i7);
            dataOutputStream3.writeShort(0);
            dataOutputStream3.writeInt(i7);
            dataOutputStream3.writeShort(1);
            dataOutputStream3.writeInt(i7);
            dataOutputStream3.writeShort(2);
            dataOutputStream3.writeInt(i7);
            dataOutputStream3.writeBytes("8BIM");
            dataOutputStream3.writeBytes("norm");
            dataOutputStream3.writeByte(Math.round(layerItem2.opacity * 255.0f));
            dataOutputStream3.writeByte(0);
            dataOutputStream3.writeByte(0);
            dataOutputStream3.writeByte(0);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream5 = new DataOutputStream(byteArrayOutputStream3);
            dataOutputStream5.writeInt(0);
            dataOutputStream5.writeInt(0);
            byte[] bytes = (layerItem2.name != null ? layerItem2.name : "Layer " + (i6 + 1)).getBytes(Charset.forName("ISO-8859-1"));
            if (bytes.length > 31) {
                byte[] bArr = new byte[31];
                System.arraycopy(bytes, 0, bArr, 0, 31);
                bytes = bArr;
            }
            dataOutputStream5.writeByte(bytes.length);
            dataOutputStream5.write(bytes);
            int length = (4 - ((bytes.length + 1) % 4)) % 4;
            for (int i8 = 0; i8 < length; i8++) {
                dataOutputStream5.writeByte(0);
            }
            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
            dataOutputStream3.writeInt(byteArray2.length);
            dataOutputStream3.write(byteArray2);
            i6++;
            extractProjectData = canvasProjectData;
            dataOutputStream = dataOutputStream4;
            i5 = 0;
        }
        CanvasProjectData canvasProjectData2 = extractProjectData;
        DataOutputStream dataOutputStream6 = dataOutputStream;
        int i9 = 0;
        while (i9 < size) {
            LayerItem layerItem3 = (LayerItem) arrayList2.get(i9);
            int max5 = Math.max(0, layerItem3.top);
            int max6 = Math.max(0, layerItem3.left);
            int min3 = Math.min(i3, layerItem3.height + max5);
            int max7 = Math.max(i4, Math.min(i2, layerItem3.width + max6) - max6);
            int max8 = Math.max(i4, min3 - max5);
            int i10 = max7 * max8;
            byte[] bArr2 = new byte[i10];
            byte[] bArr3 = new byte[i10];
            byte[] bArr4 = new byte[i10];
            byte[] bArr5 = new byte[i10];
            if (layerItem3.layerBitmap == null || layerItem3.layerBitmap.isRecycled()) {
                arrayList = arrayList2;
                i = size;
                for (int i11 = 0; i11 < i10; i11++) {
                    bArr2[i11] = -1;
                    bArr3[i11] = Byte.MIN_VALUE;
                    bArr4[i11] = Byte.MIN_VALUE;
                    bArr5[i11] = Byte.MIN_VALUE;
                }
            } else {
                int[] iArr = new int[i10];
                arrayList = arrayList2;
                i = size;
                layerItem3.layerBitmap.getPixels(iArr, 0, max7, 0, 0, Math.min(max7, layerItem3.layerBitmap.getWidth()), Math.min(max8, layerItem3.layerBitmap.getHeight()));
                for (int i12 = 0; i12 < i10; i12++) {
                    int i13 = iArr[i12];
                    bArr2[i12] = (byte) ((i13 >>> 24) & 255);
                    bArr3[i12] = (byte) ((i13 >>> 16) & 255);
                    bArr4[i12] = (byte) ((i13 >>> 8) & 255);
                    bArr5[i12] = (byte) (i13 & 255);
                }
            }
            dataOutputStream3.writeShort(0);
            dataOutputStream3.write(bArr2);
            dataOutputStream3.writeShort(0);
            dataOutputStream3.write(bArr3);
            dataOutputStream3.writeShort(0);
            dataOutputStream3.write(bArr4);
            dataOutputStream3.writeShort(0);
            dataOutputStream3.write(bArr5);
            i9++;
            arrayList2 = arrayList;
            size = i;
            i4 = 1;
        }
        byte[] byteArray3 = byteArrayOutputStream2.toByteArray();
        if (byteArray3.length % 2 != 0) {
            byte[] bArr6 = new byte[byteArray3.length + 1];
            System.arraycopy(byteArray3, 0, bArr6, 0, byteArray3.length);
            byteArray3 = bArr6;
        }
        dataOutputStream6.writeInt(byteArray3.length + 4);
        dataOutputStream6.writeInt(byteArray3.length);
        dataOutputStream6.write(byteArray3);
        dataOutputStream6.writeShort(0);
        Bitmap createBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        if (canvasProjectData2.backgroundBitmap != null && !canvasProjectData2.backgroundBitmap.isRecycled()) {
            canvas.drawBitmap(canvasProjectData2.backgroundBitmap, 0.0f, 0.0f, (Paint) null);
        }
        for (LayerItem layerItem4 : canvasProjectData2.layers) {
            if (layerItem4.layerBitmap != null && !layerItem4.layerBitmap.isRecycled()) {
                canvas.drawBitmap(layerItem4.layerBitmap, layerItem4.left, layerItem4.top, (Paint) null);
            }
        }
        int i14 = i2 * i3;
        int[] iArr2 = new int[i14];
        createBitmap.getPixels(iArr2, 0, i2, 0, 0, i2, i3);
        byte[] bArr7 = new byte[i14];
        byte[] bArr8 = new byte[i14];
        byte[] bArr9 = new byte[i14];
        for (int i15 = 0; i15 < i14; i15++) {
            int i16 = iArr2[i15];
            bArr7[i15] = (byte) ((i16 >>> 16) & 255);
            bArr8[i15] = (byte) ((i16 >>> 8) & 255);
            bArr9[i15] = (byte) (i16 & 255);
        }
        dataOutputStream6.write(bArr7);
        dataOutputStream6.write(bArr8);
        dataOutputStream6.write(bArr9);
        createBitmap.recycle();
        dataOutputStream6.flush();
        dataOutputStream6.close();
    }

    public static String exportToSvgString(Activity activity) {
        CanvasProjectData canvasProjectData;
        String str;
        String str2;
        CanvasProjectData extractProjectData = extractProjectData(activity);
        int i = extractProjectData.width;
        int i2 = extractProjectData.height;
        StringBuilder sb = new StringBuilder();
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>\n");
        sb.append("<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" ");
        sb.append("viewBox=\"0 0 ").append(i).append(" ").append(i2).append("\" ");
        sb.append("width=\"").append(i).append("\" height=\"").append(i2).append("\">\n");
        if (extractProjectData.backgroundBitmap != null && !extractProjectData.backgroundBitmap.isRecycled()) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            extractProjectData.backgroundBitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
            sb.append("  <image id=\"background\" x=\"0\" y=\"0\" width=\"").append(i).append("\" height=\"").append(i2).append("\" xlink:href=\"data:image/png;base64,").append(Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2)).append("\" />\n");
        } else {
            sb.append("  <rect id=\"background\" width=\"").append(i).append("\" height=\"").append(i2).append("\" fill=\"#1A1A1A\" />\n");
        }
        char c = 0;
        int i3 = 0;
        while (i3 < extractProjectData.layers.size()) {
            LayerItem layerItem = extractProjectData.layers.get(i3);
            i3++;
            String str3 = "";
            sb.append("  <!-- Layer ").append(i3).append(": ").append(layerItem.name != null ? layerItem.name : "").append(" -->\n");
            if (!layerItem.isText || layerItem.textContent == null || layerItem.textContent.isEmpty()) {
                canvasProjectData = extractProjectData;
                if (layerItem.layerBitmap != null && !layerItem.layerBitmap.isRecycled()) {
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    layerItem.layerBitmap.compress(Bitmap.CompressFormat.PNG, 95, byteArrayOutputStream2);
                    String encodeToString = Base64.encodeToString(byteArrayOutputStream2.toByteArray(), 2);
                    if (layerItem.rotation != 0.0f) {
                        str3 = String.format(Locale.US, " transform=\"rotate(%.1f, %.1f, %.1f)\"", Float.valueOf(layerItem.rotation), Float.valueOf(layerItem.left + (layerItem.width / 2.0f)), Float.valueOf(layerItem.top + (layerItem.height / 2.0f)));
                    }
                    sb.append("  <image x=\"").append(layerItem.left).append("\" y=\"").append(layerItem.top).append("\" width=\"").append(layerItem.width).append("\" height=\"").append(layerItem.height).append("\" opacity=\"").append(String.format(Locale.US, "%.2f", Float.valueOf(layerItem.opacity))).append("\" xlink:href=\"data:image/png;base64,").append(encodeToString).append("\"").append(str3).append(" />\n");
                }
            } else {
                float f = layerItem.textSize > 10.0f ? layerItem.textSize : 48.0f;
                if (layerItem.textColor == 0) {
                    str = "#FFFFFF";
                } else {
                    Object[] objArr = new Object[1];
                    objArr[c] = Integer.valueOf(layerItem.textColor & 16777215);
                    str = String.format("#%06X", objArr);
                }
                float f2 = layerItem.left + (layerItem.width / 2.0f);
                if (layerItem.textAlign == 3) {
                    f2 = layerItem.left;
                    str2 = "start";
                } else if (layerItem.textAlign != 5) {
                    str2 = "middle";
                } else {
                    f2 = layerItem.left + layerItem.width;
                    str2 = "end";
                }
                if (layerItem.rotation == 0.0f) {
                    canvasProjectData = extractProjectData;
                } else {
                    canvasProjectData = extractProjectData;
                    str3 = String.format(Locale.US, " transform=\"rotate(%.1f, %.1f, %.1f)\"", Float.valueOf(layerItem.rotation), Float.valueOf(layerItem.left + (layerItem.width / 2.0f)), Float.valueOf(layerItem.top + (layerItem.height / 2.0f)));
                }
                String[] split = layerItem.textContent.split("\n", -1);
                sb.append("  <text x=\"").append(String.format(Locale.US, "%.1f", Float.valueOf(f2))).append("\" y=\"").append(layerItem.top + Math.round(0.9f * f)).append("\" font-size=\"").append(String.format(Locale.US, "%.1f", Float.valueOf(f))).append("\" fill=\"").append(str).append("\" text-anchor=\"").append(str2).append("\" direction=\"rtl\" xml:space=\"preserve\"").append(str3).append(">\n");
                for (int i4 = 0; i4 < split.length; i4++) {
                    String replace = split[i4].replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;");
                    if (i4 == 0) {
                        sb.append("    <tspan>").append(replace).append("</tspan>\n");
                    } else {
                        sb.append("    <tspan x=\"").append(String.format(Locale.US, "%.1f", Float.valueOf(f2))).append("\" dy=\"1.25em\">").append(replace).append("</tspan>\n");
                    }
                }
                sb.append("  </text>\n");
            }
            extractProjectData = canvasProjectData;
            c = 0;
        }
        sb.append("</svg>\n");
        return sb.toString();
    }

    public static void exportToSvg(Activity activity, File file) throws Exception {
        String exportToSvgString = exportToSvgString(activity);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(exportToSvgString.getBytes(Charset.forName("UTF-8")));
        fileOutputStream.close();
    }

    public static String exportToAndroidVectorString(Activity activity) {
        CanvasProjectData extractProjectData = extractProjectData(activity);
        int i = extractProjectData.width;
        int i2 = extractProjectData.height;
        StringBuilder sb = new StringBuilder();
        sb.append("<!-- Android Vector Drawable Export from PixelLab Pro -->\n");
        sb.append("<vector xmlns:android=\"http://schemas.android.com/apk/res/android\"\n");
        sb.append("    android:width=\"").append(i / 3).append("dp\"\n");
        sb.append("    android:height=\"").append(i2 / 3).append("dp\"\n");
        sb.append("    android:viewportWidth=\"").append(i).append("\"\n");
        sb.append("    android:viewportHeight=\"").append(i2).append("\">\n\n");
        sb.append("    <!-- Background Canvas -->\n");
        sb.append("    <path\n");
        sb.append("        android:fillColor=\"#FF1A1A1A\"\n");
        sb.append("        android:pathData=\"M0,0 h").append(i).append(" v").append(i2).append(" h-").append(i).append(" z\" />\n\n");
        int i3 = 0;
        while (i3 < extractProjectData.layers.size()) {
            LayerItem layerItem = extractProjectData.layers.get(i3);
            i3++;
            sb.append("    <!-- Layer ").append(i3).append(": ").append(layerItem.name).append(" -->\n");
            sb.append("    <group\n");
            sb.append("        android:translateX=\"").append(layerItem.left).append("\"\n");
            sb.append("        android:translateY=\"").append(layerItem.top).append("\"\n");
            if (layerItem.rotation != 0.0f) {
                sb.append("        android:pivotX=\"").append(layerItem.width / 2).append("\"\n");
                sb.append("        android:pivotY=\"").append(layerItem.height / 2).append("\"\n");
                sb.append("        android:rotation=\"").append(layerItem.rotation).append("\"\n");
            }
            sb.append("        android:alpha=\"").append(String.format(Locale.US, "%.2f", Float.valueOf(layerItem.opacity))).append("\">\n");
            String str = layerItem.isText ? "#FFFFD54F" : "#FF64B5F6";
            sb.append("        <path\n");
            sb.append("            android:fillColor=\"").append(str).append("\"\n");
            sb.append("            android:pathData=\"M0,0 h").append(layerItem.width).append(" v").append(layerItem.height).append(" h-").append(layerItem.width).append(" z\" />\n");
            sb.append("    </group>\n\n");
        }
        sb.append("</vector>\n");
        return sb.toString();
    }

    public static void exportToAndroidVector(Activity activity, File file) throws Exception {
        String exportToAndroidVectorString = exportToAndroidVectorString(activity);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(exportToAndroidVectorString.getBytes(Charset.forName("UTF-8")));
        fileOutputStream.close();
    }

    public static String exportToAndroidLayoutString(Activity activity) {
        String str;
        String str2;
        CanvasProjectData extractProjectData = extractProjectData(activity);
        int i = extractProjectData.width;
        int i2 = extractProjectData.height;
        StringBuilder sb = new StringBuilder();
        sb.append("<?xml version=\"1.0\" encoding=\"utf-8\"?>\n");
        sb.append("<!-- Generated with PixelLab Pro Universal Layout Studio -->\n");
        sb.append("<RelativeLayout xmlns:android=\"http://schemas.android.com/apk/res/android\"\n");
        sb.append("    android:layout_width=\"").append(i / 3).append("dp\"\n");
        sb.append("    android:layout_height=\"").append(i2 / 3).append("dp\"\n");
        sb.append("    android:background=\"#FF1A1A1A\">\n\n");
        int i3 = 0;
        while (i3 < extractProjectData.layers.size()) {
            LayerItem layerItem = extractProjectData.layers.get(i3);
            i3++;
            int round = Math.round(layerItem.left / 3.0f);
            int round2 = Math.round(layerItem.top / 3.0f);
            int round3 = Math.round(layerItem.width / 3.0f);
            int round4 = Math.round(layerItem.height / 3.0f);
            CanvasProjectData canvasProjectData = extractProjectData;
            if (layerItem.isText && layerItem.textContent != null) {
                String replace = layerItem.textContent.replace("\"", "\\\"").replace("\n", "\\n");
                if (layerItem.textColor == 0) {
                    str = "%.2f";
                    str2 = "#FFFFFF";
                } else {
                    str = "%.2f";
                    str2 = String.format("#%06X", Integer.valueOf(16777215 & layerItem.textColor));
                }
                int max = Math.max(10, Math.round(layerItem.textSize / 3.0f));
                sb.append("    <!-- Text Layer: ").append(layerItem.name).append(" -->\n");
                sb.append("    <TextView\n");
                sb.append("        android:id=\"@+id/pl_text_").append(i3).append("\"\n");
                sb.append("        android:layout_width=\"wrap_content\"\n");
                sb.append("        android:layout_height=\"wrap_content\"\n");
                sb.append("        android:layout_marginLeft=\"").append(round).append("dp\"\n");
                sb.append("        android:layout_marginTop=\"").append(round2).append("dp\"\n");
                sb.append("        android:text=\"").append(replace).append("\"\n");
                sb.append("        android:textColor=\"").append(str2).append("\"\n");
                sb.append("        android:textSize=\"").append(max).append("sp\"\n");
                if (layerItem.rotation != 0.0f) {
                    sb.append("        android:rotation=\"").append(layerItem.rotation).append("\"\n");
                }
                sb.append("        android:alpha=\"").append(String.format(Locale.US, str, Float.valueOf(layerItem.opacity))).append("\" />\n\n");
            } else {
                sb.append("    <!-- Shape/Image Layer: ").append(layerItem.name).append(" -->\n");
                sb.append("    <ImageView\n");
                sb.append("        android:id=\"@+id/pl_layer_").append(i3).append("\"\n");
                sb.append("        android:layout_width=\"").append(round3).append("dp\"\n");
                sb.append("        android:layout_height=\"").append(round4).append("dp\"\n");
                sb.append("        android:layout_marginLeft=\"").append(round).append("dp\"\n");
                sb.append("        android:layout_marginTop=\"").append(round2).append("dp\"\n");
                if (layerItem.rotation != 0.0f) {
                    sb.append("        android:rotation=\"").append(layerItem.rotation).append("\"\n");
                }
                sb.append("        android:alpha=\"").append(String.format(Locale.US, "%.2f", Float.valueOf(layerItem.opacity))).append("\" />\n\n");
            }
            extractProjectData = canvasProjectData;
        }
        sb.append("</RelativeLayout>\n");
        return sb.toString();
    }

    public static void exportToAndroidLayout(Activity activity, File file) throws Exception {
        String exportToAndroidLayoutString = exportToAndroidLayoutString(activity);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(exportToAndroidLayoutString.getBytes(Charset.forName("UTF-8")));
        fileOutputStream.close();
    }

    public static void showExportStudioDialog(final Activity activity) {
        if (activity == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(Color.parseColor("#151D24"));
        linearLayout.setPadding(dp(activity, 16), dp(activity, 16), dp(activity, 16), dp(activity, 16));
        TextView textView = new TextView(activity);
        textView.setText("🎨 استوديو التصدير الاحترافي (Pro Exporter)");
        textView.setTextColor(-1);
        textView.setTextSize(2, 15.0f);
        textView.setTypeface(null, 1);
        textView.setGravity(17);
        textView.setPadding(0, 0, 0, dp(activity, 12));
        linearLayout.addView(textView);
        TextView textView2 = new TextView(activity);
        textView2.setText("اختر الصيغة المطلوبة لتصدير مشروعك مع كافة الطبقات:");
        textView2.setTextColor(Color.parseColor("#B0BEC5"));
        textView2.setTextSize(2, 11.0f);
        textView2.setGravity(17);
        textView2.setPadding(0, 0, 0, dp(activity, 12));
        linearLayout.addView(textView2);
        ScrollView scrollView = new ScrollView(activity);
        LinearLayout linearLayout2 = new LinearLayout(activity);
        linearLayout2.setOrientation(1);
        final String format = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date());
        linearLayout2.addView(makeExportCard(activity, "📄 Adobe Photoshop (.psd)", "تصدير كامل لكافة الطبقات والنصوص والصور في ملف PSD متعدد الطبقات متوافق 100% مع الفوتوشوب.", "#1565C0", "تصدير فوتوشوب PSD", new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ProjectExportStudio.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProjectExportStudio.executeExport(activity, "PSD", "PixelLab_" + format + ".psd", "application/x-photoshop", r3[0]);
            }
        }));
        linearLayout2.addView(makeExportCard(activity, "📐 Scalable Vector Graphics (.svg)", "فيكتور ناقل عالي الدقة بدون أي بكسلة، مع نصوص عربية حية وأبعاد دقيقة لـ Illustrator و Corel و Figma.", "#E65100", "تصدير فيكتور SVG", new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ProjectExportStudio.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProjectExportStudio.executeExport(activity, "SVG", "PixelLab_" + format + ".svg", "image/svg+xml", r3[0]);
            }
        }));
        linearLayout2.addView(makeExportCard(activity, "📱 Android Vector Drawable (.xml)", "كود فيكتور XML جاهز للاستخدام المباشر في مجلد res/drawable داخل تطبيقات أندرويد.", "#2E7D32", "تصدير Vector XML", new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ProjectExportStudio.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProjectExportStudio.executeExport(activity, "VECTOR_XML", "pixellab_vector_" + format + ".xml", "text/xml", r3[0]);
            }
        }));
        linearLayout2.addView(makeExportCard(activity, "💻 Android Layout Code (.xml)", "كود واجهة RelativeLayout كامل مع عناصر TextView و ImageView ومواقعها وإحداثياتها لأندرويد ستوديو.", "#6A1B9A", "تصدير Layout XML", new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ProjectExportStudio.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProjectExportStudio.executeExport(activity, "LAYOUT_XML", "pixellab_layout_" + format + ".xml", "text/xml", r3[0]);
            }
        }));
        scrollView.addView(linearLayout2);
        linearLayout.addView(scrollView);
        builder.setView(linearLayout);
        builder.setNegativeButton("إغلاق", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        final AlertDialog[] alertDialogArr = {create};
        create.show();
    }

    private static View makeExportCard(Context context, String str, String str2, String str3, String str4, View.OnClickListener onClickListener) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setBackground(makeBg(Color.parseColor("#1E2732"), 10, context));
        linearLayout.setPadding(dp(context, 12), dp(context, 10), dp(context, 12), dp(context, 10));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.bottomMargin = dp(context, 10);
        linearLayout.setLayoutParams(layoutParams);
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(2, 13.0f);
        textView.setTypeface(null, 1);
        linearLayout.addView(textView);
        TextView textView2 = new TextView(context);
        textView2.setText(str2);
        textView2.setTextColor(Color.parseColor("#90A4AE"));
        textView2.setTextSize(2, 10.5f);
        textView2.setPadding(0, dp(context, 3), 0, dp(context, 8));
        linearLayout.addView(textView2);
        Button makeOptionBtn = makeOptionBtn(context, str4, Color.parseColor(str3), -1);
        makeOptionBtn.setOnClickListener(onClickListener);
        linearLayout.addView(makeOptionBtn);
        return linearLayout;
    }

    /* loaded from: classes.dex */
    public static class ExportTask implements Runnable {
        private final Activity activity;
        private final String fileName;
        private final String formatType;
        private final String mimeType;
        private final AlertDialog parentDialog;
        private final ProgressDialog pd;

        public ExportTask(Activity activity, String str, String str2, String str3, AlertDialog alertDialog, ProgressDialog progressDialog) {
            this.activity = activity;
            this.formatType = str;
            this.fileName = str2;
            this.mimeType = str3;
            this.parentDialog = alertDialog;
            this.pd = progressDialog;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v10 */
        /* JADX WARN: Type inference failed for: r1v20 */
        /* JADX WARN: Type inference failed for: r1v23 */
        /* JADX WARN: Type inference failed for: r1v24 */
        /* JADX WARN: Type inference failed for: r1v26 */
        /* JADX WARN: Type inference failed for: r1v27 */
        /* JADX WARN: Type inference failed for: r1v28 */
        /* JADX WARN: Type inference failed for: r1v9, types: [boolean] */
        @Override // java.lang.Runnable
        public void run() {
            String str;
            File file;
            String message;
            String str2;
            File file2;
            ?? equals;
            try {
                file2 = new File(ProjectExportStudio.getExportDirectory(this.activity), this.fileName);
            } catch (Throwable th) {
                th = th;
                str = null;
            }
            if ("PSD".equals(this.formatType)) {
                ProjectExportStudio.exportToPsd(this.activity, file2);
            } else {
                equals = "SVG".equals(this.formatType);
                try {
                    if (equals != 0) {
                        String exportToSvgString = ProjectExportStudio.exportToSvgString(this.activity);
                        ProjectExportStudio.exportToSvg(this.activity, file2);
                        equals = exportToSvgString;
                    } else if ("VECTOR_XML".equals(this.formatType)) {
                        String exportToAndroidVectorString = ProjectExportStudio.exportToAndroidVectorString(this.activity);
                        ProjectExportStudio.exportToAndroidVector(this.activity, file2);
                        equals = exportToAndroidVectorString;
                    } else if ("LAYOUT_XML".equals(this.formatType)) {
                        String exportToAndroidLayoutString = ProjectExportStudio.exportToAndroidLayoutString(this.activity);
                        ProjectExportStudio.exportToAndroidLayout(this.activity, file2);
                        equals = exportToAndroidLayoutString;
                    }
                    message = null;
                    str2 = equals;
                    file = file2;
                } catch (Throwable th2) {
                    str = equals;
                    th = th2;
                    th.printStackTrace();
                    file = null;
                    message = th.getMessage();
                    str2 = str;
                    Activity activity = this.activity;
                    activity.runOnUiThread(new ExportCallback(activity, file, message, this.formatType, this.mimeType, str2, this.parentDialog, this.pd));
                }
                Activity activity2 = this.activity;
                activity2.runOnUiThread(new ExportCallback(activity2, file, message, this.formatType, this.mimeType, str2, this.parentDialog, this.pd));
            }
            equals = 0;
            message = null;
            str2 = equals;
            file = file2;
            Activity activity22 = this.activity;
            activity22.runOnUiThread(new ExportCallback(activity22, file, message, this.formatType, this.mimeType, str2, this.parentDialog, this.pd));
        }
    }

    /* loaded from: classes.dex */
    public static class ExportCallback implements Runnable {
        private final Activity activity;
        private final String code;
        private final String error;
        private final File file;
        private final String format;
        private final String mimeType;
        private final AlertDialog parentDialog;
        private final ProgressDialog pd;

        public ExportCallback(Activity activity, File file, String str, String str2, String str3, String str4, AlertDialog alertDialog, ProgressDialog progressDialog) {
            this.activity = activity;
            this.file = file;
            this.error = str;
            this.format = str2;
            this.mimeType = str3;
            this.code = str4;
            this.parentDialog = alertDialog;
            this.pd = progressDialog;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.pd.isShowing()) {
                    this.pd.dismiss();
                }
            } catch (Throwable th) {
            }
            File file = this.file;
            if (file != null && file.exists()) {
                AlertDialog alertDialog = this.parentDialog;
                if (alertDialog != null && alertDialog.isShowing()) {
                    this.parentDialog.dismiss();
                }
                ProjectExportStudio.showSuccessDialog(this.activity, this.file, this.format, this.mimeType, this.code);
                return;
            }
            Activity activity = this.activity;
            StringBuilder append = new StringBuilder().append("فشل التصدير: ");
            String str = this.error;
            if (str == null) {
                str = "خطأ غير معروف";
            }
            Toast.makeText(activity, append.append(str).toString(), 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void executeExport(Activity activity, String str, String str2, String str3, AlertDialog alertDialog) {
        ProgressDialog progressDialog = new ProgressDialog(activity);
        progressDialog.setTitle("جاري التصدير الاحترافي...");
        progressDialog.setMessage("جاري تجهيز الطبقات وتحويل ملف " + str + "...");
        progressDialog.setCancelable(false);
        progressDialog.show();
        new Thread(new ExportTask(activity, str, str2, str3, alertDialog, progressDialog)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void showSuccessDialog(final Activity activity, final File file, final String str, final String str2, final String str3) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle("✅ تم التصدير بنجاح!");
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(dp(activity, 16), dp(activity, 12), dp(activity, 16), dp(activity, 12));
        TextView textView = new TextView(activity);
        textView.setText("تم حفظ الملف بنجاح في هاتفك:\n📂 " + file.getAbsolutePath());
        textView.setTextColor(-1);
        textView.setTextSize(12.0f);
        textView.setPadding(0, 0, 0, dp(activity, 12));
        linearLayout.addView(textView);
        Button makeOptionBtn = makeOptionBtn(activity, "📤 مشاركة الملف الآن (تليجرام / واتساب / درايف)", Color.parseColor("#1E88E5"), -1);
        makeOptionBtn.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ProjectExportStudio.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ProjectExportStudio.shareFile(activity, file, str2);
            }
        });
        linearLayout.addView(makeOptionBtn);
        if (str3 != null && !str3.isEmpty()) {
            Button makeOptionBtn2 = makeOptionBtn(activity, "📋 نسخ الكود إلى الحافظة", Color.parseColor("#43A047"), -1);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.topMargin = dp(activity, 8);
            makeOptionBtn2.setLayoutParams(layoutParams);
            makeOptionBtn2.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ProjectExportStudio.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ProjectExportStudio.copyToClipboard(activity, str + " Code", str3);
                }
            });
            linearLayout.addView(makeOptionBtn2);
        }
        builder.setView(linearLayout);
        builder.setPositiveButton("تم", (DialogInterface.OnClickListener) null);
        builder.show();
    }

    public static void addExportOptionToSaveMenu(final Activity activity, final Object obj) {
        LinearLayout linearLayout;
        if (activity == null || obj == null) {
            return;
        }
        try {
            View view = (View) obj.getClass().getMethod("getContentView", new Class[0]).invoke(obj, new Object[0]);
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (viewGroup instanceof LinearLayout) {
                    linearLayout = (LinearLayout) viewGroup;
                } else if (viewGroup.getChildCount() > 0 && (viewGroup.getChildAt(0) instanceof LinearLayout)) {
                    linearLayout = (LinearLayout) viewGroup.getChildAt(0);
                } else {
                    linearLayout = null;
                }
                if (linearLayout != null) {
                    TextView textView = new TextView(activity);
                    textView.setText("🎨 تصدير احترافي (PSD / فيكتور / XML)");
                    textView.setTextColor(Color.parseColor("#FAB852"));
                    textView.setTextSize(2, 13.0f);
                    textView.setPadding(dp(activity, 16), dp(activity, 12), dp(activity, 16), dp(activity, 12));
                    textView.setGravity(21);
                    textView.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ProjectExportStudio.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            try {
                                obj.getClass().getMethod("dismiss", new Class[0]).invoke(obj, new Object[0]);
                            } catch (Throwable th) {
                            }
                            ProjectExportStudio.showExportStudioDialog(activity);
                        }
                    });
                    linearLayout.addView(textView);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void injectIntoExportDialog(final Object obj) {
        if (obj == null) {
            return;
        }
        try {
            Field declaredField = obj.getClass().getDeclaredField("dialogLayout");
            declaredField.setAccessible(true);
            View view = (View) declaredField.get(obj);
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                Context context = view.getContext();
                final Activity activity = ArabicTextEnhancer.getActivity(context);
                Button makeOptionBtn = makeOptionBtn(context, "🎨 تصدير احترافي (PSD / فيكتور SVG / XML)", Color.parseColor("#00838F"), -1);
                makeOptionBtn.setTextSize(2, 12.0f);
                makeOptionBtn.setTypeface(null, 1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, dp(context, 42));
                layoutParams.topMargin = dp(context, 12);
                layoutParams.bottomMargin = dp(context, 4);
                makeOptionBtn.setLayoutParams(layoutParams);
                makeOptionBtn.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ProjectExportStudio.8
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        try {
                            Object obj2 = obj;
                            if (obj2 instanceof Dialog) {
                                ((Dialog) obj2).dismiss();
                            }
                        } catch (Throwable th) {
                        }
                        Activity activity2 = activity;
                        if (activity2 != null) {
                            ProjectExportStudio.showExportStudioDialog(activity2);
                        }
                    }
                });
                viewGroup.addView(makeOptionBtn);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
