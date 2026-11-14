package com.tawfiq.imaginstudio.imagetools.pixellab.controls;

import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.ImageSource;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;

/* loaded from: classes.dex */
public class CustomStickerItemClick implements View.OnClickListener {
    final optionExpand opt;
    final String path;

    public CustomStickerItemClick(optionExpand optionexpand, String str) {
        this.opt = optionexpand;
        this.path = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ShapeComponent access$200;
        float f;
        float f2;
        if (this.opt == null || this.path == null || (access$200 = optionExpand.access$200(this.opt)) == null) {
            return;
        }
        ImageSource imageSource = new ImageSource(this.path);
        int i = ShapeComponent.SHAPE_TYPE_STICKER;
        int[] dimensionsFromPath = commonFuncs.getDimensionsFromPath(this.path);
        if (dimensionsFromPath != null) {
            float f3 = dimensionsFromPath[0];
            float f4 = dimensionsFromPath[1];
            float max = Math.max(f3, f4);
            if (max > 0.0f) {
                float f5 = 350.0f / max;
                f = f3 * f5;
                f2 = f4 * f5;
                access$200.editSrc(i, imageSource, true, f, f2);
                access$200.fullRedraw();
            }
        }
        f = 350.0f;
        f2 = 350.0f;
        access$200.editSrc(i, imageSource, true, f, f2);
        access$200.fullRedraw();
    }
}
