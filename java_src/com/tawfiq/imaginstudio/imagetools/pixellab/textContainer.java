package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.ImageSource;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.DrawingPanelRenderer;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.undo.History;
import java.io.File;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class textContainer extends RelativeLayout implements TextComponent.OnSelectEventListener, ShapeComponent.OnSelectEventListener_shape {
    public static final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    public int curr_id;
    public int curr_id_shape;
    int lastInserted;
    int lastInserted_shape;
    OnLayersListener layersListener;
    OnSelectionChangedListener mSelectionListener;
    public Map<Integer, ShapeComponent> shapes;
    public Map<Integer, TextComponent> texts;
    int touchDownId;
    public boolean willResize;
    static SecureRandom rnd = new SecureRandom();
    static final int abLength = 62;

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.textContainer$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$imaginstudio$imagetools$pixellab$textContainer$floatObject;

        static {
            int[] iArr = new int[floatObject.values().length];
            $SwitchMap$com$imaginstudio$imagetools$pixellab$textContainer$floatObject = iArr;
            try {
                iArr[floatObject.left.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$textContainer$floatObject[floatObject.right.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$textContainer$floatObject[floatObject.bottom.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$textContainer$floatObject[floatObject.top.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$textContainer$floatObject[floatObject.center_hor.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$textContainer$floatObject[floatObject.center_ver.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes.dex */
    public interface OnLayersListener {
        void objectCountChanged();

        void objectZChange();
    }

    /* loaded from: classes.dex */
    public interface OnSelectionChangedListener {
        void objectTouch();

        void onObjectZChanged(String str, int i);

        void onShapeCreate(String str);

        void onShapeDelete(Bundle bundle, int i, String str);

        void onShapeGeometryChanged(Bundle bundle, String str);

        void onShapeSelectionChanged(boolean z, int i);

        void onTextCreate(String str);

        void onTextDelete(Bundle bundle, int i, String str);

        void onTextDoubleTap();

        void onTextGeometryChanged(Bundle bundle, String str);

        void onTextSelectionChanged(boolean z);
    }

    /* loaded from: classes.dex */
    public enum floatObject {
        left,
        right,
        bottom,
        top,
        center_hor,
        center_ver
    }

    public textContainer(Context context) {
        super(context);
        this.texts = new HashMap();
        this.shapes = new HashMap();
        this.lastInserted = -1;
        this.curr_id = -1;
        this.lastInserted_shape = -1;
        this.curr_id_shape = -1;
        this.touchDownId = -1;
        setClipChildren(false);
        setLayerType(0, null);
        setDrawingCacheEnabled(true);
    }

    private void clickedNothing() {
        selectTextId(-1);
        selectShapeId(-1);
    }

    private ShapeComponent getCurrentOrFirstShape() {
        if (this.shapes.size() <= 0) {
            return null;
        }
        int i = this.curr_id_shape;
        return i != -1 ? this.shapes.get(Integer.valueOf(i)) : this.shapes.get(0);
    }

    private TextComponent getCurrentOrFirstText() {
        if (this.texts.size() <= 0) {
            return null;
        }
        int i = this.curr_id;
        return i != -1 ? this.texts.get(Integer.valueOf(i)) : this.texts.get(0);
    }

    private RectF getObjectsBoundingBox(ArrayList<String> arrayList) {
        Iterator<Map.Entry<Integer, ShapeComponent>> it = this.shapes.entrySet().iterator();
        float f = -2.14748365E9f;
        float f2 = -2.14748365E9f;
        float f3 = 2.14748365E9f;
        float f4 = 2.14748365E9f;
        while (it.hasNext()) {
            ShapeComponent shapeComponent = this.shapes.get(Integer.valueOf(it.next().getKey().intValue()));
            if (arrayList.contains(shapeComponent.reference)) {
                if (shapeComponent.getX() < f3) {
                    f3 = shapeComponent.getX();
                }
                if (shapeComponent.getY() < f4) {
                    f4 = shapeComponent.getY();
                }
                if (shapeComponent.getX() + shapeComponent.width_f > f) {
                    f = shapeComponent.getX() + shapeComponent.width_f;
                }
                if (shapeComponent.getY() + shapeComponent.height_f > f2) {
                    f2 = shapeComponent.getY() + shapeComponent.height_f;
                }
            }
        }
        Iterator<Map.Entry<Integer, TextComponent>> it2 = this.texts.entrySet().iterator();
        while (it2.hasNext()) {
            TextComponent textComponent = this.texts.get(Integer.valueOf(it2.next().getKey().intValue()));
            if (arrayList.contains(textComponent.reference)) {
                if (textComponent.getX() < f3) {
                    f3 = textComponent.getX();
                }
                if (textComponent.getY() < f4) {
                    f4 = textComponent.getY();
                }
                if (textComponent.getX() + textComponent.textWidth > f) {
                    f = textComponent.getX() + textComponent.textWidth;
                }
                if (textComponent.getY() + textComponent.textHeight > f2) {
                    f2 = textComponent.getY() + textComponent.textHeight;
                }
            }
        }
        return new RectF(f3, f4, f, f2);
    }

    public static String getRandomString(int i) {
        StringBuilder sb = new StringBuilder(i);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(AB.charAt(rnd.nextInt(abLength)));
        }
        return sb.toString();
    }

    private void msg(String str) {
        Toast.makeText(getContext(), str, 0).show();
    }

    private void passEventTo(MotionEvent motionEvent, int i) {
        if (i < 0 || i >= getChildCount()) {
            return;
        }
        ((AbstractComponent) getChildAt(i)).OnCustomTouchEvent(new CustomMotionEvent(motionEvent, getChildAt(i)));
    }

    private int passEventToAll(MotionEvent motionEvent) {
        CustomMotionEvent customMotionEvent = new CustomMotionEvent();
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            customMotionEvent.updateWith(motionEvent, getChildAt(childCount));
            if (((AbstractComponent) getChildAt(childCount)).OnCustomTouchEvent(customMotionEvent)) {
                return childCount;
            }
        }
        return -1;
    }

    private void removeCurrent() {
        removeText(this.curr_id, true);
    }

    private void removeCurrentShape() {
        removeShape(this.curr_id_shape, true);
    }

    private void removeShape(int i, boolean z) {
        if (i != -1) {
            if (this.mSelectionListener != null) {
                ShapeComponent shapeComponent = this.shapes.get(Integer.valueOf(i));
                this.mSelectionListener.onShapeDelete(shapeComponent.saveToBundle(), indexOfChild(shapeComponent), shapeComponent.reference);
            }
            removeView(this.shapes.get(Integer.valueOf(i)), z);
            this.shapes.remove(Integer.valueOf(i));
            if (i == this.curr_id_shape) {
                selectShapeId(-1);
            }
        }
    }

    private void removeText(int i, boolean z) {
        if (i != -1) {
            if (this.mSelectionListener != null) {
                TextComponent textComponent = this.texts.get(Integer.valueOf(i));
                this.mSelectionListener.onTextDelete(textComponent.saveToBundle(), indexOfChild(textComponent), textComponent.reference);
            }
            removeView(this.texts.get(Integer.valueOf(i)), z);
            this.texts.remove(Integer.valueOf(i));
            if (i == this.curr_id) {
                selectTextId(-1);
            }
        }
    }

    public String addNewShape(int i, ImageSource imageSource, boolean z, float f, float f2, float f3, float f4) {
        this.lastInserted_shape++;
        String randomString = getRandomString(5);
        ShapeComponent shapeComponent = new ShapeComponent(getContext(), i, imageSource, f3, f4, randomString);
        this.shapes.put(Integer.valueOf(this.lastInserted_shape), shapeComponent);
        shapeComponent.assigned_id_shape = this.lastInserted_shape;
        selectTextId(-1);
        selectShapeId(this.lastInserted_shape);
        shapeComponent.setTouchEventListener(this);
        if (z) {
            PointF viewOrigin = MainActivity.helperClass.getViewOrigin();
            shapeComponent.setX(viewOrigin.x);
            shapeComponent.setY(viewOrigin.y);
        } else {
            shapeComponent.setX(f);
            shapeComponent.setY(f2);
        }
        addView(shapeComponent, new RelativeLayout.LayoutParams(-2, -2));
        OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onShapeCreate(randomString);
        }
        return randomString;
    }

    public String addNewText(int i) {
        this.lastInserted++;
        String randomString = getRandomString(5);
        TextComponent textComponent = new TextComponent(getContext(), i, randomString);
        this.texts.put(Integer.valueOf(this.lastInserted), textComponent);
        textComponent.assigned_id = this.lastInserted;
        selectShapeId(-1);
        selectTextId(this.lastInserted);
        textComponent.setTouchEventListener(this);
        PointF viewOrigin = MainActivity.helperClass.getViewOrigin();
        textComponent.setX(viewOrigin.x);
        textComponent.setY(viewOrigin.y);
        addView(textComponent);
        OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onTextCreate(randomString);
        }
        return randomString;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        OnLayersListener onLayersListener = this.layersListener;
        if (onLayersListener != null) {
            onLayersListener.objectCountChanged();
        }
    }

    public void bundleObjects(Bundle bundle) {
        StringBuilder sb;
        Bundle bundle2 = new Bundle();
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i = 0; i < getChildCount(); i++) {
            if (getChildAt(i) instanceof TextComponent) {
                bundle2.putBundle("text" + String.valueOf(i), ((TextComponent) getChildAt(i)).saveToBundle());
                sb = new StringBuilder("text");
            } else if (getChildAt(i) instanceof ShapeComponent) {
                bundle2.putBundle("shape" + String.valueOf(i), ((ShapeComponent) getChildAt(i)).saveToBundle());
                sb = new StringBuilder("shape");
            }
            sb.append(String.valueOf(i));
            arrayList.add(sb.toString());
        }
        if (arrayList.isEmpty()) {
            bundle2.putBoolean(appStateConstants.OBJECTS_SKIP_EMPTY, true);
        }
        bundle.putBundle(appStateConstants.OBJECTS_BUNDLE, bundle2);
        bundle.putStringArrayList(appStateConstants.OBJECTS_IDS, arrayList);
    }

    public Bundle bundleSelectedObjects(ArrayList<String> arrayList) {
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        ArrayList<String> arrayList2 = new ArrayList<>();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof TextComponent) {
                TextComponent textComponent = (TextComponent) childAt;
                if (arrayList.contains(textComponent.reference)) {
                    String str = "text" + i;
                    bundle2.putBundle(str, textComponent.saveToBundle());
                    arrayList2.add(str);
                }
            } else if (childAt instanceof ShapeComponent) {
                ShapeComponent shapeComponent = (ShapeComponent) childAt;
                if (arrayList.contains(shapeComponent.reference)) {
                    String str2 = "shape" + i;
                    bundle2.putBundle(str2, shapeComponent.saveToBundle());
                    arrayList2.add(str2);
                }
            }
        }
        bundle.putBundle(appStateConstants.OBJECTS_BUNDLE, bundle2);
        bundle.putStringArrayList(appStateConstants.OBJECTS_IDS, arrayList2);
        return bundle;
    }

    public PointF computeObjectsCenter(ArrayList<String> arrayList) {
        Iterator<Map.Entry<Integer, ShapeComponent>> it = this.shapes.entrySet().iterator();
        float f = 0.0f;
        float f2 = 0.0f;
        int i = 0;
        while (it.hasNext()) {
            int intValue = it.next().getKey().intValue();
            if (arrayList.contains(this.shapes.get(Integer.valueOf(intValue)).reference)) {
                f += this.shapes.get(Integer.valueOf(intValue)).getX() + this.shapes.get(Integer.valueOf(intValue)).getPivotX();
                f2 += this.shapes.get(Integer.valueOf(intValue)).getY() + this.shapes.get(Integer.valueOf(intValue)).getPivotY();
                i++;
            }
        }
        Iterator<Map.Entry<Integer, TextComponent>> it2 = this.texts.entrySet().iterator();
        while (it2.hasNext()) {
            int intValue2 = it2.next().getKey().intValue();
            if (arrayList.contains(this.texts.get(Integer.valueOf(intValue2)).reference)) {
                f += this.texts.get(Integer.valueOf(intValue2)).getX() + this.texts.get(Integer.valueOf(intValue2)).getPivotX();
                f2 += this.texts.get(Integer.valueOf(intValue2)).getY() + this.texts.get(Integer.valueOf(intValue2)).getPivotY();
                i++;
            }
        }
        float f3 = i;
        return new PointF(f / f3, f2 / f3);
    }

    public void copyCurrentShape() {
        this.lastInserted_shape++;
        String randomString = getRandomString(5);
        ShapeComponent shapeComponent = new ShapeComponent(getContext(), this.shapes.get(Integer.valueOf(this.curr_id_shape)).saveToBundle(), true, randomString);
        this.shapes.put(Integer.valueOf(this.lastInserted_shape), shapeComponent);
        shapeComponent.assigned_id_shape = this.lastInserted_shape;
        selectTextId(-1);
        selectShapeId(this.lastInserted_shape);
        shapeComponent.setTouchEventListener(this);
        PointF viewOrigin = MainActivity.helperClass.getViewOrigin();
        shapeComponent.setX(viewOrigin.x);
        shapeComponent.setY(viewOrigin.y);
        addView(shapeComponent);
        OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onShapeCreate(randomString);
        }
    }

    public void copyCurrentText() {
        this.lastInserted++;
        String randomString = getRandomString(5);
        TextComponent textComponent = new TextComponent(getContext(), this.texts.get(Integer.valueOf(this.curr_id)).saveToBundle(), true, randomString);
        this.texts.put(Integer.valueOf(this.lastInserted), textComponent);
        textComponent.assigned_id = this.lastInserted;
        selectShapeId(-1);
        selectTextId(this.lastInserted);
        textComponent.setTouchEventListener(this);
        PointF viewOrigin = MainActivity.helperClass.getViewOrigin();
        textComponent.setX(viewOrigin.x);
        textComponent.setY(viewOrigin.y);
        addView(textComponent);
        OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onTextCreate(randomString);
        }
    }

    public void editCurrShape(int i, ImageSource imageSource, boolean z, int i2, int i3) {
        int i4;
        if (imageSource.checkValid() && (i4 = this.curr_id_shape) != -1) {
            if (!z) {
                i2 = 1;
                i3 = 1;
            }
            this.shapes.get(Integer.valueOf(i4)).resetCropPortion();
            this.shapes.get(Integer.valueOf(this.curr_id_shape)).editSrc(i, imageSource, z, i2, i3);
        }
    }

    public void editCurrentText(String str) {
        int i = this.curr_id;
        if (i == -1 || this.texts.get(Integer.valueOf(i)).returnText().equals(str)) {
            return;
        }
        this.texts.get(Integer.valueOf(this.curr_id)).setText(str, true);
    }

    public History.ComponentType getCurrentSelectedType() {
        if (this.curr_id != -1) {
            return History.ComponentType.text;
        }
        if (this.curr_id_shape != -1) {
            return History.ComponentType.shape;
        }
        return null;
    }

    public ShapeComponent getCurrentShape() {
        int i = this.curr_id_shape;
        if (i != -1) {
            return this.shapes.get(Integer.valueOf(i));
        }
        return null;
    }

    public TextComponent getCurrentText() {
        int i = this.curr_id;
        if (i != -1) {
            return this.texts.get(Integer.valueOf(i));
        }
        return null;
    }

    public PointF getGlobalCenter(View view) {
        return new PointF(view.getPivotX() + view.getX(), view.getPivotY() + view.getY());
    }

    public View getObjectByRef(String str) {
        TextComponent textByRef = getTextByRef(str);
        return textByRef != null ? textByRef : getShapeByRef(str);
    }

    public AbstractComponent getSelectedComponent() {
        int i = this.curr_id;
        return i != -1 ? this.texts.get(Integer.valueOf(i)) : getCurrentShape();
    }

    public String getSelectedReference() {
        int i = this.curr_id;
        if (i != -1) {
            return this.texts.get(Integer.valueOf(i)).reference;
        }
        int i2 = this.curr_id_shape;
        return i2 != -1 ? this.shapes.get(Integer.valueOf(i2)).reference : "0";
    }

    public ShapeComponent getShapeByRef(String str) {
        Iterator<Map.Entry<Integer, ShapeComponent>> it = this.shapes.entrySet().iterator();
        while (it.hasNext()) {
            int intValue = it.next().getKey().intValue();
            if (commonFuncs.compareStrings(this.shapes.get(Integer.valueOf(intValue)).reference, str)) {
                return this.shapes.get(Integer.valueOf(intValue));
            }
        }
        return null;
    }

    public TextComponent getTextByRef(String str) {
        Iterator<Map.Entry<Integer, TextComponent>> it = this.texts.entrySet().iterator();
        while (it.hasNext()) {
            int intValue = it.next().getKey().intValue();
            if (commonFuncs.compareStrings(this.texts.get(Integer.valueOf(intValue)).reference, str)) {
                return this.texts.get(Integer.valueOf(intValue));
            }
        }
        return null;
    }

    public void hideAllBut(ArrayList<String> arrayList, boolean z) {
        Iterator<Map.Entry<Integer, ShapeComponent>> it = this.shapes.entrySet().iterator();
        while (it.hasNext()) {
            ShapeComponent shapeComponent = this.shapes.get(Integer.valueOf(it.next().getKey().intValue()));
            if (arrayList == null || !arrayList.contains(shapeComponent.reference)) {
                if (z) {
                    shapeComponent.hideTemp();
                } else {
                    shapeComponent.unhideTemp();
                }
            }
        }
        Iterator<Map.Entry<Integer, TextComponent>> it2 = this.texts.entrySet().iterator();
        while (it2.hasNext()) {
            TextComponent textComponent = this.texts.get(Integer.valueOf(it2.next().getKey().intValue()));
            if (arrayList == null || !arrayList.contains(textComponent.reference)) {
                if (z) {
                    textComponent.hideTemp();
                } else {
                    textComponent.unhideTemp();
                }
            }
        }
    }

    public void hideLockObjects(ArrayList<String> arrayList, boolean z) {
        Iterator<Map.Entry<Integer, ShapeComponent>> it = this.shapes.entrySet().iterator();
        while (it.hasNext()) {
            ShapeComponent shapeComponent = this.shapes.get(Integer.valueOf(it.next().getKey().intValue()));
            if (arrayList.contains(shapeComponent.reference)) {
                if (z) {
                    shapeComponent.setHidden(!shapeComponent.isHidden());
                } else {
                    shapeComponent.setLocked(!shapeComponent.isLocked());
                }
            }
        }
        Iterator<Map.Entry<Integer, TextComponent>> it2 = this.texts.entrySet().iterator();
        while (it2.hasNext()) {
            TextComponent textComponent = this.texts.get(Integer.valueOf(it2.next().getKey().intValue()));
            if (arrayList.contains(textComponent.reference)) {
                if (z) {
                    textComponent.setHidden(!textComponent.isHidden());
                } else {
                    textComponent.setLocked(!textComponent.isLocked());
                }
            }
        }
    }

    public void mergeObjects(ArrayList<String> arrayList) {
        try {
            Bitmap createBitmap = Bitmap.createBitmap((int) (getWidth() * 2.0f), (int) (getHeight() * 2.0f), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            canvas.scale(2.0f, 2.0f);
            setVisibility(4);
            setRenderMode(true, 2.0f);
            hideAllBut(arrayList, true);
            draw(canvas);
            Rect autoCropBound = DrawingPanelRenderer.getAutoCropBound(createBitmap);
            if (autoCropBound.right == -1 || autoCropBound.left == -1 || autoCropBound.top == -1 || autoCropBound.bottom == -1) {
                throw new Exception();
            }
            Bitmap autoCropBitmap = DrawingPanelRenderer.autoCropBitmap(createBitmap, autoCropBound);
            File cacheFile = commonFuncs.getCacheFile(commonFuncs.generateName("drawingMerged"), getContext());
            commonFuncs.saveFile(autoCropBitmap, cacheFile, 1);
            Bundle bundleSelectedObjects = bundleSelectedObjects(arrayList);
            removeObjectsByReferences(arrayList);
            setRenderMode(false, 1.0f);
            unHideAll();
            setVisibility(0);
            addNewShape(ShapeComponent.SHAPE_TYPE_DRAWING, new ImageSource(cacheFile.getPath()), false, autoCropBound.left / 2.0f, autoCropBound.top / 2.0f, autoCropBound.width() / 2.0f, autoCropBound.height() / 2.0f);
            ShapeComponent currentShape = getCurrentShape();
            if (currentShape != null) {
                currentShape.mergedDataBundle = bundleSelectedObjects;
            }
        } catch (Throwable unused) {
            Toast.makeText(getContext(), R.string.error_merge, 0).show();
        }
    }

    public void moveCurrShapeToBack() {
        int i = this.curr_id_shape;
        if (i != -1) {
            ShapeComponent shapeComponent = this.shapes.get(Integer.valueOf(i));
            int indexOfChild = indexOfChild(shapeComponent);
            OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
            if (onSelectionChangedListener != null) {
                onSelectionChangedListener.onObjectZChanged(shapeComponent.reference, indexOfChild(shapeComponent));
            }
            if (indexOfChild > 0) {
                detachViewFromParent(indexOfChild);
                attachViewToParent(shapeComponent, 0, shapeComponent.getLayoutParams());
            }
            OnLayersListener onLayersListener = this.layersListener;
            if (onLayersListener != null) {
                onLayersListener.objectZChange();
            }
            invalidate();
        }
    }

    public void moveCurrShapeToFront() {
        ShapeComponent shapeComponent = this.shapes.get(Integer.valueOf(this.curr_id_shape));
        OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onObjectZChanged(shapeComponent.reference, indexOfChild(shapeComponent));
        }
        shapeComponent.bringToFront();
        OnLayersListener onLayersListener = this.layersListener;
        if (onLayersListener != null) {
            onLayersListener.objectZChange();
        }
        invalidate();
    }

    public void moveCurrTextToBack() {
        int i = this.curr_id;
        if (i != -1) {
            TextComponent textComponent = this.texts.get(Integer.valueOf(i));
            int indexOfChild = indexOfChild(textComponent);
            OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
            if (onSelectionChangedListener != null) {
                onSelectionChangedListener.onObjectZChanged(textComponent.reference, indexOfChild(textComponent));
            }
            if (indexOfChild > 0) {
                detachViewFromParent(indexOfChild);
                attachViewToParent(textComponent, 0, textComponent.getLayoutParams());
            }
            OnLayersListener onLayersListener = this.layersListener;
            if (onLayersListener != null) {
                onLayersListener.objectZChange();
            }
            invalidate();
        }
    }

    public void moveCurrTextToFront() {
        TextComponent textComponent = this.texts.get(Integer.valueOf(this.curr_id));
        OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onObjectZChanged(textComponent.reference, indexOfChild(textComponent));
        }
        textComponent.bringToFront();
        OnLayersListener onLayersListener = this.layersListener;
        if (onLayersListener != null) {
            onLayersListener.objectZChange();
        }
        invalidate();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent.OnSelectEventListener_shape
    public void onEvent_SelectShape(int i) {
        OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.objectTouch();
        }
        selectTextId(-1);
        selectShapeId(i);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent.OnSelectEventListener
    public void onEvent_SelectText(int i) {
        OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.objectTouch();
        }
        selectShapeId(-1);
        selectTextId(i);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent.OnSelectEventListener_shape
    public void onEvent_ShapeGeometryChanged(Bundle bundle, String str) {
        OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onShapeGeometryChanged(bundle, str);
        }
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent.OnSelectEventListener
    public void onEvent_TextGeometryChanged(Bundle bundle, String str) {
        OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onTextGeometryChanged(bundle, str);
        }
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent.OnSelectEventListener
    public void onEvent_doubleTapText() {
        OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onTextDoubleTap();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (!(i == i3 && i2 == i4) && this.willResize) {
            Iterator<Map.Entry<Integer, ShapeComponent>> it = this.shapes.entrySet().iterator();
            while (it.hasNext()) {
                this.shapes.get(Integer.valueOf(it.next().getKey().intValue())).rearrange(i, i2, i3, i4);
            }
            Iterator<Map.Entry<Integer, TextComponent>> it2 = this.texts.entrySet().iterator();
            while (it2.hasNext()) {
                this.texts.get(Integer.valueOf(it2.next().getKey().intValue())).rearrange(i, i2, i3, i4);
            }
            this.willResize = false;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            this.touchDownId = passEventToAll(motionEvent);
        } else if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
            int i = this.touchDownId;
            if (i == -1) {
                clickedNothing();
            } else {
                passEventTo(motionEvent, i);
            }
            this.touchDownId = -1;
        } else {
            passEventTo(motionEvent, this.touchDownId);
        }
        return true;
    }

    public void positionObjects(ArrayList<String> arrayList, float f, float f2) {
        Iterator<Map.Entry<Integer, ShapeComponent>> it = this.shapes.entrySet().iterator();
        while (it.hasNext()) {
            ShapeComponent shapeComponent = this.shapes.get(Integer.valueOf(it.next().getKey().intValue()));
            if (arrayList.contains(shapeComponent.reference)) {
                shapeComponent.setX(shapeComponent.getX() + f);
                shapeComponent.setY(shapeComponent.getY() + f2);
            }
        }
        Iterator<Map.Entry<Integer, TextComponent>> it2 = this.texts.entrySet().iterator();
        while (it2.hasNext()) {
            TextComponent textComponent = this.texts.get(Integer.valueOf(it2.next().getKey().intValue()));
            if (arrayList.contains(textComponent.reference)) {
                textComponent.setX(textComponent.getX() + f);
                textComponent.setY(textComponent.getY() + f2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void recreateObjects(Bundle bundle, ArrayList<String> arrayList) {
        ShapeComponent shapeComponent;
        if (arrayList != null) {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next.contains("shape")) {
                    this.lastInserted_shape++;
                    ShapeComponent shapeComponent2 = new ShapeComponent(getContext(), bundle.getBundle(next), false, getRandomString(5));
                    this.shapes.put(Integer.valueOf(this.lastInserted_shape), shapeComponent2);
                    shapeComponent2.assigned_id_shape = this.lastInserted_shape;
                    shapeComponent2.setTouchEventListener(this);
                    shapeComponent = shapeComponent2;
                } else if (next.contains("text")) {
                    this.lastInserted++;
                    TextComponent textComponent = new TextComponent(getContext(), bundle.getBundle(next), false, getRandomString(5));
                    this.texts.put(Integer.valueOf(this.lastInserted), textComponent);
                    textComponent.assigned_id = this.lastInserted;
                    textComponent.setTouchEventListener(this);
                    shapeComponent = textComponent;
                }
                addView(shapeComponent, arrayList.indexOf(next));
            }
        }
    }

    public void redrawAll() {
        Iterator<Map.Entry<Integer, ShapeComponent>> it = this.shapes.entrySet().iterator();
        while (it.hasNext()) {
            this.shapes.get(Integer.valueOf(it.next().getKey().intValue())).postInvalidate();
        }
        Iterator<Map.Entry<Integer, TextComponent>> it2 = this.texts.entrySet().iterator();
        while (it2.hasNext()) {
            this.texts.get(Integer.valueOf(it2.next().getKey().intValue())).postInvalidate();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0011. Please report as an issue. */
    public void relativePosObjects(ArrayList<String> arrayList, floatObject floatobject) {
        float f;
        float containerWidth;
        float f2;
        float containerHeight;
        float f3;
        float f4;
        float f5;
        RectF objectsBoundingBox = getObjectsBoundingBox(arrayList);
        switch (AnonymousClass1.$SwitchMap$com$imaginstudio$imagetools$pixellab$textContainer$floatObject[floatobject.ordinal()]) {
            case 1:
                f = objectsBoundingBox.left * (-1.0f);
                f5 = 0.0f;
                break;
            case 2:
                containerWidth = MainActivity.helperClass.getContainerWidth();
                f2 = objectsBoundingBox.right;
                f = containerWidth - f2;
                f5 = 0.0f;
                break;
            case 3:
                containerHeight = MainActivity.helperClass.getContainerHeight();
                f3 = objectsBoundingBox.bottom;
                f4 = containerHeight - f3;
                f5 = f4;
                f = 0.0f;
                break;
            case 4:
                f4 = objectsBoundingBox.top * (-1.0f);
                f5 = f4;
                f = 0.0f;
                break;
            case 5:
                containerWidth = MainActivity.helperClass.getContainerWidth() * 0.5f;
                f2 = objectsBoundingBox.centerX();
                f = containerWidth - f2;
                f5 = 0.0f;
                break;
            case 6:
                containerHeight = MainActivity.helperClass.getContainerHeight() * 0.5f;
                f3 = objectsBoundingBox.centerY();
                f4 = containerHeight - f3;
                f5 = f4;
                f = 0.0f;
                break;
            default:
                f = 0.0f;
                f5 = 0.0f;
                break;
        }
        if (f == 0.0f && f5 == 0.0f) {
            return;
        }
        Iterator<Map.Entry<Integer, ShapeComponent>> it = this.shapes.entrySet().iterator();
        while (it.hasNext()) {
            ShapeComponent shapeComponent = this.shapes.get(Integer.valueOf(it.next().getKey().intValue()));
            if (arrayList.contains(shapeComponent.reference)) {
                shapeComponent.setX(shapeComponent.getX() + f);
                shapeComponent.setY(shapeComponent.getY() + f5);
            }
        }
        Iterator<Map.Entry<Integer, TextComponent>> it2 = this.texts.entrySet().iterator();
        while (it2.hasNext()) {
            TextComponent textComponent = this.texts.get(Integer.valueOf(it2.next().getKey().intValue()));
            if (arrayList.contains(textComponent.reference)) {
                textComponent.setX(textComponent.getX() + f);
                textComponent.setY(textComponent.getY() + f5);
            }
        }
    }

    public void removeCurrentObject() {
        if (this.curr_id != -1) {
            removeCurrent();
        } else if (this.curr_id_shape != -1) {
            removeCurrentShape();
        }
    }

    public void removeObjectByReference(History.ComponentType componentType, String str, boolean z) {
        if (componentType == History.ComponentType.unspecified || componentType == History.ComponentType.text) {
            Iterator<Map.Entry<Integer, TextComponent>> it = this.texts.entrySet().iterator();
            while (it.hasNext()) {
                int intValue = it.next().getKey().intValue();
                if (this.texts.get(Integer.valueOf(intValue)).reference.equals(str)) {
                    removeText(intValue, z);
                    return;
                }
            }
        }
        if (componentType == History.ComponentType.unspecified || componentType == History.ComponentType.shape) {
            Iterator<Map.Entry<Integer, ShapeComponent>> it2 = this.shapes.entrySet().iterator();
            while (it2.hasNext()) {
                int intValue2 = it2.next().getKey().intValue();
                if (this.shapes.get(Integer.valueOf(intValue2)).reference.equals(str)) {
                    removeShape(intValue2, z);
                    return;
                }
            }
        }
    }

    public void removeObjectsByReferences(ArrayList<String> arrayList) {
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                removeObjectByReference(History.ComponentType.unspecified, it.next(), false);
            }
        }
        OnLayersListener onLayersListener = this.layersListener;
        if (onLayersListener != null) {
            onLayersListener.objectCountChanged();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
        OnLayersListener onLayersListener = this.layersListener;
        if (onLayersListener != null) {
            onLayersListener.objectCountChanged();
        }
    }

    public void removeView(View view, boolean z) {
        if (z) {
            removeView(view);
        } else {
            super.removeView(view);
        }
    }

    public void resetAll() {
        removeAllViews();
        this.texts.clear();
        this.shapes.clear();
        this.lastInserted = -1;
        this.curr_id = -1;
        this.lastInserted_shape = -1;
        this.curr_id_shape = -1;
    }

    public void rotateObjects(ArrayList<String> arrayList, int i) {
        PointF computeObjectsCenter = computeObjectsCenter(arrayList);
        Iterator<Map.Entry<Integer, ShapeComponent>> it = this.shapes.entrySet().iterator();
        while (it.hasNext()) {
            ShapeComponent shapeComponent = this.shapes.get(Integer.valueOf(it.next().getKey().intValue()));
            if (arrayList.contains(shapeComponent.reference)) {
                shapeComponent.rotateShape(shapeComponent.angle + i);
                PointF globalCenter = getGlobalCenter(shapeComponent);
                float atan2 = (float) (Math.atan2(globalCenter.y - computeObjectsCenter.y, globalCenter.x - computeObjectsCenter.x) + Math.toRadians(i));
                double dist = commonFuncs.dist(globalCenter, computeObjectsCenter);
                double d = atan2;
                shapeComponent.setX((float) (((Math.cos(d) * dist) + computeObjectsCenter.x) - shapeComponent.getPivotX()));
                shapeComponent.setY((float) (((Math.sin(d) * dist) + computeObjectsCenter.y) - shapeComponent.getPivotY()));
            }
        }
        Iterator<Map.Entry<Integer, TextComponent>> it2 = this.texts.entrySet().iterator();
        while (it2.hasNext()) {
            TextComponent textComponent = this.texts.get(Integer.valueOf(it2.next().getKey().intValue()));
            if (arrayList.contains(textComponent.reference)) {
                textComponent.rotateText(textComponent.angle + i);
                PointF globalCenter2 = getGlobalCenter(textComponent);
                float atan22 = (float) (Math.atan2(globalCenter2.y - computeObjectsCenter.y, globalCenter2.x - computeObjectsCenter.x) + Math.toRadians(i));
                double dist2 = commonFuncs.dist(globalCenter2, computeObjectsCenter);
                double d2 = atan22;
                textComponent.setX((float) (((Math.cos(d2) * dist2) + computeObjectsCenter.x) - textComponent.getPivotX()));
                textComponent.setY((float) (((Math.sin(d2) * dist2) + computeObjectsCenter.y) - textComponent.getPivotY()));
            }
        }
    }

    public void scaleObjects(ArrayList<String> arrayList, float f) {
        PointF computeObjectsCenter = computeObjectsCenter(arrayList);
        Iterator<Map.Entry<Integer, ShapeComponent>> it = this.shapes.entrySet().iterator();
        while (it.hasNext()) {
            ShapeComponent shapeComponent = this.shapes.get(Integer.valueOf(it.next().getKey().intValue()));
            if (arrayList.contains(shapeComponent.reference)) {
                PointF globalCenter = getGlobalCenter(shapeComponent);
                float f2 = globalCenter.x;
                float f3 = computeObjectsCenter.x;
                float f4 = (globalCenter.y - computeObjectsCenter.y) * f;
                shapeComponent.setX((f3 + ((f2 - f3) * f)) - shapeComponent.getPivotX());
                shapeComponent.setY((computeObjectsCenter.y + f4) - shapeComponent.getPivotY());
                shapeComponent.relativeScale(f);
            }
        }
        Iterator<Map.Entry<Integer, TextComponent>> it2 = this.texts.entrySet().iterator();
        while (it2.hasNext()) {
            TextComponent textComponent = this.texts.get(Integer.valueOf(it2.next().getKey().intValue()));
            if (arrayList.contains(textComponent.reference)) {
                textComponent.relativeScale(f);
                PointF globalCenter2 = getGlobalCenter(textComponent);
                float f5 = globalCenter2.x;
                float f6 = computeObjectsCenter.x;
                float f7 = (globalCenter2.y - computeObjectsCenter.y) * f;
                textComponent.setX((f6 + ((f5 - f6) * f)) - textComponent.getPivotX());
                textComponent.setY((computeObjectsCenter.y + f7) - textComponent.getPivotY());
            }
        }
    }

    public void selectByReference(String str) {
        int i;
        int i2;
        Iterator<Map.Entry<Integer, TextComponent>> it = this.texts.entrySet().iterator();
        while (true) {
            i = -1;
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            int intValue = it.next().getKey().intValue();
            if (this.texts.get(Integer.valueOf(intValue)).reference.equals(str)) {
                i2 = this.texts.get(Integer.valueOf(intValue)).assigned_id;
                break;
            }
        }
        Iterator<Map.Entry<Integer, ShapeComponent>> it2 = this.shapes.entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            int intValue2 = it2.next().getKey().intValue();
            if (this.shapes.get(Integer.valueOf(intValue2)).reference.equals(str)) {
                i = this.shapes.get(Integer.valueOf(intValue2)).assigned_id_shape;
                break;
            }
        }
        selectShapeId(i);
        selectTextId(i2);
    }

    public void selectShapeId(int i) {
        Iterator<Map.Entry<Integer, ShapeComponent>> it = this.shapes.entrySet().iterator();
        if (i == -1) {
            while (it.hasNext()) {
                int intValue = it.next().getKey().intValue();
                if (this.shapes.get(Integer.valueOf(intValue)).isSelected()) {
                    this.shapes.get(Integer.valueOf(intValue)).toggleSelect(false);
                }
            }
        } else {
            while (it.hasNext()) {
                int intValue2 = it.next().getKey().intValue();
                boolean isSelected = this.shapes.get(Integer.valueOf(intValue2)).isSelected();
                if (intValue2 != i) {
                    if (isSelected) {
                        this.shapes.get(Integer.valueOf(intValue2)).toggleSelect(false);
                    }
                } else if (!isSelected) {
                    this.shapes.get(Integer.valueOf(intValue2)).toggleSelect(true);
                }
            }
        }
        if (this.shapes.containsKey(Integer.valueOf(i))) {
            this.curr_id_shape = i;
        } else {
            this.curr_id_shape = -1;
        }
        if (this.mSelectionListener != null) {
            int i2 = this.curr_id_shape;
            this.mSelectionListener.onShapeSelectionChanged(this.curr_id_shape != -1, i2 == -1 ? 0 : this.shapes.get(Integer.valueOf(i2)).getShapeType());
        }
    }

    public void selectTextId(int i) {
        Iterator<Map.Entry<Integer, TextComponent>> it = this.texts.entrySet().iterator();
        if (i == -1) {
            while (it.hasNext()) {
                int intValue = it.next().getKey().intValue();
                if (this.texts.get(Integer.valueOf(intValue)).isSelected()) {
                    this.texts.get(Integer.valueOf(intValue)).toggleSelect(false);
                }
            }
        } else {
            while (it.hasNext()) {
                int intValue2 = it.next().getKey().intValue();
                boolean isSelected = this.texts.get(Integer.valueOf(intValue2)).isSelected();
                if (intValue2 != i) {
                    if (isSelected) {
                        this.texts.get(Integer.valueOf(intValue2)).toggleSelect(false);
                    }
                } else if (!isSelected) {
                    this.texts.get(Integer.valueOf(intValue2)).toggleSelect(true);
                }
            }
        }
        if (this.texts.containsKey(Integer.valueOf(i))) {
            this.curr_id = i;
        } else {
            this.curr_id = -1;
        }
        OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onTextSelectionChanged(this.curr_id != -1);
        }
    }

    public void setLayersListener(OnLayersListener onLayersListener) {
        this.layersListener = onLayersListener;
    }

    public void setObjectIdInLayout(String str, View view, int i, boolean z) {
        if (i < 0 || i >= getChildCount()) {
            return;
        }
        if (z) {
            int indexOfChild = indexOfChild(view);
            OnSelectionChangedListener onSelectionChangedListener = this.mSelectionListener;
            if (onSelectionChangedListener != null) {
                onSelectionChangedListener.onObjectZChanged(str, indexOfChild);
            }
        }
        detachViewFromParent(view);
        attachViewToParent(view, i, view.getLayoutParams());
        invalidate();
        OnLayersListener onLayersListener = this.layersListener;
        if (onLayersListener != null) {
            onLayersListener.objectZChange();
        }
    }

    public void setRenderMode(boolean z, float f) {
        Iterator<Map.Entry<Integer, ShapeComponent>> it = this.shapes.entrySet().iterator();
        while (it.hasNext()) {
            this.shapes.get(Integer.valueOf(it.next().getKey().intValue())).setRenderMode(z, f);
        }
        Iterator<Map.Entry<Integer, TextComponent>> it2 = this.texts.entrySet().iterator();
        while (it2.hasNext()) {
            this.texts.get(Integer.valueOf(it2.next().getKey().intValue())).setRenderMode(z, f);
        }
    }

    public void setSelectionListener(OnSelectionChangedListener onSelectionChangedListener) {
        this.mSelectionListener = onSelectionChangedListener;
    }

    public void unHideAll() {
        hideAllBut(null, false);
    }

    public void undoCreateShape(String str) {
        Iterator<Map.Entry<Integer, ShapeComponent>> it = this.shapes.entrySet().iterator();
        while (it.hasNext()) {
            int intValue = it.next().getKey().intValue();
            if (this.shapes.get(Integer.valueOf(intValue)).reference.equals(str)) {
                removeView(this.shapes.get(Integer.valueOf(intValue)));
                Map<Integer, ShapeComponent> map = this.shapes;
                map.remove(Integer.valueOf(map.get(Integer.valueOf(intValue)).assigned_id_shape));
                if (intValue == this.curr_id_shape) {
                    selectShapeId(-1);
                    return;
                }
                return;
            }
        }
    }

    public void undoCreateText(String str) {
        Iterator<Map.Entry<Integer, TextComponent>> it = this.texts.entrySet().iterator();
        while (it.hasNext()) {
            int intValue = it.next().getKey().intValue();
            if (this.texts.get(Integer.valueOf(intValue)).reference.equals(str)) {
                removeView(this.texts.get(Integer.valueOf(intValue)));
                Map<Integer, TextComponent> map = this.texts;
                map.remove(Integer.valueOf(map.get(Integer.valueOf(intValue)).assigned_id));
                if (intValue == this.curr_id) {
                    selectTextId(-1);
                    return;
                }
                return;
            }
        }
    }

    public void undoDeleteShape(Bundle bundle, int i, String str) {
        this.lastInserted_shape++;
        ShapeComponent shapeComponent = new ShapeComponent(getContext(), bundle, false, str);
        this.shapes.put(Integer.valueOf(this.lastInserted_shape), shapeComponent);
        shapeComponent.assigned_id_shape = this.lastInserted_shape;
        shapeComponent.setTouchEventListener(this);
        selectTextId(-1);
        selectShapeId(this.lastInserted_shape);
        if (i != -1) {
            addView(shapeComponent, i);
        } else {
            addView(shapeComponent);
        }
    }

    public void undoDeleteText(Bundle bundle, int i, String str) {
        this.lastInserted++;
        TextComponent textComponent = new TextComponent(getContext(), bundle, false, str);
        this.texts.put(Integer.valueOf(this.lastInserted), textComponent);
        textComponent.assigned_id = this.lastInserted;
        textComponent.setTouchEventListener(this);
        selectShapeId(-1);
        selectTextId(this.lastInserted);
        if (i != -1) {
            addView(textComponent, i);
        } else {
            addView(textComponent);
        }
    }

    public void undoObjectZChange(String str, int i) {
        View objectByRef = getObjectByRef(str);
        if (objectByRef == null || i <= -1) {
            return;
        }
        setObjectIdInLayout(str, objectByRef, i, false);
    }

    public boolean unmergeCurrentShape() {
        Bundle bundle;
        ShapeComponent currentShape = getCurrentShape();
        if (currentShape == null || (bundle = currentShape.mergedDataBundle) == null) {
            return false;
        }
        Bundle bundle2 = bundle.getBundle(appStateConstants.OBJECTS_BUNDLE);
        ArrayList<String> stringArrayList = bundle.getStringArrayList(appStateConstants.OBJECTS_IDS);
        removeCurrentObject();
        recreateObjects(bundle2, stringArrayList);
        OnLayersListener onLayersListener = this.layersListener;
        if (onLayersListener != null) {
            onLayersListener.objectCountChanged();
        }
        return true;
    }
}
