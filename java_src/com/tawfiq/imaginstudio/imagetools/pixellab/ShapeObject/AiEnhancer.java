package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import com.arasthel.asyncjob.AsyncJob;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.ImageSource;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.textContainer;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AiEnhancer {

    /* loaded from: classes.dex */
    public class Task implements AsyncJob.OnBackgroundJob, Runnable {
        private MainActivity act;
        private Bitmap bmp;
        private ProgressDialog pd;
        private String resultPath;
        private ShapeComponent shape;

        public Task(MainActivity mainActivity, ShapeComponent shapeComponent, Bitmap bitmap, ProgressDialog progressDialog) {
            this.act = mainActivity;
            this.shape = shapeComponent;
            this.bmp = bitmap;
            this.pd = progressDialog;
        }

        @Override // com.arasthel.asyncjob.AsyncJob.OnBackgroundJob
        public void doOnBackground() {
            try {
                Bitmap processEnhance = AiEnhancer.processEnhance(this.bmp);
                if (processEnhance != null) {
                    File cacheFile = commonFuncs.getCacheFile(commonFuncs.generateName("hd_img"), this.act);
                    FileOutputStream fileOutputStream = new FileOutputStream(cacheFile);
                    processEnhance.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    this.resultPath = cacheFile.getAbsolutePath();
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
            if (this.resultPath == null) {
                this.act.msg("حدث خطأ أثناء معالجة الصورة");
                return;
            }
            this.act.saveCurrShapeState(this.shape);
            ImageSource imageSource = new ImageSource(this.resultPath);
            ShapeComponent shapeComponent = this.shape;
            shapeComponent.editSrc(ShapeComponent.SHAPE_TYPE_GALLERY, imageSource, false, shapeComponent.width_f, shapeComponent.height_f);
            this.act.msg("تم رفع جودة ودقة الصورة بنجاح!");
        }
    }

    public static int calcChannel(int i, int i2, int i3, int i4, int i5) {
        int i6 = (((((i & 255) * 5) - (i2 & 255)) - (i3 & 255)) - (i4 & 255)) - (i5 & 255);
        if (i6 > 255) {
            i6 = 255;
        }
        if (i6 < 0) {
            return 0;
        }
        return i6;
    }

    public static Bitmap callGradioSpace(Bitmap bitmap, String str, String str2, String str3) {
        String str4;
        String httpPostJson;
        String optString;
        try {
            String uploadFileToGradio = uploadFileToGradio(bitmap, str, "/gradio_api/upload");
            boolean z = true;
            if (uploadFileToGradio == null) {
                uploadFileToGradio = uploadFileToGradio(bitmap, str, "/upload");
                z = false;
                if (uploadFileToGradio == null) {
                    return null;
                }
            }
            str4 = str + (z ? "/gradio_api/call/" : "/call/") + str2;
            StringBuilder sb = new StringBuilder("{\"data\":[{\"path\":\"");
            sb.append(uploadFileToGradio);
            sb.append("\",\"meta\":{\"_type\":\"gradio.FileData\"}}");
            if (str3 != null) {
                sb.append(str3);
            }
            sb.append("]}");
            httpPostJson = httpPostJson(str4, sb.toString());
        } catch (Exception unused) {
        }
        if (httpPostJson == null || (optString = new JSONObject(httpPostJson).optString("event_id", null)) == null) {
            return null;
        }
        String readGradioResultUrl = readGradioResultUrl(str4 + "/" + optString, str);
        if (readGradioResultUrl != null) {
            return downloadBitmap(readGradioResultUrl);
        }
        return null;
    }

    public static Bitmap downloadBitmap(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0");
            httpURLConnection.setConnectTimeout(20000);
            httpURLConnection.setReadTimeout(20000);
            InputStream inputStream = httpURLConnection.getInputStream();
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
            inputStream.close();
            httpURLConnection.disconnect();
            return decodeStream;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void enhance(MainActivity mainActivity) {
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
        progressDialog.setMessage("جاري تحسين ورفع جودة الصورة بالذكاء الاصطناعي...");
        progressDialog.setCancelable(false);
        progressDialog.show();
        AsyncJob.doInBackground(new Task(mainActivity, currentShape, currBitmap, progressDialog));
    }

    public static String httpPostJson(String str, String str2) {
        HttpURLConnection httpURLConnection;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setConnectTimeout(20000);
            httpURLConnection.setReadTimeout(20000);
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(str2.getBytes("UTF-8"));
            outputStream.flush();
            outputStream.close();
        } catch (Exception unused) {
        }
        if (httpURLConnection.getResponseCode() != 200) {
            httpURLConnection.disconnect();
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                bufferedReader.close();
                httpURLConnection.disconnect();
                return sb.toString();
            }
            sb.append(readLine);
        }
    }

    public static Bitmap localSuperRes(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap createScaledBitmap = Math.max(width, height) < 1200 ? Bitmap.createScaledBitmap(bitmap, width * 2, height * 2, true) : bitmap.copy(Bitmap.Config.ARGB_8888, true);
        int width2 = createScaledBitmap.getWidth();
        int height2 = createScaledBitmap.getHeight();
        int i = width2 * height2;
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        createScaledBitmap.getPixels(iArr, 0, width2, 0, 0, width2, height2);
        for (int i2 = 0; i2 < height2; i2++) {
            for (int i3 = 0; i3 < width2; i3++) {
                int i4 = (i2 * width2) + i3;
                int i5 = iArr[i4];
                if (i2 > 0 && i2 < height2 - 1 && i3 > 0 && i3 < width2 - 1) {
                    i5 = sharpenPixel(i5, iArr[i4 - width2], iArr[i4 + width2], iArr[i4 - 1], iArr[i4 + 1]);
                }
                iArr2[i4] = i5;
            }
        }
        createScaledBitmap.setPixels(iArr2, 0, width2, 0, 0, width2, height2);
        return createScaledBitmap;
    }

    public static Bitmap processEnhance(Bitmap bitmap) {
        Bitmap bitmap2;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int max = Math.max(width, height);
        if (max > 800) {
            float f = 800 / max;
            bitmap2 = Bitmap.createScaledBitmap(bitmap, (int) (width * f), (int) (height * f), true);
        } else {
            bitmap2 = bitmap;
        }
        Bitmap callGradioSpace = callGradioSpace(bitmap2, "https://doevent-face-real-esrgan.hf.space", "infer", null);
        if (callGradioSpace != null) {
            return callGradioSpace;
        }
        Bitmap callGradioSpace2 = callGradioSpace(bitmap2, "https://finegrain-finegrain-image-enhancer.hf.space", "process", ", \"\", 2, 0.5, 0.5, 1.0, \"\", 42");
        return callGradioSpace2 != null ? callGradioSpace2 : localSuperRes(bitmap);
    }

    public static String readGradioResultUrl(String str, String str2) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0");
            httpURLConnection.setConnectTimeout(20000);
            httpURLConnection.setReadTimeout(60000);
            if (httpURLConnection.getResponseCode() == 200) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        break;
                    }
                    if (readLine.startsWith("data:")) {
                        String trim = readLine.substring(5).trim();
                        if (trim.startsWith("[")) {
                            JSONArray jSONArray = new JSONArray(trim);
                            if (jSONArray.length() > 0) {
                                Object obj = jSONArray.get(0);
                                boolean z = obj instanceof JSONArray;
                                Object obj2 = obj;
                                if (z) {
                                    JSONArray jSONArray2 = (JSONArray) obj;
                                    int length = jSONArray2.length();
                                    obj2 = jSONArray2;
                                    if (length > 1) {
                                        obj2 = jSONArray2.get(1);
                                    }
                                }
                                if (obj2 instanceof JSONObject) {
                                    JSONObject jSONObject = (JSONObject) obj2;
                                    String optString = jSONObject.optString("url", null);
                                    if (optString != null) {
                                        bufferedReader.close();
                                        httpURLConnection.disconnect();
                                        return optString;
                                    }
                                    String optString2 = jSONObject.optString("path", null);
                                    if (optString2 != null) {
                                        bufferedReader.close();
                                        httpURLConnection.disconnect();
                                        return str2 + "/gradio_api/file=" + optString2;
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            httpURLConnection.disconnect();
        } catch (Exception unused) {
        }
        return null;
    }

    public static int sharpenPixel(int i, int i2, int i3, int i4, int i5) {
        return Color.argb((i >> 24) & 255, calcChannel(i >> 16, i2 >> 16, i3 >> 16, i4 >> 16, i5 >> 16), calcChannel(i >> 8, i2 >> 8, i3 >> 8, i4 >> 8, i5 >> 8), calcChannel(i, i2, i3, i4, i5));
    }

    public static String uploadFileToGradio(Bitmap bitmap, String str, String str2) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str + str2).openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setConnectTimeout(20000);
            httpURLConnection.setReadTimeout(60000);
            httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data; boundary=----GradioUploadBoundary7MA4YWxk");
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write("------GradioUploadBoundary7MA4YWxk\r\nContent-Disposition: form-data; name=\"files\"; filename=\"image.png\"\r\nContent-Type: image/png\r\n\r\n".getBytes("UTF-8"));
            outputStream.write(byteArray);
            outputStream.write("\r\n------GradioUploadBoundary7MA4YWxk--\r\n".getBytes("UTF-8"));
            outputStream.flush();
            outputStream.close();
            if (httpURLConnection.getResponseCode() == 200) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                httpURLConnection.disconnect();
                if (readLine != null) {
                    JSONArray jSONArray = new JSONArray(readLine);
                    if (jSONArray.length() > 0) {
                        return jSONArray.getString(0);
                    }
                }
            } else {
                httpURLConnection.disconnect();
            }
        } catch (Exception unused) {
        }
        return null;
    }
}
