package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Bundle;
import com.tawfiq.imaginstudio.imagetools.pixellab.appStateConstants;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public class CustomPath {
    private static final String ACTION_TYPE_CIRCLE = "c";
    private static final String ACTION_TYPE_FILL_TYPE = "f";
    private static final String ACTION_TYPE_LINETO = "l";
    private static final String ACTION_TYPE_OVAL = "o";
    private static final String ACTION_TYPE_QUADTO = "q";
    private static final String ACTION_TYPE_RECT = "r";
    OnPathChange listener;
    Path cache = new Path();
    public ArrayList<PathAction> actions = new ArrayList<>();
    int fillType = 0;
    boolean syncFrozen = false;
    Path.Direction defaultDirection = Path.Direction.CW;

    /* loaded from: classes.dex */
    public class ActionCircle extends PathAction {
        public float rad;
        public float x;
        public float y;

        public ActionCircle(float f, float f2, float f3) {
            super();
            this.x = f;
            this.y = f2;
            this.rad = f3;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.CustomPath.PathAction
        public void addToArrayList(ArrayList<String> arrayList) {
            arrayList.addAll(Arrays.asList(CustomPath.ACTION_TYPE_CIRCLE, String.valueOf(this.x), String.valueOf(this.y), String.valueOf(this.rad)));
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.CustomPath.PathAction
        public PathAction copy() {
            return new ActionCircle(this.x, this.y, this.rad);
        }
    }

    /* loaded from: classes.dex */
    public class ActionLineTo extends PathAction {
        public boolean isMoveTo;
        public float x;
        public float y;

        public ActionLineTo(float f, float f2, boolean z) {
            super();
            this.x = f;
            this.y = f2;
            this.isMoveTo = z;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.CustomPath.PathAction
        public void addToArrayList(ArrayList<String> arrayList) {
            arrayList.addAll(Arrays.asList(CustomPath.ACTION_TYPE_LINETO, commonFuncs.boolToString(this.isMoveTo), String.valueOf(this.x), String.valueOf(this.y)));
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.CustomPath.PathAction
        public PathAction copy() {
            return new ActionLineTo(this.x, this.y, this.isMoveTo);
        }
    }

    /* loaded from: classes.dex */
    public class ActionOval extends PathAction {
        public RectF rectF;

        public ActionOval(RectF rectF) {
            super();
            this.rectF = rectF;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.CustomPath.PathAction
        public void addToArrayList(ArrayList<String> arrayList) {
            arrayList.addAll(Arrays.asList(CustomPath.ACTION_TYPE_OVAL, String.valueOf(this.rectF.left), String.valueOf(this.rectF.top), String.valueOf(this.rectF.right), String.valueOf(this.rectF.bottom)));
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.CustomPath.PathAction
        public PathAction copy() {
            CustomPath customPath = CustomPath.this;
            RectF rectF = this.rectF;
            return new ActionOval(new RectF(rectF.left, rectF.top, rectF.right, rectF.bottom));
        }
    }

    /* loaded from: classes.dex */
    public class ActionQuadTo extends PathAction {
        public boolean first;
        public float x1;
        public float x2;
        public float y1;
        public float y2;

        public ActionQuadTo(float f, float f2, float f3, float f4, boolean z) {
            super();
            this.x1 = f;
            this.y1 = f2;
            this.x2 = f3;
            this.y2 = f4;
            this.first = z;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.CustomPath.PathAction
        public void addToArrayList(ArrayList<String> arrayList) {
            arrayList.addAll(Arrays.asList(CustomPath.ACTION_TYPE_QUADTO, commonFuncs.boolToString(this.first), String.valueOf(this.x1), String.valueOf(this.y1), String.valueOf(this.x2), String.valueOf(this.y2)));
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.CustomPath.PathAction
        public PathAction copy() {
            return new ActionQuadTo(this.x1, this.y1, this.x2, this.y2, this.first);
        }
    }

    /* loaded from: classes.dex */
    public class ActionRect extends PathAction {
        public float bottom;
        public Path.Direction direction;
        public float left;
        public float right;
        public float top;

        public ActionRect(float f, float f2, float f3, float f4, Path.Direction direction) {
            super();
            this.left = f;
            this.top = f2;
            this.right = f3;
            this.bottom = f4;
            this.direction = direction;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.CustomPath.PathAction
        public void addToArrayList(ArrayList<String> arrayList) {
            arrayList.addAll(Arrays.asList(CustomPath.ACTION_TYPE_RECT, commonFuncs.directionToString(this.direction), String.valueOf(this.left), String.valueOf(this.top), String.valueOf(this.right), String.valueOf(this.bottom)));
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.CustomPath.PathAction
        public PathAction copy() {
            return new ActionRect(this.left, this.top, this.right, this.bottom, this.direction);
        }
    }

    /* loaded from: classes.dex */
    public interface OnPathChange {
        void countChanged(int i);
    }

    /* loaded from: classes.dex */
    public abstract class PathAction {
        public PathAction() {
        }

        public abstract void addToArrayList(ArrayList<String> arrayList);

        public abstract PathAction copy();
    }

    public CustomPath() {
    }

    public CustomPath(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        freezeSync();
        ArrayList<String> stringArrayList = bundle.getStringArrayList(appStateConstants.CUSTOM_PATH_DATA);
        if (stringArrayList != null) {
            try {
                applyArrayData(stringArrayList);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        unfreezeSync();
    }

    private void addActionToPath(PathAction pathAction) {
        if (pathAction instanceof ActionLineTo) {
            ActionLineTo actionLineTo = (ActionLineTo) pathAction;
            if (actionLineTo.isMoveTo) {
                this.cache.moveTo(actionLineTo.x, actionLineTo.y);
                return;
            } else {
                this.cache.lineTo(actionLineTo.x, actionLineTo.y);
                return;
            }
        }
        if (pathAction instanceof ActionQuadTo) {
            ActionQuadTo actionQuadTo = (ActionQuadTo) pathAction;
            this.cache.quadTo(actionQuadTo.x1, actionQuadTo.y1, actionQuadTo.x2, actionQuadTo.y2);
            return;
        }
        if (pathAction instanceof ActionCircle) {
            ActionCircle actionCircle = (ActionCircle) pathAction;
            this.cache.addCircle(actionCircle.x, actionCircle.y, actionCircle.rad, this.defaultDirection);
        } else if (pathAction instanceof ActionRect) {
            ActionRect actionRect = (ActionRect) pathAction;
            this.cache.addRect(actionRect.left, actionRect.top, actionRect.right, actionRect.bottom, actionRect.direction);
        } else if (pathAction instanceof ActionOval) {
            this.cache.addOval(((ActionOval) pathAction).rectF, this.defaultDirection);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x005b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0016. Please report as an issue. */
    private void applyArrayData(ArrayList<String> arrayList) {
        ArrayList<PathAction> arrayList2;
        PathAction actionCircle;
        ArrayList<PathAction> arrayList3;
        PathAction actionQuadTo;
        int i = 0;
        while (i < arrayList.size()) {
            String str = arrayList.get(i);
            str.getClass();
            char c = 65535;
            switch (str.hashCode()) {
                case 99:
                    if (str.equals(ACTION_TYPE_CIRCLE)) {
                        c = 0;
                        break;
                    }
                    break;
                case 102:
                    if (str.equals(ACTION_TYPE_FILL_TYPE)) {
                        c = 1;
                        break;
                    }
                    break;
                case 108:
                    if (str.equals(ACTION_TYPE_LINETO)) {
                        c = 2;
                        break;
                    }
                    break;
                case 111:
                    if (str.equals(ACTION_TYPE_OVAL)) {
                        c = 3;
                        break;
                    }
                    break;
                case 113:
                    if (str.equals(ACTION_TYPE_QUADTO)) {
                        c = 4;
                        break;
                    }
                    break;
                case 114:
                    if (str.equals(ACTION_TYPE_RECT)) {
                        c = 5;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    arrayList2 = this.actions;
                    actionCircle = new ActionCircle(Float.parseFloat(arrayList.get(i + 1)), Float.parseFloat(arrayList.get(i + 2)), Float.parseFloat(arrayList.get(i + 3)));
                    arrayList2.add(actionCircle);
                    i += 4;
                    break;
                case 1:
                    setFillType(Integer.parseInt(arrayList.get(i + 1)));
                    i += 2;
                    break;
                case 2:
                    arrayList2 = this.actions;
                    actionCircle = new ActionLineTo(Float.parseFloat(arrayList.get(i + 2)), Float.parseFloat(arrayList.get(i + 3)), commonFuncs.stringToBool(arrayList.get(i + 1)));
                    arrayList2.add(actionCircle);
                    i += 4;
                    break;
                case 3:
                    this.actions.add(new ActionOval(new RectF(Float.parseFloat(arrayList.get(i + 1)), Float.parseFloat(arrayList.get(i + 2)), Float.parseFloat(arrayList.get(i + 3)), Float.parseFloat(arrayList.get(i + 4)))));
                    i += 5;
                    break;
                case 4:
                    arrayList3 = this.actions;
                    actionQuadTo = new ActionQuadTo(Float.parseFloat(arrayList.get(i + 2)), Float.parseFloat(arrayList.get(i + 3)), Float.parseFloat(arrayList.get(i + 4)), Float.parseFloat(arrayList.get(i + 5)), commonFuncs.stringToBool(arrayList.get(i + 1)));
                    arrayList3.add(actionQuadTo);
                    i += 6;
                    break;
                case 5:
                    arrayList3 = this.actions;
                    actionQuadTo = new ActionRect(Float.parseFloat(arrayList.get(i + 2)), Float.parseFloat(arrayList.get(i + 3)), Float.parseFloat(arrayList.get(i + 4)), Float.parseFloat(arrayList.get(i + 5)), commonFuncs.stringToDirection(arrayList.get(i + 1)));
                    arrayList3.add(actionQuadTo);
                    i += 6;
                    break;
                default:
                    i++;
                    break;
            }
        }
    }

    private ArrayList<PathAction> copyActions() {
        ArrayList<PathAction> arrayList = new ArrayList<>(this.actions.size());
        Iterator<PathAction> it = this.actions.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().copy());
        }
        return arrayList;
    }

    private void setFillType(int i) {
        this.fillType = i;
        if (i == 1) {
            this.cache.setFillType(Path.FillType.EVEN_ODD);
        }
    }

    private void syncPath(boolean z) {
        if (this.syncFrozen) {
            return;
        }
        if (this.listener != null && this.actions.size() < 3) {
            this.listener.countChanged(this.actions.size());
        }
        if (!z) {
            this.cache.reset();
        }
        if (this.fillType == 1) {
            this.cache.setFillType(Path.FillType.EVEN_ODD);
        }
        if (!z) {
            Iterator<PathAction> it = this.actions.iterator();
            while (it.hasNext()) {
                addActionToPath(it.next());
            }
        } else {
            if (this.actions.isEmpty()) {
                return;
            }
            ArrayList<PathAction> arrayList = this.actions;
            addActionToPath(arrayList.get(arrayList.size() - 1));
        }
    }

    public void addCircle(float f, float f2, float f3) {
        this.actions.add(new ActionCircle(f, f2, f3));
        syncPath(true);
    }

    public void addOval(RectF rectF) {
        this.actions.add(new ActionOval(rectF));
        syncPath(true);
    }

    public void addRect(float f, float f2, float f3, float f4) {
        addRect(f, f2, f3, f4, this.defaultDirection);
    }

    public void addRect(float f, float f2, float f3, float f4, Path.Direction direction) {
        this.actions.add(new ActionRect(f, f2, f3, f4, direction));
        syncPath(true);
    }

    public void addRect(RectF rectF) {
        addRect(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public void freezeSync() {
        this.syncFrozen = true;
    }

    public CustomPath getInverted(RectF rectF, int i) {
        CustomPath customPath = new CustomPath();
        customPath.setFillType(1);
        customPath.actions = copyActions();
        customPath.syncPath(false);
        float f = i;
        customPath.addRect(rectF.left - f, rectF.top - f, rectF.right + f, rectF.bottom + f, Path.Direction.CCW);
        return customPath;
    }

    public PointF getLastPoint() {
        float f;
        float f2;
        PointF pointF = new PointF();
        if (this.actions.size() > 0) {
            if (this.actions.get(r1.size() - 1) instanceof ActionLineTo) {
                ActionLineTo actionLineTo = (ActionLineTo) this.actions.get(r1.size() - 1);
                f = actionLineTo.x;
                f2 = actionLineTo.y;
            } else {
                if (this.actions.get(r1.size() - 1) instanceof ActionQuadTo) {
                    ActionQuadTo actionQuadTo = (ActionQuadTo) this.actions.get(r1.size() - 1);
                    f = actionQuadTo.x2;
                    f2 = actionQuadTo.y2;
                }
            }
            pointF.set(f, f2);
        }
        return pointF;
    }

    public Path getPath() {
        return this.cache;
    }

    public boolean isEmpty() {
        return this.actions.isEmpty();
    }

    public void lineTo(float f, float f2, boolean z) {
        this.actions.add(new ActionLineTo(f, f2, z));
        syncPath(true);
    }

    public void quadTo(float f, float f2, float f3, float f4, boolean z) {
        this.actions.add(new ActionQuadTo(f, f2, f3, f4, z));
        syncPath(true);
    }

    public void removeLast() {
        if (this.actions.size() < 1) {
            return;
        }
        ArrayList<PathAction> arrayList = this.actions;
        PathAction pathAction = arrayList.get(arrayList.size() - 1);
        if (!(pathAction instanceof ActionQuadTo) || ((ActionQuadTo) pathAction).first) {
            ArrayList<PathAction> arrayList2 = this.actions;
            arrayList2.remove(arrayList2.size() - 1);
            syncPath(false);
        } else {
            ArrayList<PathAction> arrayList3 = this.actions;
            arrayList3.remove(arrayList3.size() - 1);
            removeLast();
        }
    }

    public void reset() {
        this.cache.reset();
        this.actions.clear();
        OnPathChange onPathChange = this.listener;
        if (onPathChange != null) {
            onPathChange.countChanged(0);
        }
    }

    public void set(CustomPath customPath) {
        this.fillType = customPath.fillType;
        this.actions = customPath.copyActions();
        syncPath(false);
    }

    public void setOnPathChangeListener(OnPathChange onPathChange) {
        this.listener = onPathChange;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle(this.actions.size());
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.addAll(Arrays.asList(ACTION_TYPE_FILL_TYPE, String.valueOf(this.fillType)));
        Iterator<PathAction> it = this.actions.iterator();
        while (it.hasNext()) {
            it.next().addToArrayList(arrayList);
        }
        bundle.putStringArrayList(appStateConstants.CUSTOM_PATH_DATA, arrayList);
        return bundle;
    }

    public void unfreezeSync() {
        this.syncFrozen = false;
        syncPath(false);
    }
}
