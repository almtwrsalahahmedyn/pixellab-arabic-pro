package com.tawfiq.imaginstudio.imagetools.pixellab.layers;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject;
import com.tawfiq.imaginstudio.imagetools.pixellab.textContainer;
import com.tawfiq.imaginstudio.imagetools.pixellab.undo.History;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class LayersHolder extends FrameLayout implements LayerObject.OnLayerAction, textContainer.OnLayersListener {
    private boolean Enabled;
    OnButtonsListener buttonsListener;
    private boolean selectionMode;
    public static final int height = commonFuncs.dpToPxInt(74);
    public static final int verticalMargin = commonFuncs.dpToPxInt(4);
    public static final int horizontalMargin = commonFuncs.dpToPxInt(6);

    /* loaded from: classes.dex */
    public interface OnButtonsListener {
        void clickedQuickEditLayers(View view, History.ComponentType componentType, Rect rect);
    }

    public LayersHolder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.selectionMode = false;
        setWillNotDraw(false);
    }

    public void addLayerObject(String str, History.ComponentType componentType) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, height);
        layoutParams.gravity = 1;
        int i = horizontalMargin;
        layoutParams.leftMargin = i;
        layoutParams.rightMargin = i;
        LayerObject layerObject = new LayerObject(getContext(), str, componentType, this.selectionMode);
        layerObject.setLayerActionListener(this);
        addView(layerObject, layoutParams);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.OnLayerAction
    public void clickedEditButton(LayerObject layerObject, History.ComponentType componentType, Rect rect) {
        OnButtonsListener onButtonsListener = this.buttonsListener;
        if (onButtonsListener != null) {
            onButtonsListener.clickedQuickEditLayers(layerObject, componentType, rect);
        }
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.OnLayerAction
    public void deleteMyView(View view) {
        removeView(view);
        reArrangeLayers(false);
    }

    public void disable() {
        this.selectionMode = false;
        removeAllViews();
        this.Enabled = false;
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.OnLayerAction
    public void dragLayerFinish(LayerObject layerObject) {
        textContainer textContain = MainActivity.helperClass.getTextContain();
        int childCount = textContain.getChildCount() - 1;
        float y = layerObject.getY();
        int i = verticalMargin;
        int max = Math.max(0, childCount - ((int) Math.floor(((y - i) / (height + i)) + 0.5f)));
        String str = layerObject.reference;
        View view = layerObject.referencedText;
        if (view == null) {
            view = layerObject.referencedShape;
        }
        textContain.setObjectIdInLayout(str, view, max, true);
    }

    public void enable() {
        this.selectionMode = false;
        this.Enabled = true;
        populateLayers();
    }

    public ArrayList<String> getSelectedReferences() {
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i = 0; i < getChildCount(); i++) {
            if (getChildAt(i) instanceof LayerObject) {
                LayerObject layerObject = (LayerObject) getChildAt(i);
                if (layerObject.isChecked()) {
                    arrayList.add(layerObject.reference);
                }
            }
        }
        return arrayList;
    }

    public boolean isSelectionMode() {
        return this.selectionMode;
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.textContainer.OnLayersListener
    public void objectCountChanged() {
        if (this.Enabled) {
            populateLayers();
        }
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.textContainer.OnLayersListener
    public void objectZChange() {
        reArrangeLayers(true);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        try {
            super.onMeasure(i, i2);
            if (isInEditMode()) {
                setMeasuredDimension(i, i2);
                return;
            }
            ScrollView layerHolderScroll = MainActivity.helperClass.getLayerHolderScroll();
            int childCount = getChildCount();
            int i3 = height;
            int i4 = verticalMargin;
            setMeasuredDimension(i, Math.max(((i3 + i4) * childCount) + i4, layerHolderScroll != null ? layerHolderScroll.getHeight() : 0));
        } catch (Exception unused) {
            super.onMeasure(i, i2);
        }
    }

    public void populateLayers() {
        String str;
        History.ComponentType componentType;
        removeAllViews();
        textContainer textContain = MainActivity.helperClass.getTextContain();
        if (textContain == null) {
            return;
        }
        for (int i = 0; i < textContain.getChildCount(); i++) {
            if (textContain.getChildAt(i) instanceof TextComponent) {
                str = ((TextComponent) textContain.getChildAt(i)).reference;
                componentType = History.ComponentType.text;
            } else if (textContain.getChildAt(i) instanceof ShapeComponent) {
                str = ((ShapeComponent) textContain.getChildAt(i)).reference;
                componentType = History.ComponentType.shape;
            } else {
                str = null;
                componentType = null;
            }
            if (str != null) {
                addLayerObject(str, componentType);
            }
        }
        reArrangeLayers(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004b, code lost:
    
        if (r9 != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004d, code lost:
    
        r2.animate().y(r3).setDuration(200).start();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
    
        r2.setY(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0085, code lost:
    
        if (r9 != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void reArrangeLayers(boolean r9) {
        /*
            r8 = this;
            com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.displayInfo r0 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.helperClass
            com.tawfiq.imaginstudio.imagetools.pixellab.textContainer r0 = r0.getTextContain()
            if (r0 == 0) goto L8b
            int r1 = r0.getChildCount()
            if (r1 != 0) goto L10
            goto L8b
        L10:
            r1 = 0
        L11:
            int r2 = r8.getChildCount()
            if (r1 >= r2) goto L8b
            android.view.View r2 = r8.getChildAt(r1)
            boolean r2 = r2 instanceof com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject
            if (r2 == 0) goto L88
            android.view.View r2 = r8.getChildAt(r1)
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject r2 = (com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject) r2
            com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent r3 = r2.referencedText
            r4 = 200(0xc8, double:9.9E-322)
            if (r3 == 0) goto L61
            int r3 = r0.getChildCount()
            int r3 = r3 + (-1)
            com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent r6 = r2.referencedText
            int r6 = r0.indexOfChild(r6)
            int r3 = r3 - r6
            if (r3 < 0) goto L88
            int r6 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayersHolder.height
            int r7 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayersHolder.verticalMargin
            int r6 = r6 + r7
            int r6 = r6 * r3
            int r6 = r6 + r7
            float r3 = (float) r6
            float r6 = r2.getY()
            int r6 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r6 == 0) goto L88
            if (r9 == 0) goto L5d
        L4d:
            android.view.ViewPropertyAnimator r2 = r2.animate()
            android.view.ViewPropertyAnimator r2 = r2.y(r3)
            android.view.ViewPropertyAnimator r2 = r2.setDuration(r4)
            r2.start()
            goto L88
        L5d:
            r2.setY(r3)
            goto L88
        L61:
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent r3 = r2.referencedShape
            if (r3 == 0) goto L88
            int r3 = r0.getChildCount()
            int r3 = r3 + (-1)
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent r6 = r2.referencedShape
            int r6 = r0.indexOfChild(r6)
            int r3 = r3 - r6
            if (r3 < 0) goto L88
            int r6 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayersHolder.height
            int r7 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayersHolder.verticalMargin
            int r6 = r6 + r7
            int r6 = r6 * r3
            int r6 = r6 + r7
            float r3 = (float) r6
            float r6 = r2.getY()
            int r6 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r6 == 0) goto L88
            if (r9 == 0) goto L5d
            goto L4d
        L88:
            int r1 = r1 + 1
            goto L11
        L8b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayersHolder.reArrangeLayers(boolean):void");
    }

    public void setButtonsListener(OnButtonsListener onButtonsListener) {
        this.buttonsListener = onButtonsListener;
    }

    public void toggleSelectionMode() {
        this.selectionMode = !this.selectionMode;
        for (int i = 0; i < getChildCount(); i++) {
            if (getChildAt(i) instanceof LayerObject) {
                ((LayerObject) getChildAt(i)).setSelectionMode(this.selectionMode);
            }
        }
    }
}
