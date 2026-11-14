package com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class baseInterval {
    int end;
    int start;

    public baseInterval(int i, int i2) {
        this.start = i;
        this.end = i2;
    }

    public boolean contains(baseInterval baseinterval) {
        return getStart() <= baseinterval.getStart() && getEnd() >= baseinterval.getEnd();
    }

    public String describe() {
        return getStart() + "-->" + getEnd();
    }

    public int getEnd() {
        return this.end;
    }

    public int getLength() {
        return Math.max(getEnd() - getStart(), 0);
    }

    public int getStart() {
        return this.start;
    }

    public baseInterval intersect(baseInterval baseinterval, baseInterval baseinterval2) {
        return new baseInterval(Math.max(baseinterval.getStart(), baseinterval2.getStart()), Math.min(baseinterval.getEnd(), baseinterval2.getEnd()));
    }

    public boolean isInterval() {
        return this.start < this.end;
    }

    public boolean isNoOverlapInterval(int i, int i2) {
        return i2 < getStart() || i > getEnd();
    }

    public List<baseInterval> removeInterval(baseInterval baseinterval) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new baseInterval(getStart(), baseinterval.getStart()));
        arrayList.add(new baseInterval(baseinterval.getEnd(), getEnd()));
        return arrayList;
    }

    public void setEnd(int i) {
        this.end = i;
    }

    public void setStart(int i) {
        this.start = i;
    }
}
