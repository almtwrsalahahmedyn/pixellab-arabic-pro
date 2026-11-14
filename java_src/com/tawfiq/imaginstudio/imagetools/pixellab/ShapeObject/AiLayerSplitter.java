package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.Base64;
import com.arasthel.asyncjob.AsyncJob;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.ImageSource;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.textContainer;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AiLayerSplitter {

    /* loaded from: classes.dex */
    public class Task implements AsyncJob.OnBackgroundJob, Runnable {
        private MainActivity act;
        private Bitmap bmp;
        private String cleanImgPath;
        private ProgressDialog pd;
        private ShapeComponent shape;
        private ArrayList<Bundle> textItems = new ArrayList<>();

        public Task(MainActivity mainActivity, ShapeComponent shapeComponent, Bitmap bitmap, ProgressDialog progressDialog) {
            this.act = mainActivity;
            this.shape = shapeComponent;
            this.bmp = bitmap;
            this.pd = progressDialog;
        }

        public static void forceSetText(MainActivity mainActivity, TextComponent textComponent, String str) {
            String returnText;
            if (textComponent == null || str == null) {
                return;
            }
            try {
                MainActivity.AnonymousClass28 anonymousClass28 = new MainActivity.AnonymousClass28();
                for (Method method : anonymousClass28.getClass().getDeclaredMethods()) {
                    method.setAccessible(true);
                    method.invoke(anonymousClass28, str);
                }
            } catch (Throwable unused) {
            }
            try {
                returnText = textComponent.returnText();
            } catch (Throwable unused2) {
            }
            if (str.equals(returnText)) {
                return;
            }
            Bundle saveToBundle = textComponent.saveToBundle();
            if (saveToBundle != null) {
                for (String str2 : saveToBundle.keySet()) {
                    Object obj = saveToBundle.get(str2);
                    if ((obj instanceof String) && (returnText == null || obj.equals(returnText))) {
                        saveToBundle.putString(str2, str);
                    }
                }
                textComponent.applyBundle(saveToBundle, true, false);
                if (str.equals(textComponent.returnText())) {
                    return;
                } else {
                    textComponent.applyBundle(saveToBundle, true, true);
                }
            }
            try {
                if (str.equals(textComponent.returnText())) {
                    return;
                }
                for (Method method2 : textComponent.getClass().getDeclaredMethods()) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    if (parameterTypes.length == 1 && parameterTypes[0] == String.class && method2.getReturnType() == Void.TYPE) {
                        method2.setAccessible(true);
                        method2.invoke(textComponent, str);
                        if (str.equals(textComponent.returnText())) {
                            return;
                        }
                    }
                }
            } catch (Throwable unused3) {
            }
        }

        @Override // com.arasthel.asyncjob.AsyncJob.OnBackgroundJob
        public void doOnBackground() {
            try {
                Bitmap processImageAndExtract = AiLayerSplitter.processImageAndExtract(this.bmp, this.textItems);
                if (!this.textItems.isEmpty() && processImageAndExtract != null) {
                    File cacheFile = commonFuncs.getCacheFile(commonFuncs.generateName("cleaned_bg"), this.act);
                    FileOutputStream fileOutputStream = new FileOutputStream(cacheFile);
                    processImageAndExtract.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    this.cleanImgPath = cacheFile.getAbsolutePath();
                }
            } catch (Exception unused) {
            }
            this.act.runOnUiThread(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.pd.dismiss();
            } catch (Exception unused) {
            }
            ArrayList<Bundle> arrayList = this.textItems;
            if (arrayList == null || arrayList.isEmpty()) {
                this.act.msg("لم يتم العثور على نصوص واضحة، تأكد من اتصال الإنترنت");
                return;
            }
            if (this.cleanImgPath != null) {
                this.act.saveCurrShapeState(this.shape);
                ImageSource imageSource = new ImageSource(this.cleanImgPath);
                ShapeComponent shapeComponent = this.shape;
                shapeComponent.editSrc(ShapeComponent.SHAPE_TYPE_GALLERY, imageSource, false, shapeComponent.width_f, shapeComponent.height_f);
            }
            ShapeComponent shapeComponent2 = this.shape;
            float width = shapeComponent2.width_f / this.bmp.getWidth();
            float height = shapeComponent2.height_f / this.bmp.getHeight();
            Iterator<Bundle> it = this.textItems.iterator();
            float f = 80.0f;
            while (it.hasNext()) {
                Bundle next = it.next();
                String string = next.getString("t");
                int i = next.getInt("c", -1);
                MainActivity mainActivity = this.act;
                textContainer textcontainer = mainActivity.textContain;
                textcontainer.addNewText(i);
                TextComponent currentText = textcontainer.getCurrentText();
                if (currentText != null) {
                    forceSetText(mainActivity, currentText, string);
                    if (next.containsKey("x")) {
                        currentText.setX(this.shape.getX() + (next.getFloat("x") * width));
                        currentText.setY(this.shape.getY() + (next.getFloat("y") * height));
                    } else {
                        currentText.setY(f);
                        f += 90.0f;
                    }
                    currentText.fullRedraw();
                }
            }
            this.act.msg("تم استخراج النصوص ومسحها من الصورة الأصلية بنجاح!");
        }
    }

    public static void callOcrAndErase(String str, String str2, float f, Bitmap bitmap, ArrayList<Bundle> arrayList) {
        try {
            byte[] bytes = ("apikey=K85869745888957&isOverlayRequired=true&scale=true&OCREngine=" + str2 + "&base64Image=" + URLEncoder.encode(str, "UTF-8")).getBytes("UTF-8");
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://api.ocr.space/parse/image").openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setConnectTimeout(20000);
            httpURLConnection.setReadTimeout(20000);
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bytes);
            outputStream.flush();
            outputStream.close();
            if (httpURLConnection.getResponseCode() == 200) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"));
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    } else {
                        sb.append(readLine);
                    }
                }
                bufferedReader.close();
                JSONArray optJSONArray = new JSONObject(sb.toString()).optJSONArray("ParsedResults");
                if (optJSONArray != null && optJSONArray.length() > 0) {
                    parseOcrResult(optJSONArray.getJSONObject(0), f, bitmap, arrayList);
                }
            }
            httpURLConnection.disconnect();
        } catch (Exception unused) {
        }
    }

    public static int eraseWordsFromCanvas(Bitmap bitmap, Canvas canvas, Paint paint, JSONArray jSONArray, float f) {
        int i = -16777216;
        try {
            int length = jSONArray.length();
            int i2 = 0;
            int i3 = 0;
            while (i3 < length) {
                JSONObject jSONObject = jSONArray.getJSONObject(i3);
                float optDouble = ((float) jSONObject.optDouble("Left")) / f;
                float optDouble2 = ((float) jSONObject.optDouble("Top")) / f;
                float optDouble3 = ((float) jSONObject.optDouble("Width")) / f;
                float optDouble4 = ((float) jSONObject.optDouble("Height")) / f;
                int pixel = bitmap.getPixel(Math.max(i2, Math.min(((int) optDouble) + 2, bitmap.getWidth() - 1)), Math.max(i2, Math.min(((int) optDouble2) - 3, bitmap.getHeight() - 1)));
                i = bitmap.getPixel(Math.max(i2, Math.min((int) ((optDouble3 / 2.0f) + optDouble), bitmap.getWidth() - 1)), Math.max(0, Math.min((int) ((optDouble4 / 2.0f) + optDouble2), bitmap.getHeight() - 1)));
                paint.setColor(pixel);
                canvas.drawRect(new RectF(optDouble - 3.0f, optDouble2 - 3.0f, optDouble + optDouble3 + 3.0f, optDouble2 + optDouble4 + 3.0f), paint);
                i3++;
                i2 = 0;
            }
        } catch (Exception unused) {
        }
        return i;
    }

    public static void parseOcrResult(JSONObject jSONObject, float f, Bitmap bitmap, ArrayList<Bundle> arrayList) {
        JSONArray optJSONArray;
        try {
            Canvas canvas = new Canvas(bitmap);
            Paint paint = new Paint(1);
            paint.setStyle(Paint.Style.FILL);
            JSONObject optJSONObject = jSONObject.optJSONObject("TextOverlay");
            if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("Lines")) != null) {
                int length = optJSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                    String trim = jSONObject2.optString("LineText", "").trim();
                    JSONArray optJSONArray2 = jSONObject2.optJSONArray("Words");
                    if (trim.length() > 0 && optJSONArray2 != null && optJSONArray2.length() > 0) {
                        JSONObject jSONObject3 = optJSONArray2.getJSONObject(0);
                        float optDouble = ((float) jSONObject3.optDouble("Left")) / f;
                        float optDouble2 = ((float) jSONObject3.optDouble("Top")) / f;
                        int eraseWordsFromCanvas = eraseWordsFromCanvas(bitmap, canvas, paint, optJSONArray2, f);
                        Bundle bundle = new Bundle();
                        bundle.putString("t", trim);
                        bundle.putFloat("x", optDouble);
                        bundle.putFloat("y", optDouble2);
                        bundle.putInt("c", eraseWordsFromCanvas);
                        arrayList.add(bundle);
                    }
                }
            }
            if (arrayList.isEmpty()) {
                for (String str : jSONObject.optString("ParsedText", "").split("\\r?\\n")) {
                    String trim2 = str.trim();
                    if (trim2.length() > 0) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("t", trim2);
                        arrayList.add(bundle2);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public static Bitmap processImageAndExtract(Bitmap bitmap, ArrayList<Bundle> arrayList) {
        Bitmap bitmap2;
        Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        try {
            int width = copy.getWidth();
            int height = copy.getHeight();
            int max = Math.max(width, height);
            float f = 1.0f;
            if (max > 1000) {
                f = 1000 / max;
                bitmap2 = Bitmap.createScaledBitmap(copy, (int) (width * f), (int) (height * f), true);
            } else {
                bitmap2 = copy;
            }
            Bitmap createBitmap = Bitmap.createBitmap(bitmap2.getWidth(), bitmap2.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            canvas.drawColor(-1);
            canvas.drawBitmap(bitmap2, 0.0f, 0.0f, (Paint) null);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            createBitmap.compress(Bitmap.CompressFormat.JPEG, 85, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            createBitmap.recycle();
            String str = "data:image/jpeg;base64," + Base64.encodeToString(byteArray, 2);
            callOcrAndErase(str, "2&language=eng", f, copy, arrayList);
            if (arrayList.isEmpty()) {
                callOcrAndErase(str, "1&language=ara", f, copy, arrayList);
            }
        } catch (Exception unused) {
        }
        return copy;
    }

    public static void splitToLayers(MainActivity mainActivity) {
        ShapeComponent currentShape;
        textContainer textcontainer = mainActivity.textContain;
        if (textcontainer == null || (currentShape = textcontainer.getCurrentShape()) == null) {
            return;
        }
        Bitmap currBitmap = currentShape.getCurrBitmap();
        if (currBitmap == null) {
            mainActivity.msg("يرجى تحديد صورة أولاً");
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(mainActivity);
        progressDialog.setMessage("جاري استخراج النصوص ومسحها من الصورة الأصلية...");
        progressDialog.setCancelable(false);
        progressDialog.show();
        AsyncJob.doInBackground(new Task(mainActivity, currentShape, currBitmap, progressDialog));
    }
}
