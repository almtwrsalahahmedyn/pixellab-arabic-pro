package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier;
import com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.ZoomWidget;
import com.tawfiq.imaginstudio.imagetools.pixellab.appStateConstants;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class BezierPanel extends View implements customBezier.OnBezierListener, BezierTools.OnBezierToolsAction, ZoomWidget.OnZoomListener {
    BezierMode currMode;
    public ArrayList<customBezier> customBeziers;
    float defaultOffset;
    float dx;
    float dy;
    public ShapeComponent editShapeReference;
    PointF fingerPos;
    boolean isMotionMove;
    OnBezierPanelAction listener;
    boolean maskMode;
    int maskOffsetCounter;
    boolean needNotifyMaskedObject;
    float objectAngle;
    PointF objectPivot;
    Paint pntBezier;
    Paint pntBezierSelected;
    float prevX;
    float prevY;
    private boolean renderMode;
    ShapeComponent shapeReference;
    TextComponent textReference;
    float zoomF;

    /* loaded from: classes.dex */
    public enum BezierMode {
        addP,
        dragP,
        moveB
    }

    /* loaded from: classes.dex */
    public interface OnBezierPanelAction {
        void pathChanged(int i, boolean z, boolean z2, boolean z3);

        void selectionChanged(int i);

        void updateMode(BezierMode bezierMode);
    }

    /* loaded from: classes.dex */
    public interface SelectedBezierAction {
        void doOnBezier(customBezier custombezier);
    }

    public BezierPanel(Context context) {
        super(context);
        this.defaultOffset = commonFuncs.dpToPx(5);
        this.maskMode = false;
        this.isMotionMove = false;
        this.objectAngle = 0.0f;
        this.objectPivot = new PointF();
        this.renderMode = false;
        this.zoomF = 1.0f;
        this.editShapeReference = null;
        this.currMode = BezierMode.addP;
        this.listener = null;
        this.customBeziers = new ArrayList<>();
        this.prevX = 0.0f;
        this.prevY = 0.0f;
        this.dx = 0.0f;
        this.dy = 0.0f;
        this.fingerPos = new PointF();
        this.maskOffsetCounter = 0;
        this.needNotifyMaskedObject = false;
        Paint paint = new Paint(1);
        this.pntBezier = paint;
        paint.setColor(-1);
        this.pntBezier.setStrokeWidth(commonFuncs.dpToPx(1));
        this.pntBezier.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint(this.pntBezier);
        this.pntBezierSelected = paint2;
        paint2.setColor(-16777216);
        setLayerType(1, null);
    }

    private customBezier getSelectedBezier() {
        return getSelectedBezierAndDo(null);
    }

    private customBezier getSelectedBezierAndDo(SelectedBezierAction selectedBezierAction) {
        customBezier custombezier;
        Iterator<customBezier> it = this.customBeziers.iterator();
        while (true) {
            if (!it.hasNext()) {
                custombezier = null;
                break;
            }
            custombezier = it.next();
            if (custombezier.selected != null) {
                break;
            }
        }
        if (custombezier != null && selectedBezierAction != null) {
            selectedBezierAction.doOnBezier(custombezier);
        }
        return custombezier;
    }

    private void notifyMaskedObject() {
        ShapeComponent shapeComponent = this.shapeReference;
        if (shapeComponent != null) {
            shapeComponent.setBezierMaskPath(getAllPaths());
        }
        TextComponent textComponent = this.textReference;
        if (textComponent != null) {
            textComponent.setBezierMaskPath(getAllPaths());
        }
        this.needNotifyMaskedObject = false;
    }

    private customBezier startEmpty() {
        Iterator<customBezier> it = this.customBeziers.iterator();
        while (it.hasNext()) {
            it.next().selected = null;
        }
        customBezier custombezier = new customBezier(this);
        this.customBeziers.add(custombezier);
        return custombezier;
    }

    private void startNew(float f, float f2) {
        startEmpty().addPointLast(new PointF(f, f2));
        notifySelectionChanged();
    }

    public void addAfterSelected() {
        getSelectedBezierAndDo(new SelectedBezierAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.2
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.SelectedBezierAction
            public void doOnBezier(customBezier custombezier) {
                custombezier.addPointAfterSelected();
            }
        });
    }

    public void addFromStringArrayList(ArrayList<String> arrayList, RectF rectF, RectF rectF2, Bundle bundle) {
        if (arrayList == null || rectF == null || rectF2 == null || !commonFuncs.isValidRect(rectF) || !commonFuncs.isValidRect(rectF2)) {
            return;
        }
        customBezier startEmpty = startEmpty();
        if (bundle != null) {
            startEmpty.setStyleFromBundle(bundle);
        } else {
            startEmpty.setStyleForMask();
        }
        startEmpty.dataFromStringArrayList(arrayList, -rectF.left, -rectF.top, rectF2.left, rectF2.top, rectF2.width() / rectF.width(), rectF2.height() / rectF.height());
        notifySelectionChanged();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void addNew() {
        ShapeComponent shapeComponent;
        if (!this.maskMode || ((shapeComponent = this.shapeReference) == null && this.textReference == null)) {
            startNewDefault(false);
        } else {
            startNewDefaultForMask(shapeComponent != null ? shapeComponent.getBoundsRect() : this.textReference.getBoundsRect());
        }
    }

    public void clearMe() {
        this.customBeziers.clear();
        this.maskOffsetCounter = 0;
        this.currMode = BezierMode.addP;
        this.listener = null;
        TextComponent textComponent = this.textReference;
        if (textComponent != null) {
            textComponent.restoreRotations();
        }
        ShapeComponent shapeComponent = this.shapeReference;
        if (shapeComponent != null) {
            shapeComponent.restoreRotations();
        }
        this.shapeReference = null;
        this.textReference = null;
        ShapeComponent shapeComponent2 = this.editShapeReference;
        if (shapeComponent2 != null) {
            shapeComponent2.unhideTemp();
        }
        this.editShapeReference = null;
        this.objectAngle = 0.0f;
        this.objectPivot.set(0.0f, 0.0f);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void closeSelected() {
        getSelectedBezierAndDo(new SelectedBezierAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.5
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.SelectedBezierAction
            public void doOnBezier(customBezier custombezier) {
                custombezier.close(true);
            }
        });
        reportActionability();
        notifySelectionChanged();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void commitTransform(boolean z) {
        Iterator<customBezier> it = this.customBeziers.iterator();
        while (it.hasNext()) {
            it.next().commitTransforms(z);
        }
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void copySelected() {
        customBezier selectedBezier = getSelectedBezier();
        if (selectedBezier == null) {
            return;
        }
        customBezier copy = selectedBezier.copy(this, this.defaultOffset * 2.0f);
        getSelectedBezier().selected = null;
        copy.selectMe();
        this.customBeziers.add(copy);
        copy.updatePath();
        notifySelectionChanged();
    }

    public void defaultOnSelected() {
        getSelectedBezierAndDo(new SelectedBezierAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.3
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.SelectedBezierAction
            public void doOnBezier(customBezier custombezier) {
                custombezier.doDefaultPreset(new PointF(BezierPanel.this.getWidth() * 0.5f, BezierPanel.this.getHeight() * 0.5f), BezierPanel.this.getWidth());
            }
        });
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void divideNext() {
        getSelectedBezierAndDo(new SelectedBezierAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.4
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.SelectedBezierAction
            public void doOnBezier(customBezier custombezier) {
                custombezier.addPointAfterSelected();
            }
        });
    }

    public ArrayList<Path> getAllPaths() {
        ArrayList<Path> arrayList = new ArrayList<>(this.customBeziers.size());
        Iterator<customBezier> it = this.customBeziers.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getPath());
        }
        return arrayList;
    }

    public Bitmap getBitmapFromBezierPanel(int i) {
        Rect rect = new Rect(0, 0, getWidth(), getHeight());
        Bitmap createBitmap = Bitmap.createBitmap(rect.width() * i, rect.height() * i, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        float f = i;
        canvas.scale(f, f);
        canvas.translate(rect.left * (-1), rect.top * (-1));
        toggleRenderMode(true);
        draw(canvas);
        toggleRenderMode(false);
        return createBitmap;
    }

    public void initiate() {
        this.objectAngle = 0.0f;
        this.objectPivot.set(0.0f, 0.0f);
        setVisibility(0);
        post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.1
            @Override // java.lang.Runnable
            public void run() {
                BezierPanel.this.startNewDefault(true);
            }
        });
    }

    public void initiateMaskMode(TextComponent textComponent, ShapeComponent shapeComponent) {
        if (textComponent == null && shapeComponent == null) {
            return;
        }
        this.objectAngle = 0.0f;
        this.objectPivot.set(0.0f, 0.0f);
        setVisibility(0);
        this.shapeReference = shapeComponent;
        this.textReference = textComponent;
        if (shapeComponent != null) {
            shapeComponent.tempDisableRotations(false, true, true);
            this.objectAngle = shapeComponent.angle;
            this.objectPivot.set((shapeComponent.width_f * 0.5f) + shapeComponent.getX(), (shapeComponent.height_f * 0.5f) + shapeComponent.getY());
        }
        if (textComponent != null) {
            textComponent.tempDisableRotations(false, true, true);
            this.objectAngle = textComponent.angle;
            this.objectPivot.set((textComponent.textWidth * 0.5f) + textComponent.getX(), (textComponent.textHeight * 0.5f) + textComponent.getY());
        }
        this.currMode = BezierMode.dragP;
        this.maskMode = true;
        RectF boundsRect = shapeComponent != null ? shapeComponent.getBoundsRect() : textComponent.getBoundsRect();
        Bundle bundle = shapeComponent != null ? shapeComponent.bezierMaskBundle : textComponent.bezierMaskBundle;
        if (bundle == null || bundle.getStringArrayList(appStateConstants.BEZIER_CURVE_RECT) == null || bundle.size() < 2) {
            startNewDefaultForMask(boundsRect);
        } else {
            RectF arrToRectF = commonFuncs.arrToRectF(bundle.getStringArrayList(appStateConstants.BEZIER_CURVE_RECT));
            for (String str : bundle.keySet()) {
                if (!appStateConstants.BEZIER_CURVE_RECT.equals(str) && !str.endsWith("st")) {
                    addFromStringArrayList(bundle.getStringArrayList(str), arrToRectF, boundsRect, null);
                }
            }
        }
        if (this.customBeziers.isEmpty()) {
            return;
        }
        selectBezier(this.customBeziers.get(0));
    }

    public boolean isCurrBezierClosed() {
        customBezier selectedBezier = getSelectedBezier();
        return selectedBezier != null && selectedBezier.closedContour;
    }

    public void notifySelectionChanged() {
        customBezier selectedBezier = getSelectedBezier();
        OnBezierPanelAction onBezierPanelAction = this.listener;
        if (onBezierPanelAction != null && selectedBezier != null) {
            onBezierPanelAction.selectionChanged(this.customBeziers.indexOf(selectedBezier));
        }
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.objectAngle != 0.0f) {
            canvas.save();
            float f = this.objectAngle;
            PointF pointF = this.objectPivot;
            canvas.rotate(f, pointF.x, pointF.y);
        }
        Iterator<customBezier> it = this.customBeziers.iterator();
        while (it.hasNext()) {
            customBezier next = it.next();
            next.drawPath(canvas);
            if (!this.renderMode) {
                next.drawPathPoints(canvas, this.currMode == BezierMode.dragP, false, this.zoomF);
            }
            if (!this.renderMode) {
                next.drawPathPoints(canvas, this.currMode == BezierMode.dragP, true, this.zoomF);
            }
        }
        if (this.objectAngle != 0.0f) {
            canvas.restore();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0052, code lost:
    
        if (r8 != 3) goto L48;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void openSelected() {
        getSelectedBezierAndDo(new SelectedBezierAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.6
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.SelectedBezierAction
            public void doOnBezier(customBezier custombezier) {
                custombezier.close(false);
            }
        });
        reportActionability();
        notifySelectionChanged();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.OnBezierListener
    public void pathChanged(customBezier custombezier) {
        invalidate();
        if (this.isMotionMove) {
            this.needNotifyMaskedObject = true;
        } else {
            notifyMaskedObject();
        }
    }

    public Bundle pathsToBundle(boolean z) {
        ArrayList<customBezier> arrayList = this.customBeziers;
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        Bundle bundle = new Bundle(this.customBeziers.size());
        Iterator<customBezier> it = this.customBeziers.iterator();
        int i = 0;
        while (it.hasNext()) {
            customBezier next = it.next();
            ArrayList<String> arrayList2 = new ArrayList<>();
            next.addToArrayList(arrayList2, z);
            if (z) {
                bundle.putBundle(String.valueOf(i) + "st", next.styleToBundle());
            }
            bundle.putStringArrayList(String.valueOf(i), arrayList2);
            i++;
        }
        return bundle;
    }

    public void prepareEdit(ShapeComponent shapeComponent) {
        this.editShapeReference = shapeComponent;
    }

    public void removeSelected() {
        customBezier selectedBezier = getSelectedBezier();
        if (selectedBezier == null) {
            return;
        }
        if (!this.maskMode || selectedBezier.getCount() >= 3) {
            if ((this.customBeziers.size() >= 2 || selectedBezier.actions.count() >= 2) && !selectedBezier.removeSelected()) {
                this.customBeziers.remove(selectedBezier);
                if (!this.customBeziers.isEmpty()) {
                    selectBezier(this.customBeziers.get(r0.size() - 1));
                }
                notifySelectionChanged();
                invalidate();
            }
        }
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void removeSelectedBezier() {
        int indexOf;
        if (this.customBeziers.size() >= 2 && (indexOf = this.customBeziers.indexOf(getSelectedBezier())) != -1) {
            int i = indexOf - 1;
            if (i < 0) {
                i = Math.min(this.customBeziers.size() - 1, indexOf + 1);
            }
            this.customBeziers.get(i).selectMe();
            this.customBeziers.remove(indexOf);
            notifySelectionChanged();
            notifyMaskedObject();
        }
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void removeSelectedPoint() {
        removeSelected();
        reportActionability();
    }

    public void reportActionability() {
        customBezier selectedBezier = getSelectedBezier();
        OnBezierPanelAction onBezierPanelAction = this.listener;
        if (onBezierPanelAction == null || selectedBezier == null) {
            return;
        }
        onBezierPanelAction.pathChanged(selectedBezier.getCount(), selectedBezier.selected == selectedBezier.actions.tail, selectedBezier.closedContour, this.currMode == BezierMode.moveB);
    }

    public void restoreOptions() {
        clearMe();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void rotateBezier(final int i) {
        getSelectedBezierAndDo(new SelectedBezierAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.14
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.SelectedBezierAction
            public void doOnBezier(customBezier custombezier) {
                custombezier.rotate(i);
            }
        });
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void scaleBezier(final int i) {
        getSelectedBezierAndDo(new SelectedBezierAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.13
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.SelectedBezierAction
            public void doOnBezier(customBezier custombezier) {
                custombezier.scale(i);
            }
        });
    }

    public void selectBezier(customBezier custombezier) {
        Iterator<customBezier> it = this.customBeziers.iterator();
        while (it.hasNext()) {
            customBezier next = it.next();
            if (next != custombezier) {
                next.selected = null;
            } else {
                next.selectMe();
            }
        }
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void selectNextBezier() {
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= this.customBeziers.size() - 1) {
                break;
            }
            if (this.customBeziers.get(i).selected != null) {
                this.customBeziers.get(i).selected = null;
                this.customBeziers.get(i + 1).selectMe();
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            notifySelectionChanged();
        }
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void selectPrevBezier() {
        boolean z = true;
        int size = this.customBeziers.size() - 1;
        while (true) {
            if (size <= 0) {
                z = false;
                break;
            } else {
                if (this.customBeziers.get(size).selected != null) {
                    this.customBeziers.get(size).selected = null;
                    this.customBeziers.get(size - 1).selectMe();
                    break;
                }
                size--;
            }
        }
        if (z) {
            notifySelectionChanged();
        }
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void setCurrMode(BezierMode bezierMode) {
        this.currMode = bezierMode;
        reportActionability();
        invalidate();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void setFill(final int i, final int i2, final GradientMaker.GradientFill gradientFill) {
        getSelectedBezierAndDo(new SelectedBezierAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.8
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.SelectedBezierAction
            public void doOnBezier(customBezier custombezier) {
                custombezier.fillAlpha = i == unifiedColor_selector.TYPE_COLOR ? Color.alpha(i2) : 255;
                custombezier.getFillOptions().setFill_color(i2);
                custombezier.getFillOptions().setFill_gradient(gradientFill);
                custombezier.getFillOptions().setFill_type(i);
                BezierPanel.this.invalidate();
            }
        });
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void setFillOpacity(final int i) {
        getSelectedBezierAndDo(new SelectedBezierAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.7
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.SelectedBezierAction
            public void doOnBezier(customBezier custombezier) {
                custombezier.fillAlpha = i;
                BezierPanel.this.invalidate();
            }
        });
    }

    public void setListener(OnBezierPanelAction onBezierPanelAction) {
        this.listener = onBezierPanelAction;
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void setStroke(final int i, final int i2, final GradientMaker.GradientFill gradientFill) {
        getSelectedBezierAndDo(new SelectedBezierAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.11
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.SelectedBezierAction
            public void doOnBezier(customBezier custombezier) {
                custombezier.strokeAlpha = i == unifiedColor_selector.TYPE_COLOR ? Color.alpha(i2) : 255;
                custombezier.getFillOptions().setStroke_color(i2);
                custombezier.getFillOptions().setStroke_gradient(gradientFill);
                custombezier.getFillOptions().setStroke_type(i);
                BezierPanel.this.invalidate();
            }
        });
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void setStrokeCap(final Paint.Cap cap) {
        getSelectedBezierAndDo(new SelectedBezierAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.12
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.SelectedBezierAction
            public void doOnBezier(customBezier custombezier) {
                custombezier.getFillOptions().setStroke_cap(cap);
                BezierPanel.this.invalidate();
            }
        });
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void setStrokeOpacity(final int i) {
        getSelectedBezierAndDo(new SelectedBezierAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.10
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.SelectedBezierAction
            public void doOnBezier(customBezier custombezier) {
                custombezier.strokeAlpha = i;
                BezierPanel.this.invalidate();
            }
        });
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.OnBezierToolsAction
    public void setStrokeWidth(final int i) {
        getSelectedBezierAndDo(new SelectedBezierAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.9
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.SelectedBezierAction
            public void doOnBezier(customBezier custombezier) {
                custombezier.getFillOptions().setStroke_width(i);
                custombezier.updatedGeometry = true;
                BezierPanel.this.invalidate();
            }
        });
    }

    public void startNewDefault(boolean z) {
        ShapeComponent shapeComponent;
        if (z && (shapeComponent = this.editShapeReference) != null && shapeComponent.bezierShapeBundle != null) {
            RectF rectF = new RectF(0.0f, 0.0f, MainActivity.helperClass.getContainerWidth(), MainActivity.helperClass.getContainerHeight());
            Bundle bundle = this.editShapeReference.bezierShapeBundle;
            if (bundle != null && bundle.getStringArrayList(appStateConstants.BEZIER_CURVE_RECT) != null && bundle.size() >= 2) {
                RectF arrToRectF = commonFuncs.arrToRectF(bundle.getStringArrayList(appStateConstants.BEZIER_CURVE_RECT));
                for (String str : bundle.keySet()) {
                    if (!appStateConstants.BEZIER_CURVE_RECT.equals(str) && !str.endsWith("st")) {
                        addFromStringArrayList(bundle.getStringArrayList(str), arrToRectF, rectF, bundle.getBundle(str.concat("st")));
                    }
                }
                if (!this.customBeziers.isEmpty()) {
                    selectBezier(this.customBeziers.get(0));
                }
                OnBezierPanelAction onBezierPanelAction = this.listener;
                if (onBezierPanelAction != null) {
                    onBezierPanelAction.updateMode(BezierMode.dragP);
                }
                notifySelectionChanged();
                return;
            }
        }
        float width = getWidth();
        PointF pointF = new PointF(width * 0.5f, getHeight() * 0.5f);
        int i = 0;
        boolean z2 = false;
        while (true) {
            int i2 = i + 1;
            if (i >= 100 || z2) {
                break;
            }
            Iterator<customBezier> it = this.customBeziers.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().isStillDefault(pointF, width)) {
                        pointF.set((pointF.x + this.defaultOffset) % getWidth(), ((this.defaultOffset * 3.0f) + pointF.y) % getHeight());
                        z2 = false;
                        break;
                    }
                } else {
                    z2 = true;
                    break;
                }
            }
            i = i2;
        }
        startEmpty().doDefaultPreset(pointF, width);
        notifySelectionChanged();
    }

    public void startNewDefaultForMask(RectF rectF) {
        if (rectF == null) {
            return;
        }
        customBezier styleForMask = startEmpty().setStyleForMask();
        float f = this.defaultOffset;
        int i = this.maskOffsetCounter;
        this.maskOffsetCounter = i + 1;
        styleForMask.doDefaultPresetMask(rectF, f * i);
        notifySelectionChanged();
    }

    public void toggleRenderMode(boolean z) {
        this.renderMode = z;
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ZoomWidget.OnZoomListener
    public void zoomChanged(float f) {
        this.zoomF = f;
        invalidate();
    }
}
