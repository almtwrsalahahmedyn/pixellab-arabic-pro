package com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class spansIntervals {
    List<interval> intervals = new ArrayList();
    List<interval> tmpIntervals = new ArrayList();

    public void addInterval(interval intervalVar) {
        if (intervalVar.getBase().isInterval()) {
            for (interval intervalVar2 : this.intervals) {
                if (!intervalVar.getBase().contains(intervalVar2.getBase())) {
                    this.tmpIntervals.add(intervalVar2);
                }
            }
            this.intervals = new ArrayList(this.tmpIntervals);
            this.tmpIntervals.clear();
            this.intervals.add(intervalVar);
        }
    }

    public void addIntervalNoCheck(interval intervalVar) {
        this.intervals.add(intervalVar);
    }

    public void clear() {
        this.intervals.clear();
    }

    public spansIntervals copy() {
        ArrayList arrayList = new ArrayList();
        Iterator<interval> it = this.intervals.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().copy());
        }
        spansIntervals spansintervals = new spansIntervals();
        spansintervals.setIntervals(arrayList);
        return spansintervals;
    }

    public List<interval> getIntervals() {
        return this.intervals;
    }

    public interval getLastAttr() {
        if (this.intervals.size() <= 0) {
            return null;
        }
        return this.intervals.get(r0.size() - 1);
    }

    public int getLastColor() {
        if (getLastAttr() != null) {
            return getLastAttr().getColor();
        }
        return -16777216;
    }

    public boolean isCoverAll(int i) {
        if (this.intervals.size() <= 0) {
            return false;
        }
        List<interval> list = this.intervals;
        if (list.get(list.size() - 1).getBase() == null) {
            return false;
        }
        List<interval> list2 = this.intervals;
        return list2.get(list2.size() - 1).getBase().getLength() == i;
    }

    public void removeInterval(int i, int i2) {
        for (interval intervalVar : this.intervals) {
            if (intervalVar.getBase().isNoOverlapInterval(i, i2)) {
                this.tmpIntervals.add(intervalVar);
            } else {
                for (baseInterval baseinterval : intervalVar.getBase().removeInterval(new baseInterval(i, i2))) {
                    if (baseinterval.isInterval()) {
                        this.tmpIntervals.add(new interval(baseinterval.getStart(), baseinterval.getEnd()));
                    }
                }
            }
        }
        this.intervals = new ArrayList(this.tmpIntervals);
        this.tmpIntervals.clear();
    }

    public void setIntervals(List<interval> list) {
        this.intervals = list;
    }

    public void updateEnds(int i, int i2) {
        for (interval intervalVar : this.intervals) {
            if (intervalVar.getBase().getEnd() == i) {
                intervalVar.getBase().setEnd(i2);
            }
        }
    }
}
