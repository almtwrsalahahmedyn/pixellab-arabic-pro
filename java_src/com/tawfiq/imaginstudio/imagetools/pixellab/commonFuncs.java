package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Environment;
import android.util.TypedValue;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.Random;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
public class commonFuncs {
    private static final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    public static final int FORMAT_JPG = 2;
    public static final int FORMAT_PNG = 1;
    private static Paint pntBorder;
    private static SecureRandom rnd = new SecureRandom();
    private static final int abLength = 62;

    static {
        Paint paint = new Paint(1);
        pntBorder = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    public static int NearestPowerOf2LessThan32(float f) {
        return (int) Math.min(Math.pow(2.0d, Math.floor(Math.log(f) / Math.log(2.0d))), 32.0d);
    }

    public static Rect absolutePortion(RectF rectF, int i, int i2) {
        float f = i;
        float f2 = i2;
        return new Rect((int) ((rectF.left / 100.0f) * f), (int) ((rectF.top / 100.0f) * f2), (int) ((rectF.right / 100.0f) * f), (int) ((rectF.bottom / 100.0f) * f2));
    }

    public static RectF absolutePortionF(RectF rectF, int i, int i2) {
        float f = i;
        float f2 = i2;
        return new RectF((rectF.left / 100.0f) * f, (rectF.top / 100.0f) * f2, (rectF.right / 100.0f) * f, (rectF.bottom / 100.0f) * f2);
    }

    public static RectF arrToRectF(ArrayList<String> arrayList) {
        return (arrayList == null || arrayList.size() < 4) ? new RectF() : new RectF(Float.parseFloat(arrayList.get(0)), Float.parseFloat(arrayList.get(1)), Float.parseFloat(arrayList.get(2)), Float.parseFloat(arrayList.get(3)));
    }

    public static boolean arrayContains(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static String boolToString(boolean z) {
        return z ? "1" : "";
    }

    public static int ceilConvert(float f) {
        return (int) Math.ceil(f);
    }

    public static int changeAlpha(int i, int i2) {
        return Color.argb(i2, Color.red(i), Color.green(i), Color.blue(i));
    }

    public static boolean checkEquality(float... fArr) {
        if (fArr.length == 0) {
            return false;
        }
        float f = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            if (fArr[i] != f) {
                return false;
            }
        }
        return true;
    }

    public static boolean checkIfSidesClipped(Bitmap bitmap) {
        if (!checkImage(bitmap)) {
            return false;
        }
        for (int i = 0; i < bitmap.getHeight(); i++) {
            if (Color.alpha(bitmap.getPixel(0, i)) != 0 || Color.alpha(bitmap.getPixel(bitmap.getWidth() - 1, i)) != 0) {
                return true;
            }
        }
        return false;
    }

    public static boolean checkImage(Bitmap bitmap) {
        return bitmap != null && !bitmap.isRecycled() && bitmap.getWidth() > 1 && bitmap.getHeight() > 1;
    }

    public static float clipValue(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    public static int clipValue(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    public static boolean compareStrings(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    public static void computePathsBounds(RectF rectF, Path... pathArr) {
        RectF rectF2 = new RectF();
        for (Path path : pathArr) {
            path.computeBounds(rectF2, false);
            unionRects(rectF, rectF2);
        }
    }

    public static Bundle copyBundle(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        return new Bundle(bundle);
    }

    public static void copyDirectory(File file, File file2) throws IOException {
        if (file.getAbsolutePath().equals(file2.getAbsolutePath())) {
            return;
        }
        if (file.isDirectory()) {
            if (!file2.exists() && !file2.mkdirs()) {
                throw new IOException("Cannot create dir " + file2.getAbsolutePath());
            }
            for (String str : file.list()) {
                copyDirectory(new File(file, str), new File(file2, str));
            }
            return;
        }
        File parentFile = file2.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Cannot create dir " + parentFile.getAbsolutePath());
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = fileInputStream.read(bArr);
            if (read <= 0) {
                fileInputStream.close();
                fileOutputStream.close();
                return;
            }
            fileOutputStream.write(bArr, 0, read);
        }
    }

    public static Bitmap cropRotBitmap(Bitmap bitmap, RectF rectF, int i, boolean z, boolean z2) {
        if (rectF.left == 0.0f && rectF.top == 0.0f && rectF.right == 100.0f && rectF.bottom == 100.0f && i == 0 && !z && !z2) {
            return bitmap;
        }
        boolean z3 = (i / 90) % 2 != 0;
        Rect absolutePortion = absolutePortion(rectF, bitmap.getWidth(), bitmap.getHeight());
        Bitmap createBitmap = Bitmap.createBitmap(!z3 ? absolutePortion.width() : absolutePortion.height(), z3 ? absolutePortion.width() : absolutePortion.height(), bitmap.getConfig());
        RectF rectF2 = new RectF(0.0f, 0.0f, createBitmap.getWidth(), createBitmap.getHeight());
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(1);
        paint.setFilterBitmap(true);
        canvas.scale(z ? -1.0f : 1.0f, z2 ? -1.0f : 1.0f, rectF2.centerX(), rectF2.centerY());
        canvas.rotate(i, rectF2.centerX(), rectF2.centerY());
        canvas.drawBitmap(bitmap, absolutePortion, rotateRect(rectF2, i), paint);
        return createBitmap;
    }

    public static String directionToString(Path.Direction direction) {
        return direction == Path.Direction.CW ? "" : "1";
    }

    public static float dist(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return (float) Math.sqrt((f6 * f6) + (f5 * f5));
    }

    public static float dist(PointF pointF, float f, float f2) {
        float f3 = pointF.x;
        float f4 = (f3 - f) * (f3 - f);
        float f5 = pointF.y;
        return (float) Math.sqrt(((f5 - f2) * (f5 - f2)) + f4);
    }

    public static float dist(PointF pointF, PointF pointF2) {
        float f = pointF.x;
        float f2 = pointF2.x;
        float f3 = (f - f2) * (f - f2);
        float f4 = pointF.y;
        float f5 = pointF2.y;
        return (float) Math.sqrt(((f4 - f5) * (f4 - f5)) + f3);
    }

    public static float dpToPx(int i) {
        return i * Resources.getSystem().getDisplayMetrics().density;
    }

    public static int dpToPxInt(int i) {
        return (int) dpToPx(i);
    }

    public static void drawBorder(RectF rectF, int i, float f, Canvas canvas) {
        pntBorder.setStrokeWidth(f);
        pntBorder.setColor(i);
        canvas.drawRect(rectF, pntBorder);
    }

    public static void drawGrid(float f, float f2, float f3, float f4, int i, boolean z, Canvas canvas, Paint paint) {
        float f5 = i;
        float f6 = (f3 - f) / f5;
        float f7 = (f4 - f2) / f5;
        float strokeWidth = paint.getStrokeWidth();
        int i2 = 1;
        while (i2 < i) {
            if (z) {
                paint.setStrokeWidth((i2 == i / 2 ? 2 : 1) * strokeWidth);
            }
            float f8 = i2;
            float f9 = (f8 * f6) + f;
            canvas.drawLine(f9, f2, f9, f4, paint);
            float f10 = (f8 * f7) + f2;
            canvas.drawLine(f, f10, f3, f10, paint);
            i2++;
        }
        paint.setStrokeWidth(strokeWidth);
    }

    public static void drawGrid(RectF rectF, int i, boolean z, Canvas canvas, Paint paint) {
        drawGrid(rectF.left, rectF.top, rectF.right, rectF.bottom, i, z, canvas, paint);
    }

    public static void drawRoundedRectCustom(RectF rectF, float f, boolean z, boolean z2, Paint paint, Canvas canvas) {
        if (!z && !z2) {
            canvas.drawRect(rectF, paint);
            return;
        }
        canvas.drawRoundRect(rectF, f, f, paint);
        float dpToPx = dpToPx(1);
        if (!z) {
            float f2 = rectF.left;
            canvas.drawRect(f2 - dpToPx, rectF.top, f2 + f, rectF.bottom, paint);
        }
        if (z2) {
            return;
        }
        float f3 = rectF.right;
        canvas.drawRect(f3 - f, rectF.top, f3 + dpToPx, rectF.bottom, paint);
    }

    public static void drawSquare(float f, float f2, float f3, Paint paint, Canvas canvas) {
        canvas.drawRect(f - f3, f2 - f3, f + f3, f2 + f3, paint);
    }

    public static boolean equalBundles(Bundle bundle, Bundle bundle2) {
        return bundle != null && bundle2 != null && bundle.size() == bundle2.size() && bundle.toString().equals(bundle2.toString());
    }

    public static boolean equalsRectF(RectF rectF, RectF rectF2) {
        return rectF.left == rectF2.left && rectF.top == rectF2.top && rectF.right == rectF2.right && rectF.bottom == rectF2.bottom;
    }

    public static ArrayList<PointF> findExtremaCubicCurve(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        ArrayList<PointF> arrayList = new ArrayList<>();
        float f = pointF.x;
        float f2 = pointF2.x;
        float f3 = pointF3.x;
        for (float f4 : solveQuadratic(((((f2 * 3.0f) + (-f)) - (f3 * 3.0f)) + pointF4.x) * 3.0f, ((f - (f2 * 2.0f)) + f3) * 6.0f, (f2 - f) * 3.0f)) {
            if (inRange(f4, 0.0f, 1.0f, false)) {
                arrayList.add(getPointOnCurve(pointF, pointF2, pointF3, pointF4, f4)[4]);
            }
        }
        float f5 = pointF.y;
        float f6 = pointF2.y;
        float f7 = pointF3.y;
        float[] solveQuadratic = solveQuadratic(((((f6 * 3.0f) + (-f5)) - (f7 * 3.0f)) + pointF4.y) * 3.0f, ((f5 - (2.0f * f6)) + f7) * 6.0f, (f6 - f5) * 3.0f);
        for (float f8 : solveQuadratic) {
            if (inRange(f8, 0.0f, 1.0f, false)) {
                arrayList.add(getPointOnCurve(pointF, pointF2, pointF3, pointF4, f8)[4]);
            }
        }
        return arrayList;
    }

    public static Rect fitTextInRect(String str, Paint paint, Rect rect) {
        Rect rect2 = new Rect();
        paint.setTextSize(rect.height());
        int length = str.length();
        while (true) {
            paint.getTextBounds(str, 0, length, rect2);
            if (rect2.width() <= rect.width() && rect2.height() <= rect.height()) {
                return rect2;
            }
            paint.setTextSize(paint.getTextSize() - 1.0f);
            length = str.length();
        }
    }

    public static void flipPortion(RectF rectF, boolean z, boolean z2) {
        rectF.set(z ? 100.0f - rectF.right : rectF.left, z2 ? 100.0f - rectF.bottom : rectF.top, z ? 100.0f - rectF.left : rectF.right, z2 ? 100.0f - rectF.top : rectF.bottom);
    }

    public static int floorConvert(float f) {
        return (int) Math.floor(f);
    }

    public static int fromHex(String str) {
        return Color.parseColor(str);
    }

    public static String generateName(String str) {
        return str + getRandomString(4);
    }

    public static float getAngleThreePoints(float f, float f2, float f3, float f4, float f5, float f6) {
        return (float) Math.toDegrees(Math.atan2(f2 - f4, f - f3) - Math.atan2(f6 - f4, f5 - f3));
    }

    public static Bitmap getBitmapFromPath(String str, int i) throws Exception {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = i;
        return BitmapFactory.decodeFile(str, options);
    }

    public static File getCacheFile(String str, Context context) {
        Environment.getExternalStorageDirectory();
        File file = new File(Environment.getExternalStorageDirectory() + "/pixelLab/.cache");
        try {
            file.mkdirs();
        } catch (Exception e) {
            e.getMessage();
        }
        try {
            new File(file, ".nomedia").createNewFile();
        } catch (IOException e2) {
            e2.printStackTrace();
            e2.getMessage();
        }
        File file2 = new File(file, str);
        try {
            file2.createNewFile();
        } catch (IOException e3) {
            e3.getMessage();
        }
        return file2;
    }

    public static int getContrastColor(int i) {
        if (Color.alpha(i) == 0) {
            i = Color.rgb(0, 0, 0);
        }
        int red = Color.red(i);
        return (((float) Color.blue(i)) * 0.114f) + ((((float) Color.green(i)) * 0.587f) + (((float) red) * 0.299f)) > 186.0f ? -12303292 : -1;
    }

    public static int[] getDimensionsFromAssets(String str, Context context) throws Exception {
        InputStream open = context.getAssets().open(str);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(open, null, options);
        return new int[]{options.outWidth, options.outHeight};
    }

    public static int[] getDimensionsFromFile(String str) {
        int i;
        BitmapFactory.Options options;
        int i2 = 0;
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(fileInputStream, null, options);
            i = options.outWidth;
        } catch (FileNotFoundException e) {
            e = e;
            i = 0;
        }
        try {
            i2 = options.outHeight;
        } catch (FileNotFoundException e2) {
            e = e2;
            e.printStackTrace();
            return new int[]{i, i2};
        }
        return new int[]{i, i2};
    }

    public static int[] getDimensionsFromPath(String str) throws Exception {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        return new int[]{options.outWidth, options.outHeight};
    }

    public static String getFileExtension(File file) {
        return getFileExtension(file.getName());
    }

    public static String getFileExtension(String str) {
        int i;
        try {
            int lastIndexOf = str.lastIndexOf(".");
            return (lastIndexOf <= 0 || (i = lastIndexOf + 1) >= str.length()) ? "" : str.substring(i).toLowerCase();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getFileNameNoExtension(File file) {
        return getFileNameNoExtension(file.getName());
    }

    public static String getFileNameNoExtension(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length() && str.charAt(i) != '.'; i++) {
            try {
                sb.append(str.charAt(i));
            } catch (Exception unused) {
                return "";
            }
        }
        return sb.toString();
    }

    public static File getFileOnStorage(String str) {
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath());
        file.mkdirs();
        File file2 = new File(file, str);
        try {
            file2.createNewFile();
        } catch (IOException unused) {
        }
        return file2;
    }

    public static int getInSampleAssetFromFile(Context context, String str, int i, int i2) throws IOException {
        InputStream open = context.getAssets().open(str);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(open, null, options);
        int inSampleSize = getInSampleSize(options.outWidth, options.outHeight, i, i2);
        open.close();
        return inSampleSize;
    }

    public static int getInSampleFromFile(String str, int i, int i2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(new File(str));
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(fileInputStream, null, options);
        int inSampleSize = getInSampleSize(options.outWidth, options.outHeight, i, i2);
        fileInputStream.close();
        return inSampleSize;
    }

    public static int getInSampleFromPath(String str, Context context, int i, int i2) throws Exception {
        int[] dimensionsFromPath = getDimensionsFromPath(str);
        return getInSampleSize(dimensionsFromPath[0], dimensionsFromPath[1], i, i2);
    }

    public static int getInSampleSize(int i, int i2, int i3, int i4) {
        return NearestPowerOf2LessThan32(imgContainerScaleFactor(i, i2, i3, i4));
    }

    public static PointF[] getPointOnCurve(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4, float f) {
        PointF pointAlongSegment = pointAlongSegment(pointF, pointF2, f);
        PointF pointAlongSegment2 = pointAlongSegment(pointF2, pointF3, f);
        PointF pointAlongSegment3 = pointAlongSegment(pointF3, pointF4, f);
        PointF pointAlongSegment4 = pointAlongSegment(pointAlongSegment, pointAlongSegment2, f);
        PointF pointAlongSegment5 = pointAlongSegment(pointAlongSegment2, pointAlongSegment3, f);
        return new PointF[]{pointAlongSegment, pointAlongSegment3, pointAlongSegment4, pointAlongSegment5, pointAlongSegment(pointAlongSegment4, pointAlongSegment5, f)};
    }

    public static String getRandomString(int i) {
        StringBuilder sb = new StringBuilder(i);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".charAt(rnd.nextInt(abLength)));
        }
        return sb.toString();
    }

    public static RectF getRectFromCircle(float f, float f2, float f3) {
        float f4 = f3 * 0.5f;
        return new RectF(f - f4, f2 - f4, f + f4, f2 + f4);
    }

    public static PointF getSelected(float f, float f2, float f3, PointF pointF, PointF... pointFArr) {
        for (PointF pointF2 : pointFArr) {
            if (dist(pointF2, f, f2) < f3) {
                return pointF2;
            }
        }
        return pointF;
    }

    public static void growRectBounded(Rect rect, Rect rect2, int i) {
        rect.left = Math.max(rect.left - i, rect2.left);
        rect.top = Math.max(rect.top - i, rect2.top);
        rect.right = Math.min(rect.right + i, rect2.right);
        rect.bottom = Math.min(rect.bottom + i, rect2.bottom);
    }

    public static float imgContainerScaleFactor(int i, int i2, int i3, int i4) {
        return Math.max(1.0f, Math.min(i / i3, i2 / i4));
    }

    public static boolean inRange(float f, float f2, float f3, boolean z) {
        return !z ? f <= f2 || f >= f3 : f < f2 || f > f3;
    }

    public static boolean intersect(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        return (orientation(pointF, pointF2, pointF3) == orientation(pointF, pointF2, pointF4) || orientation(pointF3, pointF4, pointF) == orientation(pointF3, pointF4, pointF2)) ? false : true;
    }

    public static int invertColor(int i) {
        return Color.argb(Color.alpha(i), 255 - Color.red(i), 255 - Color.green(i), 255 - Color.blue(i));
    }

    public static Path invertPath(Path path, float f, float f2, float f3, float f4) {
        return invertPath((ArrayList<Path>) new ArrayList(Collections.singletonList(path)), f, f2, f3, f4);
    }

    public static Path invertPath(ArrayList<Path> arrayList, float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.setFillType(Path.FillType.EVEN_ODD);
        Iterator<Path> it = arrayList.iterator();
        while (it.hasNext()) {
            path.addPath(it.next());
        }
        float f5 = 1;
        path.addRect(f - f5, f2 - f5, f3 + f5, f4 + f5, Path.Direction.CCW);
        return path;
    }

    public static boolean isDarkColor(int i) {
        int red = Color.red(i);
        return (((float) Color.blue(i)) * 0.114f) + ((((float) Color.green(i)) * 0.587f) + (((float) red) * 0.299f)) < 186.0f;
    }

    public static boolean isValidImage(Bitmap bitmap) {
        return bitmap != null && bitmap.getWidth() > 0 && bitmap.getHeight() > 0;
    }

    public static boolean isValidRect(Rect rect) {
        return rect != null && rect.left < rect.right && rect.top < rect.bottom;
    }

    public static boolean isValidRect(RectF rectF) {
        return rectF != null && rectF.left < rectF.right && rectF.top < rectF.bottom;
    }

    public static Bitmap loadBitmap(String str, int i) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(new File(str));
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (i >= 2) {
            options.inSampleSize = i;
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(fileInputStream, null, options);
        fileInputStream.close();
        return decodeStream;
    }

    public static Bitmap loadBitmapFromAsset(Context context, String str, int i) throws IOException {
        InputStream open = context.getAssets().open(str);
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (i >= 2) {
            options.inSampleSize = i;
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(open, null, options);
        open.close();
        return decodeStream;
    }

    public static int max3(int i, int i2, int i3) {
        if (i > i2) {
            if (i > i3) {
                return i;
            }
        } else if (i2 > i3) {
            return i2;
        }
        return i3;
    }

    public static int maxArr(int[] iArr) {
        if (iArr.length == 0) {
            return 0;
        }
        int i = iArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            int i3 = iArr[i2];
            if (i3 > i) {
                i = i3;
            }
        }
        return i;
    }

    public static int maxId(float... fArr) {
        if (fArr.length == 0) {
            return 0;
        }
        float f = fArr[0];
        int i = 0;
        for (int i2 = 0; i2 < fArr.length; i2++) {
            float f2 = fArr[i2];
            if (f2 > f) {
                i = i2;
                f = f2;
            }
        }
        return i;
    }

    public static int min3Id(float f, float f2, float f3) {
        if (f >= f2 || f >= f3) {
            return f2 < f3 ? 2 : 3;
        }
        return 1;
    }

    public static float minOrMax(float f, float f2, boolean z) {
        return z ? Math.min(f, f2) : Math.max(f, f2);
    }

    public static int normalizeAngle(float f) {
        int floor = ((((int) Math.floor(f)) % 360) + 360) % 360;
        return floor > 180 ? floor - 360 : floor;
    }

    public static int orientation(PointF pointF, PointF pointF2, PointF pointF3) {
        float f = pointF2.y;
        float f2 = f - pointF.y;
        float f3 = pointF3.x;
        float f4 = pointF2.x;
        double d = ((f3 - f4) * f2) - ((pointF3.y - f) * (f4 - pointF.x));
        if (d == 0.0d) {
            return 0;
        }
        return d > 0.0d ? 1 : 2;
    }

    public static PointF pointAlongSegment(float f, float f2, float f3, float f4, float f5) {
        return pointAlongSegment(f, f2, f3, f4, f5, 0.0f);
    }

    public static PointF pointAlongSegment(float f, float f2, float f3, float f4, float f5, float f6) {
        float abs = Math.abs(f6);
        PointF pointF = new PointF(f3 - f, f4 - f2);
        PointF pointF2 = new PointF((pointF.x * f5) + f, (pointF.y * f5) + f2);
        float f7 = pointF.x;
        float f8 = 0.0f;
        if (f7 != 0.0f) {
            float f9 = pointF.y / f7;
            float sqrt = (float) (abs / Math.sqrt((f9 * f9) + 1.0f));
            abs = Math.abs(f9 * sqrt);
            f8 = sqrt;
        }
        pointF2.offset(Math.signum(pointF.x) * f8, Math.signum(pointF.y) * abs);
        return pointF2;
    }

    public static PointF pointAlongSegment(PointF pointF, PointF pointF2, float f) {
        return pointAlongSegment(pointF, pointF2, f, 0.0f);
    }

    public static PointF pointAlongSegment(PointF pointF, PointF pointF2, float f, float f2) {
        return pointAlongSegment(pointF.x, pointF.y, pointF2.x, pointF2.y, f, f2);
    }

    public static void putEmptyFileHere(File file, String str) {
        if (file != null && file.exists() && file.isDirectory()) {
            try {
                new File(file, str).createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static void putNoMediaHere(File file) {
        if (file != null && file.isDirectory() && file.exists()) {
            try {
                new File(file, ".nomedia").createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static float pxToDp(int i) {
        return i / Resources.getSystem().getDisplayMetrics().density;
    }

    public static ArrayList<String> rectFToArr(RectF rectF) {
        return rectF == null ? new ArrayList<>() : new ArrayList<>(Arrays.asList(String.valueOf(rectF.left), String.valueOf(rectF.top), String.valueOf(rectF.right), String.valueOf(rectF.bottom)));
    }

    public static File returnAvailableFile(File file, String str) {
        String str2 = "";
        int i = 0;
        while (new File(file, suffixifyFileName(str, str2)).exists()) {
            i++;
            str2 = String.valueOf(i);
        }
        return new File(file, suffixifyFileName(str, str2));
    }

    public static PointF rotateAroundDegrees(PointF pointF, PointF pointF2, float f) {
        return rotateAroundRadians(pointF, pointF2, Math.toRadians(f));
    }

    public static void rotateAroundFloat(float f, float f2, float f3, float f4, int i, float[] fArr) {
        if (i == 0) {
            fArr[0] = f;
            fArr[1] = f2;
            return;
        }
        double radians = Math.toRadians(i);
        double cos = Math.cos(radians);
        double sin = Math.sin(radians);
        double d = f - f3;
        double d2 = f2 - f4;
        fArr[0] = ((float) ((d * cos) - (d2 * sin))) + f3;
        fArr[1] = ((float) ((d2 * cos) + (d * sin))) + f4;
    }

    public static PointF rotateAroundRadians(PointF pointF, PointF pointF2, double d) {
        PointF pointF3 = new PointF(pointF.x, pointF.y);
        pointF3.offset(-pointF2.x, -pointF2.y);
        double cos = Math.cos(d);
        double sin = Math.sin(d);
        float f = pointF3.x;
        float f2 = pointF3.y;
        pointF3.set((float) ((f * cos) - (f2 * sin)), (float) ((f2 * cos) + (f * sin)));
        pointF3.offset(pointF2.x, pointF2.y);
        return pointF3;
    }

    public static RectF rotateRect(RectF rectF, int i) {
        RectF rectF2 = new RectF(rectF);
        Matrix matrix = new Matrix();
        matrix.setRotate(i, rectF.centerX(), rectF.centerY());
        matrix.mapRect(rectF2);
        return rectF2;
    }

    public static void sampleSegment(float f, float f2, float f3, float f4, float[] fArr) {
        float length = fArr.length;
        if (f >= f3) {
            throw new IllegalArgumentException("x0 must be < x1");
        }
        if (fArr.length < 2) {
            throw new IllegalArgumentException("dest length must be >= 2");
        }
        float abs = Math.abs(f - f3) / (length - 1.0f);
        float f5 = (f4 - f2) / (f3 - f);
        float f6 = f2 - (f5 * f);
        for (int i = 0; i < fArr.length; i++) {
            fArr[i] = (((i * abs) + f) * f5) + f6;
        }
    }

    public static void saveDebugBitmap(Bitmap bitmap, String str) {
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(Environment.getExternalStorageDirectory().getAbsoluteFile() + File.separator + str)));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static void saveFile(Bitmap bitmap, File file, int i) {
        Bitmap.CompressFormat compressFormat;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            if (i != 1) {
                if (i == 2) {
                    compressFormat = Bitmap.CompressFormat.JPEG;
                }
                fileOutputStream.close();
            }
            compressFormat = Bitmap.CompressFormat.PNG;
            bitmap.compress(compressFormat, 100, fileOutputStream);
            fileOutputStream.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public static JSONArray shuffleJsonArray(JSONArray jSONArray) throws JSONException {
        Random random = new Random();
        random.setSeed(System.currentTimeMillis());
        int length = jSONArray.length();
        while (true) {
            length--;
            if (length < 0) {
                return jSONArray;
            }
            int nextInt = random.nextInt(length + 1);
            Object obj = jSONArray.get(nextInt);
            jSONArray.put(nextInt, jSONArray.get(length));
            jSONArray.put(length, obj);
        }
    }

    public static float[] solveQuadratic(float f, float f2, float f3) {
        float f4 = (f2 * f2) - ((4.0f * f) * f3);
        if (f == 0.0f) {
            return f2 != 0.0f ? new float[]{(-f3) / f2} : new float[0];
        }
        if (f4 < 0.0f) {
            return new float[0];
        }
        if (f4 == 0.0f) {
            return new float[]{(-f2) / (f * 2.0f)};
        }
        double d = -f2;
        double d2 = f4;
        double d3 = f * 2.0f;
        return new float[]{(float) ((d - Math.sqrt(d2)) / d3), (float) ((Math.sqrt(d2) + d) / d3)};
    }

    public static float spToPx(int i) {
        return TypedValue.applyDimension(2, i, Resources.getSystem().getDisplayMetrics());
    }

    public static int strToInt(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return i;
        }
    }

    public static boolean stringToBool(String str) {
        return !str.isEmpty();
    }

    public static Path.Direction stringToDirection(String str) {
        return str.isEmpty() ? Path.Direction.CW : Path.Direction.CCW;
    }

    public static int stripAlpha(int i) {
        return Color.argb(255, Color.red(i), Color.green(i), Color.blue(i));
    }

    public static String suffixifyFileName(String str, String str2) {
        String fileExtension = getFileExtension(str);
        StringBuilder sb = new StringBuilder();
        sb.append(getFileNameNoExtension(str));
        sb.append(str2);
        if (!fileExtension.equals("")) {
            fileExtension = ".".concat(fileExtension);
        }
        sb.append(fileExtension);
        return sb.toString();
    }

    public static int touchedRectSide(PointF pointF, RectF rectF, int i) {
        RectF rectF2 = new RectF(rectF);
        RectF rectF3 = new RectF(rectF);
        float f = i * (-2);
        rectF2.inset(f, f);
        float f2 = i * 2;
        rectF3.inset(f2, f2);
        if (rectF3.contains(pointF.x, pointF.y)) {
            return -1;
        }
        float f3 = pointF.x;
        if (f3 >= rectF2.left && f3 <= rectF3.left) {
            return 0;
        }
        float f4 = pointF.y;
        if (f4 >= rectF2.top && f4 <= rectF3.top) {
            return 1;
        }
        if (f3 < rectF3.right || f3 > rectF2.right) {
            return (f4 < rectF3.bottom || f4 > rectF2.bottom) ? -2 : 3;
        }
        return 2;
    }

    public static void translatePointAlongVector(PointF pointF, PointF pointF2, PointF pointF3, float f) {
        PointF pointF4 = new PointF(pointF3.x - pointF2.x, pointF3.y - pointF2.y);
        float abs = Math.abs(f);
        float f2 = pointF4.x;
        float f3 = 0.0f;
        if (f2 != 0.0f) {
            float f4 = pointF4.y / f2;
            float sqrt = (float) (abs / Math.sqrt((f4 * f4) + 1.0f));
            float abs2 = Math.abs(f4 * sqrt);
            f3 = sqrt;
            abs = abs2;
        }
        pointF.offset(Math.signum(pointF4.x) * f3, Math.signum(pointF4.y) * abs);
    }

    public static void unionRects(RectF rectF, RectF rectF2) {
        if (rectF == null || rectF2 == null) {
            return;
        }
        if (rectF2.width() == 0.0f && rectF2.height() == 0.0f) {
            return;
        }
        if (rectF.width() == 0.0f && rectF.height() == 0.0f) {
            rectF.set(rectF2);
        } else {
            rectF.set(Math.min(rectF.left, rectF2.left), Math.min(rectF.top, rectF2.top), Math.max(rectF.right, rectF2.right), Math.max(rectF.bottom, rectF2.bottom));
        }
    }

    public static boolean unzipFile(File file, File file2) {
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(file)));
            byte[] bArr = new byte[2048];
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    return true;
                }
                File file3 = new File(file2, nextEntry.getName());
                File parentFile = nextEntry.isDirectory() ? file3 : file3.getParentFile();
                if (parentFile.isDirectory() || parentFile.mkdirs()) {
                    if (!nextEntry.isDirectory()) {
                        FileOutputStream fileOutputStream = new FileOutputStream(file3);
                        while (true) {
                            int read = zipInputStream.read(bArr);
                            if (read != -1) {
                                fileOutputStream.write(bArr, 0, read);
                            }
                        }
                    }
                }
            }
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean zipFolder(String str, String str2) {
        try {
            File file = new File(str);
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(str2)));
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory()) {
                    zipSubFolder(zipOutputStream, file2, file2.getParent().length());
                } else {
                    byte[] bArr = new byte[2048];
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file2.getAbsolutePath()), 2048);
                    zipOutputStream.putNextEntry(new ZipEntry(file2.getName()));
                    while (true) {
                        int read = bufferedInputStream.read(bArr, 0, 2048);
                        if (read != -1) {
                            zipOutputStream.write(bArr, 0, read);
                        }
                    }
                }
            }
            zipOutputStream.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private static void zipSubFolder(ZipOutputStream zipOutputStream, File file, int i) throws Exception {
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                zipSubFolder(zipOutputStream, file2, i);
            } else {
                byte[] bArr = new byte[2048];
                String absolutePath = file2.getAbsolutePath();
                String substring = absolutePath.substring(i);
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(absolutePath), 2048);
                zipOutputStream.putNextEntry(new ZipEntry(substring));
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, 2048);
                    if (read == -1) {
                        break;
                    } else {
                        zipOutputStream.write(bArr, 0, read);
                    }
                }
                bufferedInputStream.close();
            }
        }
    }
}
