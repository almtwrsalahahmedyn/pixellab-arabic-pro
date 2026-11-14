package androidx.vectordrawable.graphics.drawable;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.InflateException;
import android.view.animation.AnimationUtils;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class AnimatorInflaterCompat {

    /* loaded from: classes.dex */
    public final class PathDataEvaluator implements TypeEvaluator {
        public PathParser.PathDataNode[] mNodeArray;

        @Override // android.animation.TypeEvaluator
        public final Object evaluate(float f, Object obj, Object obj2) {
            PathParser.PathDataNode[] pathDataNodeArr = (PathParser.PathDataNode[]) obj;
            PathParser.PathDataNode[] pathDataNodeArr2 = (PathParser.PathDataNode[]) obj2;
            if (!PathParser.canMorph(pathDataNodeArr, pathDataNodeArr2)) {
                throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
            }
            if (!PathParser.canMorph(this.mNodeArray, pathDataNodeArr)) {
                this.mNodeArray = PathParser.deepCopyNodes(pathDataNodeArr);
            }
            for (int i = 0; i < pathDataNodeArr.length; i++) {
                PathParser.PathDataNode pathDataNode = this.mNodeArray[i];
                PathParser.PathDataNode pathDataNode2 = pathDataNodeArr[i];
                PathParser.PathDataNode pathDataNode3 = pathDataNodeArr2[i];
                pathDataNode.getClass();
                pathDataNode.mType = pathDataNode2.mType;
                int i2 = 0;
                while (true) {
                    float[] fArr = pathDataNode2.mParams;
                    if (i2 < fArr.length) {
                        pathDataNode.mParams[i2] = (pathDataNode3.mParams[i2] * f) + ((1.0f - f) * fArr[i2]);
                        i2++;
                    }
                }
            }
            return this.mNodeArray;
        }
    }

    private AnimatorInflaterCompat() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x031d, code lost:
    
        r1 = new android.animation.Animator[r13.size()];
        r2 = r13.iterator();
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x032c, code lost:
    
        if (r2.hasNext() == false) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x032e, code lost:
    
        r1[r14] = (android.animation.Animator) r2.next();
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x033a, code lost:
    
        if (r33 != 0) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x033c, code lost:
    
        r32.playTogether(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0340, code lost:
    
        r32.playSequentially(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0343, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0319, code lost:
    
        if (r32 == null) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x031b, code lost:
    
        if (r13 == null) goto L170;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x02f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.animation.Animator createAnimatorFromXml(android.content.Context r27, android.content.res.Resources r28, android.content.res.Resources.Theme r29, android.content.res.XmlResourceParser r30, android.util.AttributeSet r31, android.animation.AnimatorSet r32, int r33) {
        /*
            Method dump skipped, instructions count: 836
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.AnimatorInflaterCompat.createAnimatorFromXml(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, android.content.res.XmlResourceParser, android.util.AttributeSet, android.animation.AnimatorSet, int):android.animation.Animator");
    }

    public static Keyframe createNewKeyframe(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    public static PropertyValuesHolder getPVH(TypedArray typedArray, int i, int i2, int i3, String str) {
        PropertyValuesHolder ofInt;
        PropertyValuesHolder ofObject;
        TypedValue peekValue = typedArray.peekValue(i2);
        boolean z = peekValue != null;
        int i4 = z ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i3);
        boolean z2 = peekValue2 != null;
        int i5 = z2 ? peekValue2.type : 0;
        if (i == 4) {
            i = ((z && isColorType(i4)) || (z2 && isColorType(i5))) ? 3 : 0;
        }
        boolean z3 = i == 0;
        PropertyValuesHolder propertyValuesHolder = null;
        if (i != 2) {
            ArgbEvaluator argbEvaluator = i == 3 ? ArgbEvaluator.sInstance : null;
            if (z3) {
                if (z) {
                    float dimension = i4 == 5 ? typedArray.getDimension(i2, 0.0f) : typedArray.getFloat(i2, 0.0f);
                    if (z2) {
                        ofInt = PropertyValuesHolder.ofFloat(str, dimension, i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
                    } else {
                        ofInt = PropertyValuesHolder.ofFloat(str, dimension);
                    }
                } else {
                    ofInt = PropertyValuesHolder.ofFloat(str, i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
                }
            } else {
                if (!z) {
                    if (z2) {
                        ofInt = PropertyValuesHolder.ofInt(str, i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : isColorType(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
                    }
                    if (propertyValuesHolder == null && argbEvaluator != null) {
                        propertyValuesHolder.setEvaluator(argbEvaluator);
                        return propertyValuesHolder;
                    }
                }
                int dimension2 = i4 == 5 ? (int) typedArray.getDimension(i2, 0.0f) : isColorType(i4) ? typedArray.getColor(i2, 0) : typedArray.getInt(i2, 0);
                if (z2) {
                    ofInt = PropertyValuesHolder.ofInt(str, dimension2, i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : isColorType(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
                } else {
                    ofInt = PropertyValuesHolder.ofInt(str, dimension2);
                }
            }
            propertyValuesHolder = ofInt;
            return propertyValuesHolder == null ? propertyValuesHolder : propertyValuesHolder;
        }
        String string = typedArray.getString(i2);
        String string2 = typedArray.getString(i3);
        PathParser.PathDataNode[] createNodesFromPathData = PathParser.createNodesFromPathData(string);
        PathParser.PathDataNode[] createNodesFromPathData2 = PathParser.createNodesFromPathData(string2);
        if (createNodesFromPathData == null && createNodesFromPathData2 == null) {
            return null;
        }
        if (createNodesFromPathData == null) {
            if (createNodesFromPathData2 != null) {
                return PropertyValuesHolder.ofObject(str, new PathDataEvaluator(), createNodesFromPathData2);
            }
            return null;
        }
        PathDataEvaluator pathDataEvaluator = new PathDataEvaluator();
        if (createNodesFromPathData2 == null) {
            ofObject = PropertyValuesHolder.ofObject(str, pathDataEvaluator, createNodesFromPathData);
        } else {
            if (!PathParser.canMorph(createNodesFromPathData, createNodesFromPathData2)) {
                throw new InflateException(" Can't morph from " + string + " to " + string2);
            }
            ofObject = PropertyValuesHolder.ofObject(str, pathDataEvaluator, createNodesFromPathData, createNodesFromPathData2);
        }
        return ofObject;
    }

    public static boolean isColorType(int i) {
        return i >= 28 && i <= 31;
    }

    public static ValueAnimator loadAnimator(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ObjectAnimator objectAnimator, XmlResourceParser xmlResourceParser) {
        ValueAnimator valueAnimator;
        TypedArray typedArray;
        ValueAnimator valueAnimator2;
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_ANIMATOR);
        TypedArray obtainAttributes2 = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_PROPERTY_ANIMATOR);
        ValueAnimator valueAnimator3 = objectAnimator == null ? new ValueAnimator() : objectAnimator;
        long namedInt = TypedArrayUtils.getNamedInt(obtainAttributes, xmlResourceParser, "duration", 1, 300);
        int i = 0;
        long namedInt2 = TypedArrayUtils.getNamedInt(obtainAttributes, xmlResourceParser, "startOffset", 2, 0);
        int namedInt3 = TypedArrayUtils.getNamedInt(obtainAttributes, xmlResourceParser, "valueType", 7, 4);
        if (TypedArrayUtils.hasAttribute(xmlResourceParser, "valueFrom") && TypedArrayUtils.hasAttribute(xmlResourceParser, "valueTo")) {
            if (namedInt3 == 4) {
                TypedValue peekValue = obtainAttributes.peekValue(5);
                boolean z = peekValue != null;
                int i2 = z ? peekValue.type : 0;
                TypedValue peekValue2 = obtainAttributes.peekValue(6);
                boolean z2 = peekValue2 != null;
                namedInt3 = ((z && isColorType(i2)) || (z2 && isColorType(z2 ? peekValue2.type : 0))) ? 3 : 0;
            }
            PropertyValuesHolder pvh = getPVH(obtainAttributes, namedInt3, 5, 6, "");
            if (pvh != null) {
                valueAnimator3.setValues(pvh);
            }
        }
        valueAnimator3.setDuration(namedInt);
        valueAnimator3.setStartDelay(namedInt2);
        valueAnimator3.setRepeatCount(TypedArrayUtils.getNamedInt(obtainAttributes, xmlResourceParser, "repeatCount", 3, 0));
        valueAnimator3.setRepeatMode(TypedArrayUtils.getNamedInt(obtainAttributes, xmlResourceParser, "repeatMode", 4, 1));
        if (obtainAttributes2 != null) {
            ObjectAnimator objectAnimator2 = (ObjectAnimator) valueAnimator3;
            String namedString = TypedArrayUtils.getNamedString(obtainAttributes2, xmlResourceParser, "pathData", 1);
            if (namedString != null) {
                String namedString2 = TypedArrayUtils.getNamedString(obtainAttributes2, xmlResourceParser, "propertyXName", 2);
                String namedString3 = TypedArrayUtils.getNamedString(obtainAttributes2, xmlResourceParser, "propertyYName", 3);
                if (namedString2 == null && namedString3 == null) {
                    throw new InflateException(obtainAttributes2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path createPathFromPathData = PathParser.createPathFromPathData(namedString);
                PathMeasure pathMeasure = new PathMeasure(createPathFromPathData, false);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Float.valueOf(0.0f));
                float f = 0.0f;
                do {
                    f += pathMeasure.getLength();
                    arrayList.add(Float.valueOf(f));
                } while (pathMeasure.nextContour());
                PathMeasure pathMeasure2 = new PathMeasure(createPathFromPathData, false);
                int min = Math.min(100, ((int) (f / 0.5f)) + 1);
                float[] fArr = new float[min];
                float[] fArr2 = new float[min];
                float[] fArr3 = new float[2];
                float f2 = f / (min - 1);
                valueAnimator = valueAnimator3;
                typedArray = obtainAttributes;
                int i3 = 0;
                float f3 = 0.0f;
                while (true) {
                    if (i >= min) {
                        break;
                    }
                    int i4 = min;
                    pathMeasure2.getPosTan(f3 - ((Float) arrayList.get(i3)).floatValue(), fArr3, null);
                    fArr[i] = fArr3[0];
                    fArr2[i] = fArr3[1];
                    f3 += f2;
                    int i5 = i3 + 1;
                    if (i5 < arrayList.size() && f3 > ((Float) arrayList.get(i5)).floatValue()) {
                        pathMeasure2.nextContour();
                        i3 = i5;
                    }
                    i++;
                    min = i4;
                }
                PropertyValuesHolder ofFloat = namedString2 != null ? PropertyValuesHolder.ofFloat(namedString2, fArr) : null;
                PropertyValuesHolder ofFloat2 = namedString3 != null ? PropertyValuesHolder.ofFloat(namedString3, fArr2) : null;
                if (ofFloat == null) {
                    i = 0;
                    objectAnimator2.setValues(ofFloat2);
                } else {
                    i = 0;
                    if (ofFloat2 == null) {
                        objectAnimator2.setValues(ofFloat);
                    } else {
                        objectAnimator2.setValues(ofFloat, ofFloat2);
                    }
                }
            } else {
                valueAnimator = valueAnimator3;
                typedArray = obtainAttributes;
                objectAnimator2.setPropertyName(TypedArrayUtils.getNamedString(obtainAttributes2, xmlResourceParser, "propertyName", 0));
            }
        } else {
            valueAnimator = valueAnimator3;
            typedArray = obtainAttributes;
        }
        TypedArray typedArray2 = typedArray;
        int namedResourceId = TypedArrayUtils.getNamedResourceId(typedArray2, xmlResourceParser, "interpolator", i, i);
        if (namedResourceId > 0) {
            valueAnimator2 = valueAnimator;
            valueAnimator2.setInterpolator(AnimationUtils.loadInterpolator(context, namedResourceId));
        } else {
            valueAnimator2 = valueAnimator;
        }
        typedArray2.recycle();
        if (obtainAttributes2 != null) {
            obtainAttributes2.recycle();
        }
        return valueAnimator2;
    }
}
