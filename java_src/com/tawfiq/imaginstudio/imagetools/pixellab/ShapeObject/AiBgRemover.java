package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
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
public class AiBgRemover {

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
                Bitmap uploadAndRemoveBg = AiBgRemover.uploadAndRemoveBg(this.bmp);
                if (uploadAndRemoveBg != null) {
                    File cacheFile = commonFuncs.getCacheFile(commonFuncs.generateName("nobg_img"), this.act);
                    FileOutputStream fileOutputStream = new FileOutputStream(cacheFile);
                    uploadAndRemoveBg.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
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
                this.act.msg("فشل الاتصال بالخادم");
                return;
            }
            this.act.saveCurrShapeState(this.shape);
            ImageSource imageSource = new ImageSource(this.resultPath);
            ShapeComponent shapeComponent = this.shape;
            shapeComponent.editSrc(ShapeComponent.SHAPE_TYPE_GALLERY, imageSource, false, shapeComponent.width_f, shapeComponent.height_f);
            this.act.msg("تم إزالة الخلفية بنجاح!");
        }
    }

    public static Bitmap callGradioSpace(Bitmap bitmap, String str, String str2) {
        String str3;
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
            str3 = str + (z ? "/gradio_api/call/" : "/call/") + str2;
            httpPostJson = httpPostJson(str3, "{\"data\":[{\"path\":\"" + uploadFileToGradio + "\",\"meta\":{\"_type\":\"gradio.FileData\"}}]}");
        } catch (Exception unused) {
        }
        if (httpPostJson == null || (optString = new JSONObject(httpPostJson).optString("event_id", null)) == null) {
            return null;
        }
        String readGradioResultUrl = readGradioResultUrl(str3 + "/" + optString, str);
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

    public static void removeBg(MainActivity mainActivity) {
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
        progressDialog.setMessage("جاري إزالة الخلفية بالذكاء الاصطناعي...");
        progressDialog.setCancelable(false);
        progressDialog.show();
        AsyncJob.doInBackground(new Task(mainActivity, currentShape, currBitmap, progressDialog));
    }

    public static Bitmap uploadAndRemoveBg(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int max = Math.max(width, height);
        if (max > 1024) {
            float f = 1024 / max;
            bitmap = Bitmap.createScaledBitmap(bitmap, (int) (width * f), (int) (height * f), true);
        }
        Bitmap callGradioSpace = callGradioSpace(bitmap, "https://not-lain-background-removal.hf.space", "png");
        if (callGradioSpace != null) {
            return callGradioSpace;
        }
        Bitmap callGradioSpace2 = callGradioSpace(bitmap, "https://not-lain-background-removal.hf.space", "image");
        if (callGradioSpace2 != null) {
            return callGradioSpace2;
        }
        Bitmap callGradioSpace3 = callGradioSpace(bitmap, "https://briaai-bria-rmbg-2-0.hf.space", "image");
        return callGradioSpace3 != null ? callGradioSpace3 : callGradioSpace(bitmap, "https://briaai-bria-rmbg-2-0.hf.space", "png");
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
