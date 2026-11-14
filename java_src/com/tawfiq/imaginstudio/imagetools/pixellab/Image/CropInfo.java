package com.tawfiq.imaginstudio.imagetools.pixellab.Image;

import android.graphics.RectF;
import android.os.Bundle;
import com.tawfiq.imaginstudio.imagetools.pixellab.appStateConstants;

/* loaded from: classes.dex */
public class CropInfo {
    static final float floatInvPrecision = 0.001f;
    static final int floatPrecision = 1000;
    boolean circular;
    boolean flipH;
    boolean flipV;
    RectF portion;
    int rot;

    public CropInfo(Bundle bundle) {
        RectF rectF = new RectF(0.0f, 0.0f, 100.0f, 100.0f);
        this.portion = rectF;
        this.rot = 0;
        this.circular = false;
        this.flipH = false;
        this.flipV = false;
        if (bundle == null) {
            return;
        }
        rectF.set(bundle.getInt(appStateConstants.CROP_INFO_POR_LEFT) * floatInvPrecision, bundle.getInt(appStateConstants.CROP_INFO_POR_TOP) * floatInvPrecision, bundle.getInt(appStateConstants.CROP_INFO_POR_RIGHT) * floatInvPrecision, bundle.getInt(appStateConstants.CROP_INFO_POR_BOTTOM) * floatInvPrecision);
        this.rot = bundle.getInt(appStateConstants.CROP_INFO_ROT);
        this.circular = bundle.getBoolean(appStateConstants.CROP_INFO_CIRC);
        this.flipH = bundle.getBoolean(appStateConstants.CROP_INFO_FLIP_HOR);
        this.flipV = bundle.getBoolean(appStateConstants.CROP_INFO_FLIP_VER);
    }

    public static Bundle makeBundle(RectF rectF, int i, boolean z, boolean z2, boolean z3) {
        Bundle bundle = new Bundle();
        bundle.putInt(appStateConstants.CROP_INFO_POR_LEFT, (int) (rectF.left * 1000.0f));
        bundle.putInt(appStateConstants.CROP_INFO_POR_TOP, (int) (rectF.top * 1000.0f));
        bundle.putInt(appStateConstants.CROP_INFO_POR_RIGHT, (int) (rectF.right * 1000.0f));
        bundle.putInt(appStateConstants.CROP_INFO_POR_BOTTOM, (int) (rectF.bottom * 1000.0f));
        bundle.putInt(appStateConstants.CROP_INFO_ROT, i);
        bundle.putBoolean(appStateConstants.CROP_INFO_CIRC, z);
        bundle.putBoolean(appStateConstants.CROP_INFO_FLIP_VER, z3);
        bundle.putBoolean(appStateConstants.CROP_INFO_FLIP_HOR, z2);
        return bundle;
    }

    public RectF getPortion() {
        return this.portion;
    }

    public int getRot() {
        return this.rot;
    }

    public boolean isCircular() {
        return this.circular;
    }

    public boolean isFlipH() {
        return this.flipH;
    }

    public boolean isFlipV() {
        return this.flipV;
    }
}
