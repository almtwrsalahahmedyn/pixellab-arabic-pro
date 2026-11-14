package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import com.arasthel.asyncjob.AsyncJob;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.ImageSource;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.textContainer;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class AiObjectSplitter {

    /* loaded from: classes.dex */
    public class Task implements AsyncJob.OnBackgroundJob, Runnable {
        private MainActivity act;
        private Bitmap bmp;
        private String cleanBgPath;
        private ArrayList<Bundle> objItems = new ArrayList<>();
        private ProgressDialog pd;
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
                Bitmap extractAndEraseObjects = AiObjectSplitter.extractAndEraseObjects(this.act, this.bmp, this.objItems);
                if (!this.objItems.isEmpty() && extractAndEraseObjects != null) {
                    File cacheFile = commonFuncs.getCacheFile(commonFuncs.generateName("clean_obj_bg"), this.act);
                    FileOutputStream fileOutputStream = new FileOutputStream(cacheFile);
                    extractAndEraseObjects.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    this.cleanBgPath = cacheFile.getAbsolutePath();
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
            ArrayList<Bundle> arrayList = this.objItems;
            if (arrayList == null || arrayList.isEmpty()) {
                this.act.msg("تعذر فصل الملحقات، يرجى التحقق من اتصال الإنترنت");
                return;
            }
            if (this.cleanBgPath != null) {
                this.act.saveCurrShapeState(this.shape);
                ImageSource imageSource = new ImageSource(this.cleanBgPath);
                ShapeComponent shapeComponent = this.shape;
                shapeComponent.editSrc(ShapeComponent.SHAPE_TYPE_GALLERY, imageSource, false, shapeComponent.width_f, shapeComponent.height_f);
            }
            ShapeComponent shapeComponent2 = this.shape;
            float width = shapeComponent2.width_f / this.bmp.getWidth();
            float height = shapeComponent2.height_f / this.bmp.getHeight();
            float x = this.shape.getX();
            float y = this.shape.getY();
            Iterator<Bundle> it = this.objItems.iterator();
            while (it.hasNext()) {
                Bundle next = it.next();
                this.act.textContain.addNewShape(ShapeComponent.SHAPE_TYPE_GALLERY, new ImageSource(next.getString("p")), true, x + (next.getFloat("x") * width), y + (next.getFloat("y") * height), next.getFloat("w") * width, next.getFloat("h") * height);
            }
            this.act.msg("تم فصل الملحقات وتحويلها إلى طبقات مستقلة بنجاح!");
        }
    }

    public static void cleanObjectFromBg(Bitmap bitmap, Bitmap bitmap2, Rect rect, int i) {
        try {
            for (int i2 = rect.top; i2 < rect.bottom; i2++) {
                for (int i3 = rect.left; i3 < rect.right; i3++) {
                    if (((bitmap2.getPixel(i3, i2) >> 24) & 255) > 24) {
                        bitmap.setPixel(i3, i2, i);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public static Bitmap createForegroundMask(Bitmap bitmap, int i) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        int i2 = (i >> 16) & 255;
        int i3 = (i >> 8) & 255;
        int i4 = i & 255;
        for (int i5 = 0; i5 < height; i5++) {
            for (int i6 = 0; i6 < width; i6++) {
                int pixel = copy.getPixel(i6, i5);
                if (((pixel >> 24) & 255) <= 32 || Math.abs(((pixel >> 16) & 255) - i2) + Math.abs(((pixel >> 8) & 255) - i3) + Math.abs((pixel & 255) - i4) < 45) {
                    copy.setPixel(i6, i5, 0);
                }
            }
        }
        return copy;
    }

    public static int detectBgColor(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = width / 2;
        int min = Math.min(2, i);
        int min2 = Math.min(2, height / 2);
        int pixel = bitmap.getPixel(i, min2);
        return ((pixel >> 24) & 255) < 32 ? bitmap.getPixel(min, min2) : pixel;
    }

    public static Bitmap extractAndEraseObjects(Context context, Bitmap bitmap, ArrayList<Bundle> arrayList) {
        Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        try {
            int width = copy.getWidth();
            int height = copy.getHeight();
            int detectBgColor = detectBgColor(copy);
            Bitmap uploadAndRemoveBg = AiBgRemover.uploadAndRemoveBg(copy);
            if (uploadAndRemoveBg == null) {
                uploadAndRemoveBg = createForegroundMask(copy, detectBgColor);
            } else if (uploadAndRemoveBg.getWidth() != width || uploadAndRemoveBg.getHeight() != height) {
                uploadAndRemoveBg = Bitmap.createScaledBitmap(uploadAndRemoveBg, width, height, true);
            }
            ArrayList<Rect> findPreciseRects = findPreciseRects(uploadAndRemoveBg);
            if (findPreciseRects.isEmpty()) {
                uploadAndRemoveBg = createForegroundMask(copy, detectBgColor);
                findPreciseRects = findPreciseRects(uploadAndRemoveBg);
            }
            Iterator<Rect> it = findPreciseRects.iterator();
            while (it.hasNext()) {
                Rect next = it.next();
                Bitmap createBitmap = Bitmap.createBitmap(uploadAndRemoveBg, next.left, next.top, next.width(), next.height());
                File cacheFile = commonFuncs.getCacheFile(commonFuncs.generateName("smart_obj"), context);
                FileOutputStream fileOutputStream = new FileOutputStream(cacheFile);
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                createBitmap.recycle();
                cleanObjectFromBg(copy, uploadAndRemoveBg, next, detectBgColor);
                Bundle bundle = new Bundle();
                bundle.putString("p", cacheFile.getAbsolutePath());
                bundle.putFloat("x", next.left);
                bundle.putFloat("y", next.top);
                bundle.putFloat("w", next.width());
                bundle.putFloat("h", next.height());
                arrayList.add(bundle);
            }
        } catch (Exception unused) {
        }
        return copy;
    }

    public static ArrayList<Rect> findPreciseRects(Bitmap bitmap) {
        ArrayList arrayList = new ArrayList();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        for (int i = 4; i < height - 4; i += 6) {
            for (int i2 = 4; i2 < width - 4; i2 += 6) {
                if (((bitmap.getPixel(i2, i) >> 24) & 255) > 48) {
                    Rect rect = new Rect(Math.max(0, i2 - 8), Math.max(0, i - 8), Math.min(width, i2 + 12), Math.min(height, i + 12));
                    Iterator it = arrayList.iterator();
                    boolean z = false;
                    while (it.hasNext()) {
                        Rect rect2 = (Rect) it.next();
                        if (Rect.intersects(rect2, rect)) {
                            rect2.union(rect);
                            z = true;
                        }
                    }
                    if (!z) {
                        arrayList.add(rect);
                    }
                }
            }
        }
        return mergeAndFilterRects(arrayList, width, height);
    }

    public static ArrayList<Rect> mergeAndFilterRects(ArrayList<Rect> arrayList, int i, int i2) {
        for (int i3 = 0; i3 < 3; i3++) {
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                Rect rect = arrayList.get(i4);
                int i5 = i4 + 1;
                while (i5 < arrayList.size()) {
                    Rect rect2 = arrayList.get(i5);
                    Rect rect3 = new Rect(rect);
                    rect3.inset(-8, -8);
                    if (Rect.intersects(rect3, rect2)) {
                        rect.union(rect2);
                        arrayList.remove(i5);
                    } else {
                        i5++;
                    }
                }
            }
        }
        ArrayList<Rect> arrayList2 = new ArrayList<>();
        int i6 = i / 20;
        int i7 = i2 / 20;
        Iterator<Rect> it = arrayList.iterator();
        while (it.hasNext()) {
            Rect next = it.next();
            if (next.width() > i6 && next.height() > i7) {
                arrayList2.add(next);
            }
        }
        return arrayList2;
    }

    public static void splitObjects(MainActivity mainActivity) {
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
        progressDialog.setMessage("جاري التعرف الدقيق على الملحقات وفصلها إلى طبقات شفافة...");
        progressDialog.setCancelable(false);
        progressDialog.show();
        AsyncJob.doInBackground(new Task(mainActivity, currentShape, currBitmap, progressDialog));
    }
}
