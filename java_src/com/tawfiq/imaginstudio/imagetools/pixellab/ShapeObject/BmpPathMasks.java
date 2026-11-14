package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class BmpPathMasks {
    private List<EraserMask> masks;

    public BmpPathMasks() {
        this.masks = new ArrayList();
    }

    public BmpPathMasks(Bundle bundle) {
        ArrayList arrayList = new ArrayList();
        this.masks = arrayList;
        arrayList.clear();
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            this.masks.add(new EraserMask(bundle.getBundle(it.next())));
        }
    }

    public void add(EraserMask eraserMask) {
        this.masks.add(eraserMask);
    }

    public BmpPathMasks copy() {
        BmpPathMasks bmpPathMasks = new BmpPathMasks();
        for (EraserMask eraserMask : this.masks) {
            EraserMask eraserMask2 = new EraserMask(eraserMask.getPath(), eraserMask.relativeArea);
            eraserMask2.setStrokeFill(eraserMask.isStrokeFill());
            eraserMask2.setStrokeWidth(eraserMask.getStrokeWidth());
            eraserMask2.setBlur(eraserMask.blur);
            bmpPathMasks.masks.add(eraserMask2);
        }
        return bmpPathMasks;
    }

    public int getCount() {
        return this.masks.size();
    }

    public EraserMask getLast() {
        return this.masks.get(r0.size() - 1);
    }

    public List<EraserMask> getMasks() {
        return this.masks;
    }

    public boolean isEmpty() {
        return this.masks.isEmpty();
    }

    public void remAll() {
        this.masks.clear();
    }

    public void remLast() {
        if (this.masks.size() > 0) {
            this.masks.remove(r0.size() - 1);
        }
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        Iterator<EraserMask> it = this.masks.iterator();
        int i = 0;
        while (it.hasNext()) {
            bundle.putBundle(Integer.toString(i), it.next().toBundle());
            i++;
        }
        return bundle;
    }
}
