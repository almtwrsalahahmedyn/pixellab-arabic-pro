package androidx.vectordrawable.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import androidx.core.graphics.drawable.DrawableCompat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class VectorDrawableCompat extends VectorDrawableCommon {
    public static final PorterDuff.Mode DEFAULT_TINT_MODE = PorterDuff.Mode.SRC_IN;
    public boolean mAllowCaching;
    public ColorFilter mColorFilter;
    public boolean mMutated;
    public PorterDuffColorFilter mTintFilter;
    public final Rect mTmpBounds;
    public final float[] mTmpFloats;
    public final Matrix mTmpMatrix;
    public VectorDrawableCompatState mVectorState;

    /* loaded from: classes.dex */
    public final class VClipPath extends VPath {
    }

    /* loaded from: classes.dex */
    public final class VFullPath extends VPath {
        public ComplexColorCompat mFillColor;
        public ComplexColorCompat mStrokeColor;
        public float mStrokeWidth = 0.0f;
        public float mStrokeAlpha = 1.0f;
        public float mFillAlpha = 1.0f;
        public float mTrimPathStart = 0.0f;
        public float mTrimPathEnd = 1.0f;
        public float mTrimPathOffset = 0.0f;
        public Paint.Cap mStrokeLineCap = Paint.Cap.BUTT;
        public Paint.Join mStrokeLineJoin = Paint.Join.MITER;
        public float mStrokeMiterlimit = 4.0f;

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public final boolean isStateful() {
            return this.mFillColor.isStateful() || this.mStrokeColor.isStateful();
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public final boolean onStateChanged(int[] iArr) {
            return this.mStrokeColor.onStateChanged(iArr) | this.mFillColor.onStateChanged(iArr);
        }
    }

    /* loaded from: classes.dex */
    public final class VGroup extends VObject {
        public final int mChangingConfigurations;
        public final ArrayList mChildren;
        public String mGroupName;
        public final Matrix mLocalMatrix;
        public float mPivotX;
        public float mPivotY;
        public float mRotate;
        public float mScaleX;
        public float mScaleY;
        public final Matrix mStackedMatrix;
        public float mTranslateX;
        public float mTranslateY;

        public VGroup() {
            super(0);
            this.mStackedMatrix = new Matrix();
            this.mChildren = new ArrayList();
            this.mRotate = 0.0f;
            this.mPivotX = 0.0f;
            this.mPivotY = 0.0f;
            this.mScaleX = 1.0f;
            this.mScaleY = 1.0f;
            this.mTranslateX = 0.0f;
            this.mTranslateY = 0.0f;
            this.mLocalMatrix = new Matrix();
            this.mGroupName = null;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /* JADX WARN: Type inference failed for: r4v15, types: [androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VPath, androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VFullPath] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public VGroup(androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VGroup r7, androidx.collection.ArrayMap r8) {
            /*
                Method dump skipped, instructions count: 240
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VGroup.<init>(androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VGroup, androidx.collection.ArrayMap):void");
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public final boolean isStateful() {
            int i = 0;
            while (true) {
                ArrayList arrayList = this.mChildren;
                if (i >= arrayList.size()) {
                    return false;
                }
                if (((VObject) arrayList.get(i)).isStateful()) {
                    return true;
                }
                i++;
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public final boolean onStateChanged(int[] iArr) {
            int i = 0;
            boolean z = false;
            while (true) {
                ArrayList arrayList = this.mChildren;
                if (i >= arrayList.size()) {
                    return z;
                }
                z |= ((VObject) arrayList.get(i)).onStateChanged(iArr);
                i++;
            }
        }
    }

    /* loaded from: classes.dex */
    public abstract class VObject {
        private VObject() {
        }

        public /* synthetic */ VObject(int i) {
            this();
        }

        public boolean isStateful() {
            return false;
        }

        public boolean onStateChanged(int[] iArr) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public abstract class VPath extends VObject {
        public final int mChangingConfigurations;
        public int mFillRule;
        public PathParser.PathDataNode[] mNodes;
        public String mPathName;

        public VPath() {
            super(0);
            this.mNodes = null;
            this.mFillRule = 0;
        }

        public VPath(VPath vPath) {
            super(0);
            this.mNodes = null;
            this.mFillRule = 0;
            this.mPathName = vPath.mPathName;
            this.mChangingConfigurations = vPath.mChangingConfigurations;
            this.mNodes = PathParser.deepCopyNodes(vPath.mNodes);
        }
    }

    /* loaded from: classes.dex */
    public final class VPathRenderer {
        public static final Matrix IDENTITY_MATRIX = new Matrix();
        public float mBaseHeight;
        public float mBaseWidth;
        public Paint mFillPaint;
        public final Matrix mFinalPathMatrix;
        public Boolean mIsStateful;
        public final Path mPath;
        public PathMeasure mPathMeasure;
        public final Path mRenderPath;
        public int mRootAlpha;
        public final VGroup mRootGroup;
        public String mRootName;
        public Paint mStrokePaint;
        public final ArrayMap mVGTargetsMap;
        public float mViewportHeight;
        public float mViewportWidth;

        public VPathRenderer() {
            this.mFinalPathMatrix = new Matrix();
            this.mBaseWidth = 0.0f;
            this.mBaseHeight = 0.0f;
            this.mViewportWidth = 0.0f;
            this.mViewportHeight = 0.0f;
            this.mRootAlpha = 255;
            this.mRootName = null;
            this.mIsStateful = null;
            this.mVGTargetsMap = new ArrayMap();
            this.mRootGroup = new VGroup();
            this.mPath = new Path();
            this.mRenderPath = new Path();
        }

        public VPathRenderer(VPathRenderer vPathRenderer) {
            this.mFinalPathMatrix = new Matrix();
            this.mBaseWidth = 0.0f;
            this.mBaseHeight = 0.0f;
            this.mViewportWidth = 0.0f;
            this.mViewportHeight = 0.0f;
            this.mRootAlpha = 255;
            this.mRootName = null;
            this.mIsStateful = null;
            ArrayMap arrayMap = new ArrayMap();
            this.mVGTargetsMap = arrayMap;
            this.mRootGroup = new VGroup(vPathRenderer.mRootGroup, arrayMap);
            this.mPath = new Path(vPathRenderer.mPath);
            this.mRenderPath = new Path(vPathRenderer.mRenderPath);
            this.mBaseWidth = vPathRenderer.mBaseWidth;
            this.mBaseHeight = vPathRenderer.mBaseHeight;
            this.mViewportWidth = vPathRenderer.mViewportWidth;
            this.mViewportHeight = vPathRenderer.mViewportHeight;
            this.mRootAlpha = vPathRenderer.mRootAlpha;
            this.mRootName = vPathRenderer.mRootName;
            String str = vPathRenderer.mRootName;
            if (str != null) {
                arrayMap.put(str, this);
            }
            this.mIsStateful = vPathRenderer.mIsStateful;
        }

        public final void drawGroupTree(VGroup vGroup, Matrix matrix, Canvas canvas, int i, int i2) {
            int i3;
            float f;
            vGroup.mStackedMatrix.set(matrix);
            Matrix matrix2 = vGroup.mLocalMatrix;
            Matrix matrix3 = vGroup.mStackedMatrix;
            matrix3.preConcat(matrix2);
            canvas.save();
            char c = 0;
            int i4 = 0;
            while (true) {
                ArrayList arrayList = vGroup.mChildren;
                if (i4 >= arrayList.size()) {
                    canvas.restore();
                    return;
                }
                VObject vObject = (VObject) arrayList.get(i4);
                if (vObject instanceof VGroup) {
                    drawGroupTree((VGroup) vObject, matrix3, canvas, i, i2);
                } else if (vObject instanceof VPath) {
                    VPath vPath = (VPath) vObject;
                    float f2 = i / this.mViewportWidth;
                    float f3 = i2 / this.mViewportHeight;
                    float min = Math.min(f2, f3);
                    Matrix matrix4 = this.mFinalPathMatrix;
                    matrix4.set(matrix3);
                    matrix4.postScale(f2, f3);
                    float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                    matrix3.mapVectors(fArr);
                    float hypot = (float) Math.hypot(fArr[c], fArr[1]);
                    i3 = i4;
                    float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                    float f4 = (fArr[0] * fArr[3]) - (fArr[1] * fArr[2]);
                    float max = Math.max(hypot, hypot2);
                    float abs = max > 0.0f ? Math.abs(f4) / max : 0.0f;
                    if (abs != 0.0f) {
                        vPath.getClass();
                        Path path = this.mPath;
                        path.reset();
                        PathParser.PathDataNode[] pathDataNodeArr = vPath.mNodes;
                        if (pathDataNodeArr != null) {
                            PathParser.PathDataNode.nodesToPath(pathDataNodeArr, path);
                        }
                        Path path2 = this.mRenderPath;
                        path2.reset();
                        if (vPath instanceof VClipPath) {
                            path2.setFillType(vPath.mFillRule == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            path2.addPath(path, matrix4);
                            canvas.clipPath(path2);
                        } else {
                            VFullPath vFullPath = (VFullPath) vPath;
                            float f5 = vFullPath.mTrimPathStart;
                            if (f5 != 0.0f || vFullPath.mTrimPathEnd != 1.0f) {
                                float f6 = vFullPath.mTrimPathOffset;
                                float f7 = (f5 + f6) % 1.0f;
                                float f8 = (vFullPath.mTrimPathEnd + f6) % 1.0f;
                                if (this.mPathMeasure == null) {
                                    this.mPathMeasure = new PathMeasure();
                                }
                                this.mPathMeasure.setPath(path, false);
                                float length = this.mPathMeasure.getLength();
                                float f9 = f7 * length;
                                float f10 = f8 * length;
                                path.reset();
                                if (f9 > f10) {
                                    this.mPathMeasure.getSegment(f9, length, path, true);
                                    f = 0.0f;
                                    this.mPathMeasure.getSegment(0.0f, f10, path, true);
                                } else {
                                    f = 0.0f;
                                    this.mPathMeasure.getSegment(f9, f10, path, true);
                                }
                                path.rLineTo(f, f);
                            }
                            path2.addPath(path, matrix4);
                            if (vFullPath.mFillColor.willDraw()) {
                                ComplexColorCompat complexColorCompat = vFullPath.mFillColor;
                                if (this.mFillPaint == null) {
                                    Paint paint = new Paint(1);
                                    this.mFillPaint = paint;
                                    paint.setStyle(Paint.Style.FILL);
                                }
                                Paint paint2 = this.mFillPaint;
                                if (complexColorCompat.isGradient()) {
                                    Shader shader = complexColorCompat.getShader();
                                    shader.setLocalMatrix(matrix4);
                                    paint2.setShader(shader);
                                    paint2.setAlpha(Math.round(vFullPath.mFillAlpha * 255.0f));
                                } else {
                                    paint2.setShader(null);
                                    paint2.setAlpha(255);
                                    int color = complexColorCompat.getColor();
                                    float f11 = vFullPath.mFillAlpha;
                                    PorterDuff.Mode mode = VectorDrawableCompat.DEFAULT_TINT_MODE;
                                    paint2.setColor((color & 16777215) | (((int) (Color.alpha(color) * f11)) << 24));
                                }
                                paint2.setColorFilter(null);
                                path2.setFillType(vFullPath.mFillRule == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                canvas.drawPath(path2, paint2);
                            }
                            if (vFullPath.mStrokeColor.willDraw()) {
                                ComplexColorCompat complexColorCompat2 = vFullPath.mStrokeColor;
                                if (this.mStrokePaint == null) {
                                    Paint paint3 = new Paint(1);
                                    this.mStrokePaint = paint3;
                                    paint3.setStyle(Paint.Style.STROKE);
                                }
                                Paint paint4 = this.mStrokePaint;
                                Paint.Join join = vFullPath.mStrokeLineJoin;
                                if (join != null) {
                                    paint4.setStrokeJoin(join);
                                }
                                Paint.Cap cap = vFullPath.mStrokeLineCap;
                                if (cap != null) {
                                    paint4.setStrokeCap(cap);
                                }
                                paint4.setStrokeMiter(vFullPath.mStrokeMiterlimit);
                                if (complexColorCompat2.isGradient()) {
                                    Shader shader2 = complexColorCompat2.getShader();
                                    shader2.setLocalMatrix(matrix4);
                                    paint4.setShader(shader2);
                                    paint4.setAlpha(Math.round(vFullPath.mStrokeAlpha * 255.0f));
                                } else {
                                    paint4.setShader(null);
                                    paint4.setAlpha(255);
                                    int color2 = complexColorCompat2.getColor();
                                    float f12 = vFullPath.mStrokeAlpha;
                                    PorterDuff.Mode mode2 = VectorDrawableCompat.DEFAULT_TINT_MODE;
                                    paint4.setColor((color2 & 16777215) | (((int) (Color.alpha(color2) * f12)) << 24));
                                }
                                paint4.setColorFilter(null);
                                paint4.setStrokeWidth(vFullPath.mStrokeWidth * abs * min);
                                canvas.drawPath(path2, paint4);
                            }
                        }
                    }
                    i4 = i3 + 1;
                    c = 0;
                }
                i3 = i4;
                i4 = i3 + 1;
                c = 0;
            }
        }
    }

    /* loaded from: classes.dex */
    public final class VectorDrawableCompatState extends Drawable.ConstantState {
        public boolean mAutoMirrored;
        public boolean mCacheDirty;
        public boolean mCachedAutoMirrored;
        public Bitmap mCachedBitmap;
        public int mCachedRootAlpha;
        public ColorStateList mCachedTint;
        public PorterDuff.Mode mCachedTintMode;
        public int mChangingConfigurations;
        public Paint mTempPaint;
        public ColorStateList mTint = null;
        public PorterDuff.Mode mTintMode = VectorDrawableCompat.DEFAULT_TINT_MODE;
        public VPathRenderer mVPathRenderer = new VPathRenderer();

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new VectorDrawableCompat(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new VectorDrawableCompat(this);
        }
    }

    /* loaded from: classes.dex */
    public final class VectorDrawableDelegateState extends Drawable.ConstantState {
        public final Drawable.ConstantState mDelegateState;

        public VectorDrawableDelegateState(Drawable.ConstantState constantState) {
            this.mDelegateState = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.mDelegateState.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.mDelegateState.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = (VectorDrawable) this.mDelegateState.newDrawable();
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = (VectorDrawable) this.mDelegateState.newDrawable(resources);
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = (VectorDrawable) this.mDelegateState.newDrawable(resources, theme);
            return vectorDrawableCompat;
        }
    }

    public VectorDrawableCompat() {
        this.mAllowCaching = true;
        this.mTmpFloats = new float[9];
        this.mTmpMatrix = new Matrix();
        this.mTmpBounds = new Rect();
        this.mVectorState = new VectorDrawableCompatState();
    }

    public VectorDrawableCompat(VectorDrawableCompatState vectorDrawableCompatState) {
        this.mAllowCaching = true;
        this.mTmpFloats = new float[9];
        this.mTmpMatrix = new Matrix();
        this.mTmpBounds = new Rect();
        this.mVectorState = vectorDrawableCompatState;
        this.mTintFilter = updateTintFilter(vectorDrawableCompatState.mTint, vectorDrawableCompatState.mTintMode);
    }

    public static VectorDrawableCompat createFromXmlInner(Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
        vectorDrawableCompat.inflate(resources, xmlResourceParser, attributeSet, theme);
        return vectorDrawableCompat;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable == null) {
            return false;
        }
        DrawableCompat.canApplyTheme(drawable);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00bf, code lost:
    
        if ((r5 == r10.getWidth() && r6 == r9.mCachedBitmap.getHeight()) == false) goto L40;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(android.graphics.Canvas r19) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.mDelegateDrawable;
        return drawable != null ? DrawableCompat.getAlpha(drawable) : this.mVectorState.mVPathRenderer.mRootAlpha;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.mDelegateDrawable;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.mVectorState.mChangingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.mDelegateDrawable;
        return drawable != null ? DrawableCompat.getColorFilter(drawable) : this.mColorFilter;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.mDelegateDrawable != null && Build.VERSION.SDK_INT >= 24) {
            return new VectorDrawableDelegateState(this.mDelegateDrawable.getConstantState());
        }
        this.mVectorState.mChangingConfigurations = getChangingConfigurations();
        return this.mVectorState;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.mDelegateDrawable;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.mVectorState.mVPathRenderer.mBaseHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.mDelegateDrawable;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.mVectorState.mVPathRenderer.mBaseWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        ArrayDeque arrayDeque;
        VPathRenderer vPathRenderer;
        int i;
        ArrayDeque arrayDeque2;
        SimpleArrayMap simpleArrayMap;
        VFullPath vFullPath;
        TypedArray typedArray;
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        vectorDrawableCompatState.mVPathRenderer = new VPathRenderer();
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY);
        VectorDrawableCompatState vectorDrawableCompatState2 = this.mVectorState;
        VPathRenderer vPathRenderer2 = vectorDrawableCompatState2.mVPathRenderer;
        int namedInt = TypedArrayUtils.getNamedInt(obtainAttributes, xmlPullParser, "tintMode", 6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        int i2 = 3;
        if (namedInt == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (namedInt != 5) {
            if (namedInt != 9) {
                switch (namedInt) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        vectorDrawableCompatState2.mTintMode = mode;
        int i3 = 1;
        ColorStateList namedColorStateList = TypedArrayUtils.getNamedColorStateList(obtainAttributes, xmlPullParser, theme, "tint", 1);
        if (namedColorStateList != null) {
            vectorDrawableCompatState2.mTint = namedColorStateList;
        }
        vectorDrawableCompatState2.mAutoMirrored = TypedArrayUtils.getNamedBoolean(obtainAttributes, xmlPullParser, "autoMirrored", 5, vectorDrawableCompatState2.mAutoMirrored);
        vPathRenderer2.mViewportWidth = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "viewportWidth", 7, vPathRenderer2.mViewportWidth);
        float namedFloat = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "viewportHeight", 8, vPathRenderer2.mViewportHeight);
        vPathRenderer2.mViewportHeight = namedFloat;
        if (vPathRenderer2.mViewportWidth <= 0.0f) {
            throw new XmlPullParserException(obtainAttributes.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (namedFloat <= 0.0f) {
            throw new XmlPullParserException(obtainAttributes.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        vPathRenderer2.mBaseWidth = obtainAttributes.getDimension(3, vPathRenderer2.mBaseWidth);
        int i4 = 2;
        float dimension = obtainAttributes.getDimension(2, vPathRenderer2.mBaseHeight);
        vPathRenderer2.mBaseHeight = dimension;
        if (vPathRenderer2.mBaseWidth <= 0.0f) {
            throw new XmlPullParserException(obtainAttributes.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= 0.0f) {
            throw new XmlPullParserException(obtainAttributes.getPositionDescription() + "<vector> tag requires height > 0");
        }
        vPathRenderer2.mRootAlpha = (int) (TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "alpha", 4, vPathRenderer2.mRootAlpha / 255.0f) * 255.0f);
        int i5 = 0;
        String string = obtainAttributes.getString(0);
        if (string != null) {
            vPathRenderer2.mRootName = string;
            vPathRenderer2.mVGTargetsMap.put(string, vPathRenderer2);
        }
        obtainAttributes.recycle();
        vectorDrawableCompatState.mChangingConfigurations = getChangingConfigurations();
        vectorDrawableCompatState.mCacheDirty = true;
        VectorDrawableCompatState vectorDrawableCompatState3 = this.mVectorState;
        VPathRenderer vPathRenderer3 = vectorDrawableCompatState3.mVPathRenderer;
        ArrayDeque arrayDeque3 = new ArrayDeque();
        arrayDeque3.push(vPathRenderer3.mRootGroup);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z = true;
        while (eventType != i3 && (xmlPullParser.getDepth() >= depth || eventType != i2)) {
            if (eventType == i4) {
                String name = xmlPullParser.getName();
                VGroup vGroup = (VGroup) arrayDeque3.peek();
                boolean equals = "path".equals(name);
                SimpleArrayMap simpleArrayMap2 = vPathRenderer3.mVGTargetsMap;
                if (equals) {
                    VFullPath vFullPath2 = new VFullPath();
                    TypedArray obtainAttributes2 = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_VECTOR_DRAWABLE_PATH);
                    if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
                        String string2 = obtainAttributes2.getString(i5);
                        if (string2 != null) {
                            vFullPath2.mPathName = string2;
                        }
                        String string3 = obtainAttributes2.getString(2);
                        if (string3 != null) {
                            vFullPath2.mNodes = PathParser.createNodesFromPathData(string3);
                        }
                        arrayDeque2 = arrayDeque3;
                        vPathRenderer = vPathRenderer3;
                        simpleArrayMap = simpleArrayMap2;
                        vFullPath = vFullPath2;
                        i = depth;
                        vFullPath.mFillColor = TypedArrayUtils.getNamedComplexColor(obtainAttributes2, xmlPullParser, theme, "fillColor", 1, 0);
                        vFullPath.mFillAlpha = TypedArrayUtils.getNamedFloat(obtainAttributes2, xmlPullParser, "fillAlpha", 12, vFullPath.mFillAlpha);
                        int namedInt2 = TypedArrayUtils.getNamedInt(obtainAttributes2, xmlPullParser, "strokeLineCap", 8, -1);
                        Paint.Cap cap = vFullPath.mStrokeLineCap;
                        if (namedInt2 == 0) {
                            cap = Paint.Cap.BUTT;
                        } else if (namedInt2 == 1) {
                            cap = Paint.Cap.ROUND;
                        } else if (namedInt2 == 2) {
                            cap = Paint.Cap.SQUARE;
                        }
                        vFullPath.mStrokeLineCap = cap;
                        int namedInt3 = TypedArrayUtils.getNamedInt(obtainAttributes2, xmlPullParser, "strokeLineJoin", 9, -1);
                        Paint.Join join = vFullPath.mStrokeLineJoin;
                        if (namedInt3 == 0) {
                            join = Paint.Join.MITER;
                        } else if (namedInt3 == 1) {
                            join = Paint.Join.ROUND;
                        } else if (namedInt3 == 2) {
                            join = Paint.Join.BEVEL;
                        }
                        vFullPath.mStrokeLineJoin = join;
                        vFullPath.mStrokeMiterlimit = TypedArrayUtils.getNamedFloat(obtainAttributes2, xmlPullParser, "strokeMiterLimit", 10, vFullPath.mStrokeMiterlimit);
                        typedArray = obtainAttributes2;
                        vFullPath.mStrokeColor = TypedArrayUtils.getNamedComplexColor(obtainAttributes2, xmlPullParser, theme, "strokeColor", 3, 0);
                        vFullPath.mStrokeAlpha = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeAlpha", 11, vFullPath.mStrokeAlpha);
                        vFullPath.mStrokeWidth = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeWidth", 4, vFullPath.mStrokeWidth);
                        vFullPath.mTrimPathEnd = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathEnd", 6, vFullPath.mTrimPathEnd);
                        vFullPath.mTrimPathOffset = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathOffset", 7, vFullPath.mTrimPathOffset);
                        vFullPath.mTrimPathStart = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathStart", 5, vFullPath.mTrimPathStart);
                        vFullPath.mFillRule = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "fillType", 13, vFullPath.mFillRule);
                    } else {
                        arrayDeque2 = arrayDeque3;
                        vPathRenderer = vPathRenderer3;
                        simpleArrayMap = simpleArrayMap2;
                        vFullPath = vFullPath2;
                        i = depth;
                        typedArray = obtainAttributes2;
                    }
                    typedArray.recycle();
                    vGroup.mChildren.add(vFullPath);
                    String str = vFullPath.mPathName;
                    if (str != null) {
                        simpleArrayMap.put(str, vFullPath);
                    }
                    vectorDrawableCompatState3.mChangingConfigurations |= vFullPath.mChangingConfigurations;
                    arrayDeque = arrayDeque2;
                    z = false;
                } else {
                    ArrayDeque arrayDeque4 = arrayDeque3;
                    vPathRenderer = vPathRenderer3;
                    i = depth;
                    if ("clip-path".equals(name)) {
                        VClipPath vClipPath = new VClipPath();
                        if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
                            TypedArray obtainAttributes3 = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH);
                            String string4 = obtainAttributes3.getString(0);
                            if (string4 != null) {
                                vClipPath.mPathName = string4;
                            }
                            String string5 = obtainAttributes3.getString(1);
                            if (string5 != null) {
                                vClipPath.mNodes = PathParser.createNodesFromPathData(string5);
                            }
                            vClipPath.mFillRule = TypedArrayUtils.getNamedInt(obtainAttributes3, xmlPullParser, "fillType", 2, 0);
                            obtainAttributes3.recycle();
                        }
                        vGroup.mChildren.add(vClipPath);
                        String str2 = vClipPath.mPathName;
                        if (str2 != null) {
                            simpleArrayMap2.put(str2, vClipPath);
                        }
                        vectorDrawableCompatState3.mChangingConfigurations = vClipPath.mChangingConfigurations | vectorDrawableCompatState3.mChangingConfigurations;
                    } else if ("group".equals(name)) {
                        VGroup vGroup2 = new VGroup();
                        TypedArray obtainAttributes4 = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_VECTOR_DRAWABLE_GROUP);
                        vGroup2.mRotate = TypedArrayUtils.getNamedFloat(obtainAttributes4, xmlPullParser, "rotation", 5, vGroup2.mRotate);
                        vGroup2.mPivotX = obtainAttributes4.getFloat(1, vGroup2.mPivotX);
                        vGroup2.mPivotY = obtainAttributes4.getFloat(2, vGroup2.mPivotY);
                        vGroup2.mScaleX = TypedArrayUtils.getNamedFloat(obtainAttributes4, xmlPullParser, "scaleX", 3, vGroup2.mScaleX);
                        vGroup2.mScaleY = TypedArrayUtils.getNamedFloat(obtainAttributes4, xmlPullParser, "scaleY", 4, vGroup2.mScaleY);
                        vGroup2.mTranslateX = TypedArrayUtils.getNamedFloat(obtainAttributes4, xmlPullParser, "translateX", 6, vGroup2.mTranslateX);
                        vGroup2.mTranslateY = TypedArrayUtils.getNamedFloat(obtainAttributes4, xmlPullParser, "translateY", 7, vGroup2.mTranslateY);
                        String string6 = obtainAttributes4.getString(0);
                        if (string6 != null) {
                            vGroup2.mGroupName = string6;
                        }
                        Matrix matrix = vGroup2.mLocalMatrix;
                        matrix.reset();
                        matrix.postTranslate(-vGroup2.mPivotX, -vGroup2.mPivotY);
                        matrix.postScale(vGroup2.mScaleX, vGroup2.mScaleY);
                        matrix.postRotate(vGroup2.mRotate, 0.0f, 0.0f);
                        matrix.postTranslate(vGroup2.mTranslateX + vGroup2.mPivotX, vGroup2.mTranslateY + vGroup2.mPivotY);
                        obtainAttributes4.recycle();
                        vGroup.mChildren.add(vGroup2);
                        arrayDeque = arrayDeque4;
                        arrayDeque.push(vGroup2);
                        String str3 = vGroup2.mGroupName;
                        if (str3 != null) {
                            simpleArrayMap2.put(str3, vGroup2);
                        }
                        vectorDrawableCompatState3.mChangingConfigurations = vGroup2.mChangingConfigurations | vectorDrawableCompatState3.mChangingConfigurations;
                    }
                    arrayDeque = arrayDeque4;
                }
            } else {
                arrayDeque = arrayDeque3;
                vPathRenderer = vPathRenderer3;
                i = depth;
                if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                    arrayDeque.pop();
                }
            }
            eventType = xmlPullParser.next();
            arrayDeque3 = arrayDeque;
            depth = i;
            vPathRenderer3 = vPathRenderer;
            i4 = 2;
            i3 = 1;
            i2 = 3;
            i5 = 0;
        }
        if (z) {
            throw new XmlPullParserException("no path defined");
        }
        this.mTintFilter = updateTintFilter(vectorDrawableCompatState.mTint, vectorDrawableCompatState.mTintMode);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.mDelegateDrawable;
        return drawable != null ? drawable.isAutoMirrored() : this.mVectorState.mAutoMirrored;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (!super.isStateful()) {
            VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
            if (vectorDrawableCompatState != null) {
                VPathRenderer vPathRenderer = vectorDrawableCompatState.mVPathRenderer;
                if (vPathRenderer.mIsStateful == null) {
                    vPathRenderer.mIsStateful = Boolean.valueOf(vPathRenderer.mRootGroup.isStateful());
                }
                if (vPathRenderer.mIsStateful.booleanValue() || ((colorStateList = this.mVectorState.mTint) != null && colorStateList.isStateful())) {
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.graphics.drawable.Drawable$ConstantState, androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VectorDrawableCompatState] */
    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.mMutated && super.mutate() == this) {
            VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
            ?? constantState = new Drawable.ConstantState();
            constantState.mTint = null;
            constantState.mTintMode = DEFAULT_TINT_MODE;
            if (vectorDrawableCompatState != null) {
                constantState.mChangingConfigurations = vectorDrawableCompatState.mChangingConfigurations;
                VPathRenderer vPathRenderer = new VPathRenderer(vectorDrawableCompatState.mVPathRenderer);
                constantState.mVPathRenderer = vPathRenderer;
                if (vectorDrawableCompatState.mVPathRenderer.mFillPaint != null) {
                    vPathRenderer.mFillPaint = new Paint(vectorDrawableCompatState.mVPathRenderer.mFillPaint);
                }
                if (vectorDrawableCompatState.mVPathRenderer.mStrokePaint != null) {
                    constantState.mVPathRenderer.mStrokePaint = new Paint(vectorDrawableCompatState.mVPathRenderer.mStrokePaint);
                }
                constantState.mTint = vectorDrawableCompatState.mTint;
                constantState.mTintMode = vectorDrawableCompatState.mTintMode;
                constantState.mAutoMirrored = vectorDrawableCompatState.mAutoMirrored;
            }
            this.mVectorState = constantState;
            this.mMutated = true;
        }
        return this;
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z;
        PorterDuff.Mode mode;
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        ColorStateList colorStateList = vectorDrawableCompatState.mTint;
        if (colorStateList == null || (mode = vectorDrawableCompatState.mTintMode) == null) {
            z = false;
        } else {
            this.mTintFilter = updateTintFilter(colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        VPathRenderer vPathRenderer = vectorDrawableCompatState.mVPathRenderer;
        if (vPathRenderer.mIsStateful == null) {
            vPathRenderer.mIsStateful = Boolean.valueOf(vPathRenderer.mRootGroup.isStateful());
        }
        if (vPathRenderer.mIsStateful.booleanValue()) {
            boolean onStateChanged = vectorDrawableCompatState.mVPathRenderer.mRootGroup.onStateChanged(iArr);
            vectorDrawableCompatState.mCacheDirty |= onStateChanged;
            if (onStateChanged) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.setAlpha(i);
            return;
        }
        VPathRenderer vPathRenderer = this.mVectorState.mVPathRenderer;
        if (vPathRenderer.mRootAlpha != i) {
            vPathRenderer.mRootAlpha = i;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            DrawableCompat.setAutoMirrored(drawable, z);
        } else {
            this.mVectorState.mAutoMirrored = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.mColorFilter = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            DrawableCompat.setTint(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        if (vectorDrawableCompatState.mTint != colorStateList) {
            vectorDrawableCompatState.mTint = colorStateList;
            this.mTintFilter = updateTintFilter(colorStateList, vectorDrawableCompatState.mTintMode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.setTintMode(mode);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        if (vectorDrawableCompatState.mTintMode != mode) {
            vectorDrawableCompatState.mTintMode = mode;
            this.mTintFilter = updateTintFilter(vectorDrawableCompatState.mTint, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.mDelegateDrawable;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.mDelegateDrawable;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    public final PorterDuffColorFilter updateTintFilter(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }
}
