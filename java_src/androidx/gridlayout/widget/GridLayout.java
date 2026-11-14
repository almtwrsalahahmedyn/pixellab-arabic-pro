package androidx.gridlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.LogPrinter;
import android.util.Pair;
import android.util.Printer;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.gridlayout.R$styleable;
import androidx.legacy.widget.Space;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class GridLayout extends ViewGroup {
    public static final AnonymousClass7 BASELINE;
    public static final AnonymousClass4 BOTTOM;
    public static final AnonymousClass6 CENTER;
    public static final int COLUMN_COUNT;
    public static final int COLUMN_ORDER_PRESERVED;
    public static final AnonymousClass4 END;
    public static final AnonymousClass8 FILL;
    public static final AnonymousClass5 LEFT;
    public static final LogPrinter LOG_PRINTER = new LogPrinter(3, GridLayout.class.getName());
    public static final int ORIENTATION;
    public static final AnonymousClass5 RIGHT;
    public static final int ROW_COUNT;
    public static final int ROW_ORDER_PRESERVED;
    public static final AnonymousClass3 START;
    public static final AnonymousClass3 TOP;
    public static final AnonymousClass2 UNDEFINED_ALIGNMENT;
    public static final int USE_DEFAULT_MARGINS;
    public final int mAlignmentMode;
    public final int mDefaultGap;
    public final Axis mHorizontalAxis;
    public int mLastLayoutParamsHashCode;
    public final int mOrientation;
    public final LogPrinter mPrinter;
    public final boolean mUseDefaultMargins;
    public final Axis mVerticalAxis;

    /* loaded from: classes.dex */
    public abstract class Alignment {
        public abstract int getAlignmentValue(View view, int i, int i2);

        public Bounds getBounds() {
            return new Bounds();
        }

        public abstract String getDebugString();

        public abstract int getGravityOffset(View view, int i);

        public int getSizeInCell(int i, int i2) {
            return i;
        }

        public final String toString() {
            return "Alignment:" + getDebugString();
        }
    }

    /* loaded from: classes.dex */
    public final class Arc {
        public final Interval span;
        public boolean valid = true;
        public final MutableInt value;

        public Arc(Interval interval, MutableInt mutableInt) {
            this.span = interval;
            this.value = mutableInt;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.span);
            sb.append(" ");
            sb.append(!this.valid ? "+>" : "->");
            sb.append(" ");
            sb.append(this.value);
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public final class Assoc extends ArrayList {
        public final Class keyType;
        public final Class valueType;

        public Assoc(Class cls, Class cls2) {
            this.keyType = cls;
            this.valueType = cls2;
        }

        public final PackedMap pack() {
            int size = size();
            Object[] objArr = (Object[]) Array.newInstance((Class<?>) this.keyType, size);
            Object[] objArr2 = (Object[]) Array.newInstance((Class<?>) this.valueType, size);
            for (int i = 0; i < size; i++) {
                objArr[i] = ((Pair) get(i)).first;
                objArr2[i] = ((Pair) get(i)).second;
            }
            return new PackedMap(objArr, objArr2);
        }
    }

    /* loaded from: classes.dex */
    public final class Axis {
        public Arc[] arcs;
        public PackedMap backwardLinks;
        public int[] deltas;
        public PackedMap forwardLinks;
        public PackedMap groupBounds;
        public boolean hasWeights;
        public final boolean horizontal;
        public int[] leadingMargins;
        public int[] locations;
        public int[] trailingMargins;
        public int definedCount = Integer.MIN_VALUE;
        public int maxIndex = Integer.MIN_VALUE;
        public boolean groupBoundsValid = false;
        public boolean forwardLinksValid = false;
        public boolean backwardLinksValid = false;
        public boolean leadingMarginsValid = false;
        public boolean trailingMarginsValid = false;
        public boolean arcsValid = false;
        public boolean locationsValid = false;
        public boolean hasWeightsValid = false;
        public boolean orderPreserved = true;
        public final MutableInt parentMin = new MutableInt(0);
        public final MutableInt parentMax = new MutableInt(-100000);

        /* renamed from: androidx.gridlayout.widget.GridLayout$Axis$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass1 {
            public Arc[][] arcsByVertex;
            public int cursor;
            public Arc[] result;
            public int[] visited;

            public final void walk(int i) {
                int[] iArr = this.visited;
                if (iArr[i] != 0) {
                    return;
                }
                iArr[i] = 1;
                for (Arc arc : this.arcsByVertex[i]) {
                    walk(arc.span.max);
                    int i2 = this.cursor;
                    this.cursor = i2 - 1;
                    this.result[i2] = arc;
                }
                iArr[i] = 2;
            }
        }

        public Axis(boolean z) {
            this.horizontal = z;
        }

        public static void include(ArrayList arrayList, Interval interval, MutableInt mutableInt, boolean z) {
            if (interval.max - interval.min == 0) {
                return;
            }
            if (z) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (((Arc) it.next()).span.equals(interval)) {
                        return;
                    }
                }
            }
            arrayList.add(new Arc(interval, mutableInt));
        }

        public final String arcsToString(ArrayList arrayList) {
            String str = this.horizontal ? "x" : "y";
            StringBuilder sb = new StringBuilder();
            Iterator it = arrayList.iterator();
            boolean z = true;
            while (it.hasNext()) {
                Arc arc = (Arc) it.next();
                if (z) {
                    z = false;
                } else {
                    sb.append(", ");
                }
                Interval interval = arc.span;
                int i = interval.min;
                int i2 = arc.value.value;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                int i3 = interval.max;
                if (i < i3) {
                    sb2.append(i3);
                    sb2.append("-");
                    sb2.append(str);
                    sb2.append(i);
                    sb2.append(">=");
                } else {
                    sb2.append(i);
                    sb2.append("-");
                    sb2.append(str);
                    sb2.append(i3);
                    sb2.append("<=");
                    i2 = -i2;
                }
                sb2.append(i2);
                sb.append(sb2.toString());
            }
            return sb.toString();
        }

        public final void computeLinks(PackedMap packedMap, boolean z) {
            for (MutableInt mutableInt : (MutableInt[]) packedMap.values) {
                mutableInt.value = Integer.MIN_VALUE;
            }
            Bounds[] boundsArr = (Bounds[]) getGroupBounds().values;
            for (int i = 0; i < boundsArr.length; i++) {
                int size = boundsArr[i].size(z);
                MutableInt mutableInt2 = (MutableInt) packedMap.values[packedMap.index[i]];
                int i2 = mutableInt2.value;
                if (!z) {
                    size = -size;
                }
                mutableInt2.value = Math.max(i2, size);
            }
        }

        public final void computeMargins(boolean z) {
            int[] iArr = z ? this.leadingMargins : this.trailingMargins;
            GridLayout gridLayout = GridLayout.this;
            int childCount = gridLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = gridLayout.getChildAt(i);
                if (childAt.getVisibility() != 8) {
                    gridLayout.getClass();
                    LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                    boolean z2 = this.horizontal;
                    Interval interval = (z2 ? layoutParams.columnSpec : layoutParams.rowSpec).span;
                    int i2 = z ? interval.min : interval.max;
                    iArr[i2] = Math.max(iArr[i2], gridLayout.getMargin1(childAt, z2, z));
                }
            }
        }

        public final PackedMap createLinks(boolean z) {
            Interval interval;
            Assoc assoc = new Assoc(Interval.class, MutableInt.class);
            Spec[] specArr = (Spec[]) getGroupBounds().keys;
            int length = specArr.length;
            for (int i = 0; i < length; i++) {
                if (z) {
                    interval = specArr[i].span;
                } else {
                    Interval interval2 = specArr[i].span;
                    interval = new Interval(interval2.max, interval2.min);
                }
                assoc.add(Pair.create(interval, new MutableInt()));
            }
            return assoc.pack();
        }

        public final Arc[] getArcs() {
            if (this.arcs == null) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (this.forwardLinks == null) {
                    this.forwardLinks = createLinks(true);
                }
                if (!this.forwardLinksValid) {
                    computeLinks(this.forwardLinks, true);
                    this.forwardLinksValid = true;
                }
                PackedMap packedMap = this.forwardLinks;
                int i = 0;
                while (true) {
                    Interval[] intervalArr = (Interval[]) packedMap.keys;
                    if (i >= intervalArr.length) {
                        break;
                    }
                    include(arrayList, intervalArr[i], ((MutableInt[]) packedMap.values)[i], false);
                    i++;
                }
                if (this.backwardLinks == null) {
                    this.backwardLinks = createLinks(false);
                }
                if (!this.backwardLinksValid) {
                    computeLinks(this.backwardLinks, false);
                    this.backwardLinksValid = true;
                }
                PackedMap packedMap2 = this.backwardLinks;
                int i2 = 0;
                while (true) {
                    Interval[] intervalArr2 = (Interval[]) packedMap2.keys;
                    if (i2 >= intervalArr2.length) {
                        break;
                    }
                    include(arrayList2, intervalArr2[i2], ((MutableInt[]) packedMap2.values)[i2], false);
                    i2++;
                }
                if (this.orderPreserved) {
                    int i3 = 0;
                    while (i3 < getCount()) {
                        int i4 = i3 + 1;
                        include(arrayList, new Interval(i3, i4), new MutableInt(0), true);
                        i3 = i4;
                    }
                }
                int count = getCount();
                include(arrayList, new Interval(0, count), this.parentMin, false);
                include(arrayList2, new Interval(count, 0), this.parentMax, false);
                Arc[] arcArr = topologicalSort(arrayList);
                Arc[] arcArr2 = topologicalSort(arrayList2);
                AnonymousClass7 anonymousClass7 = GridLayout.BASELINE;
                Object[] objArr = (Object[]) Array.newInstance(arcArr.getClass().getComponentType(), arcArr.length + arcArr2.length);
                System.arraycopy(arcArr, 0, objArr, 0, arcArr.length);
                System.arraycopy(arcArr2, 0, objArr, arcArr.length, arcArr2.length);
                this.arcs = (Arc[]) objArr;
            }
            if (!this.arcsValid) {
                if (this.forwardLinks == null) {
                    this.forwardLinks = createLinks(true);
                }
                if (!this.forwardLinksValid) {
                    computeLinks(this.forwardLinks, true);
                    this.forwardLinksValid = true;
                }
                if (this.backwardLinks == null) {
                    this.backwardLinks = createLinks(false);
                }
                if (!this.backwardLinksValid) {
                    computeLinks(this.backwardLinks, false);
                    this.backwardLinksValid = true;
                }
                this.arcsValid = true;
            }
            return this.arcs;
        }

        public final int getCount() {
            return Math.max(this.definedCount, getMaxIndex());
        }

        public final PackedMap getGroupBounds() {
            int margin;
            int i;
            PackedMap packedMap = this.groupBounds;
            boolean z = this.horizontal;
            GridLayout gridLayout = GridLayout.this;
            if (packedMap == null) {
                Assoc assoc = new Assoc(Spec.class, Bounds.class);
                int childCount = gridLayout.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = gridLayout.getChildAt(i2);
                    AnonymousClass7 anonymousClass7 = GridLayout.BASELINE;
                    LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                    Spec spec = z ? layoutParams.columnSpec : layoutParams.rowSpec;
                    assoc.add(Pair.create(spec, spec.getAbsoluteAlignment(z).getBounds()));
                }
                this.groupBounds = assoc.pack();
            }
            if (!this.groupBoundsValid) {
                for (Bounds bounds : (Bounds[]) this.groupBounds.values) {
                    bounds.reset();
                }
                int childCount2 = gridLayout.getChildCount();
                for (int i3 = 0; i3 < childCount2; i3++) {
                    View childAt2 = gridLayout.getChildAt(i3);
                    AnonymousClass7 anonymousClass72 = GridLayout.BASELINE;
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    Spec spec2 = z ? layoutParams2.columnSpec : layoutParams2.rowSpec;
                    if (childAt2.getVisibility() == 8) {
                        margin = 0;
                    } else {
                        margin = gridLayout.getMargin(childAt2, z, false) + gridLayout.getMargin(childAt2, z, true) + (z ? childAt2.getMeasuredWidth() : childAt2.getMeasuredHeight());
                    }
                    if (spec2.weight == 0.0f) {
                        i = 0;
                    } else {
                        if (this.deltas == null) {
                            this.deltas = new int[gridLayout.getChildCount()];
                        }
                        i = this.deltas[i3];
                    }
                    int i4 = margin + i;
                    PackedMap packedMap2 = this.groupBounds;
                    Bounds bounds2 = (Bounds) packedMap2.values[packedMap2.index[i3]];
                    bounds2.flexibility = ((spec2.alignment == GridLayout.UNDEFINED_ALIGNMENT && spec2.weight == 0.0f) ? 0 : 2) & bounds2.flexibility;
                    int alignmentValue = spec2.getAbsoluteAlignment(z).getAlignmentValue(childAt2, i4, gridLayout.getLayoutMode());
                    bounds2.include(alignmentValue, i4 - alignmentValue);
                }
                this.groupBoundsValid = true;
            }
            return this.groupBounds;
        }

        public final int[] getLocations() {
            boolean z;
            if (this.locations == null) {
                this.locations = new int[getCount() + 1];
            }
            if (!this.locationsValid) {
                int[] iArr = this.locations;
                boolean z2 = this.hasWeightsValid;
                GridLayout gridLayout = GridLayout.this;
                float f = 0.0f;
                boolean z3 = this.horizontal;
                if (!z2) {
                    int childCount = gridLayout.getChildCount();
                    int i = 0;
                    while (true) {
                        if (i >= childCount) {
                            z = false;
                            break;
                        }
                        View childAt = gridLayout.getChildAt(i);
                        if (childAt.getVisibility() != 8) {
                            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                            if ((z3 ? layoutParams.columnSpec : layoutParams.rowSpec).weight != 0.0f) {
                                z = true;
                                break;
                            }
                        }
                        i++;
                    }
                    this.hasWeights = z;
                    this.hasWeightsValid = true;
                }
                if (this.hasWeights) {
                    if (this.deltas == null) {
                        this.deltas = new int[gridLayout.getChildCount()];
                    }
                    Arrays.fill(this.deltas, 0);
                    solve(getArcs(), iArr, true);
                    int childCount2 = (gridLayout.getChildCount() * this.parentMin.value) + 1;
                    if (childCount2 >= 2) {
                        int childCount3 = gridLayout.getChildCount();
                        for (int i2 = 0; i2 < childCount3; i2++) {
                            View childAt2 = gridLayout.getChildAt(i2);
                            if (childAt2.getVisibility() != 8) {
                                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                                f += (z3 ? layoutParams2.columnSpec : layoutParams2.rowSpec).weight;
                            }
                        }
                        int i3 = -1;
                        int i4 = 0;
                        boolean z4 = true;
                        while (i4 < childCount2) {
                            int i5 = (int) ((i4 + childCount2) / 2);
                            invalidateValues();
                            shareOutDelta(i5, f);
                            z4 = solve(getArcs(), iArr, false);
                            if (z4) {
                                i4 = i5 + 1;
                                i3 = i5;
                            } else {
                                childCount2 = i5;
                            }
                        }
                        if (i3 > 0 && !z4) {
                            invalidateValues();
                            shareOutDelta(i3, f);
                            solve(getArcs(), iArr, true);
                        }
                    }
                } else {
                    solve(getArcs(), iArr, true);
                }
                if (!this.orderPreserved) {
                    int i6 = iArr[0];
                    int length = iArr.length;
                    for (int i7 = 0; i7 < length; i7++) {
                        iArr[i7] = iArr[i7] - i6;
                    }
                }
                this.locationsValid = true;
            }
            return this.locations;
        }

        public final int getMaxIndex() {
            if (this.maxIndex == Integer.MIN_VALUE) {
                GridLayout gridLayout = GridLayout.this;
                int childCount = gridLayout.getChildCount();
                int i = -1;
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = gridLayout.getChildAt(i2);
                    AnonymousClass7 anonymousClass7 = GridLayout.BASELINE;
                    LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                    Interval interval = (this.horizontal ? layoutParams.columnSpec : layoutParams.rowSpec).span;
                    int max = Math.max(i, interval.min);
                    int i3 = interval.max;
                    i = Math.max(Math.max(max, i3), i3 - interval.min);
                }
                this.maxIndex = Math.max(0, i != -1 ? i : Integer.MIN_VALUE);
            }
            return this.maxIndex;
        }

        public final int getMeasure(int i) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode == Integer.MIN_VALUE) {
                this.parentMin.value = 0;
                this.parentMax.value = -size;
                this.locationsValid = false;
                return getLocations()[getCount()];
            }
            if (mode == 0) {
                this.parentMin.value = 0;
                this.parentMax.value = -100000;
                this.locationsValid = false;
                return getLocations()[getCount()];
            }
            if (mode != 1073741824) {
                return 0;
            }
            this.parentMin.value = size;
            this.parentMax.value = -size;
            this.locationsValid = false;
            return getLocations()[getCount()];
        }

        public final void invalidateStructure() {
            this.maxIndex = Integer.MIN_VALUE;
            this.groupBounds = null;
            this.forwardLinks = null;
            this.backwardLinks = null;
            this.leadingMargins = null;
            this.trailingMargins = null;
            this.arcs = null;
            this.locations = null;
            this.deltas = null;
            this.hasWeightsValid = false;
            invalidateValues();
        }

        public final void invalidateValues() {
            this.groupBoundsValid = false;
            this.forwardLinksValid = false;
            this.backwardLinksValid = false;
            this.leadingMarginsValid = false;
            this.trailingMarginsValid = false;
            this.arcsValid = false;
            this.locationsValid = false;
        }

        public final void setCount(int i) {
            if (i == Integer.MIN_VALUE || i >= getMaxIndex()) {
                this.definedCount = i;
            } else {
                GridLayout.handleInvalidParams((this.horizontal ? "column" : "row").concat("Count must be greater than or equal to the maximum of all grid indices (and spans) defined in the LayoutParams of each child"));
                throw null;
            }
        }

        public final void shareOutDelta(int i, float f) {
            Arrays.fill(this.deltas, 0);
            GridLayout gridLayout = GridLayout.this;
            int childCount = gridLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = gridLayout.getChildAt(i2);
                if (childAt.getVisibility() != 8) {
                    gridLayout.getClass();
                    LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                    float f2 = (this.horizontal ? layoutParams.columnSpec : layoutParams.rowSpec).weight;
                    if (f2 != 0.0f) {
                        int round = Math.round((i * f2) / f);
                        this.deltas[i2] = round;
                        i -= round;
                        f -= f2;
                    }
                }
            }
        }

        public final boolean solve(Arc[] arcArr, int[] iArr, boolean z) {
            boolean z2;
            boolean z3;
            String str = this.horizontal ? "horizontal" : "vertical";
            boolean z4 = true;
            int count = getCount() + 1;
            boolean[] zArr = null;
            int i = 0;
            while (i < arcArr.length) {
                Arrays.fill(iArr, 0);
                for (int i2 = 0; i2 < count; i2++) {
                    boolean z5 = false;
                    for (Arc arc : arcArr) {
                        if (arc.valid) {
                            Interval interval = arc.span;
                            int i3 = iArr[interval.min] + arc.value.value;
                            int i4 = interval.max;
                            if (i3 > iArr[i4]) {
                                iArr[i4] = i3;
                                z3 = true;
                                z5 |= z3;
                            }
                        }
                        z3 = false;
                        z5 |= z3;
                    }
                    if (!z5) {
                        if (zArr != null) {
                            ArrayList arrayList = new ArrayList();
                            ArrayList arrayList2 = new ArrayList();
                            for (int i5 = 0; i5 < arcArr.length; i5++) {
                                Arc arc2 = arcArr[i5];
                                if (zArr[i5]) {
                                    arrayList.add(arc2);
                                }
                                if (!arc2.valid) {
                                    arrayList2.add(arc2);
                                }
                            }
                            GridLayout.this.mPrinter.println(str + " constraints: " + arcsToString(arrayList) + " are inconsistent; permanently removing: " + arcsToString(arrayList2) + ". ");
                        }
                        return z4;
                    }
                }
                if (!z) {
                    return false;
                }
                boolean[] zArr2 = new boolean[arcArr.length];
                for (int i6 = 0; i6 < count; i6++) {
                    int length = arcArr.length;
                    for (int i7 = 0; i7 < length; i7++) {
                        boolean z6 = zArr2[i7];
                        Arc arc3 = arcArr[i7];
                        if (arc3.valid) {
                            Interval interval2 = arc3.span;
                            int i8 = iArr[interval2.min] + arc3.value.value;
                            int i9 = interval2.max;
                            if (i8 > iArr[i9]) {
                                iArr[i9] = i8;
                                z2 = true;
                                zArr2[i7] = z2 | z6;
                            }
                        }
                        z2 = false;
                        zArr2[i7] = z2 | z6;
                    }
                }
                if (i == 0) {
                    zArr = zArr2;
                }
                int i10 = 0;
                while (true) {
                    if (i10 >= arcArr.length) {
                        break;
                    }
                    if (zArr2[i10]) {
                        Arc arc4 = arcArr[i10];
                        Interval interval3 = arc4.span;
                        if (interval3.min >= interval3.max) {
                            arc4.valid = false;
                            break;
                        }
                    }
                    i10++;
                }
                i++;
                z4 = true;
            }
            return z4;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [androidx.gridlayout.widget.GridLayout$Axis$1, java.lang.Object] */
        public final Arc[] topologicalSort(ArrayList arrayList) {
            Arc[] arcArr = (Arc[]) arrayList.toArray(new Arc[arrayList.size()]);
            ?? obj = new Object();
            int length = arcArr.length;
            obj.result = new Arc[length];
            obj.cursor = length - 1;
            int count = getCount() + 1;
            Arc[][] arcArr2 = new Arc[count];
            int[] iArr = new int[count];
            for (Arc arc : arcArr) {
                int i = arc.span.min;
                iArr[i] = iArr[i] + 1;
            }
            for (int i2 = 0; i2 < count; i2++) {
                arcArr2[i2] = new Arc[iArr[i2]];
            }
            Arrays.fill(iArr, 0);
            for (Arc arc2 : arcArr) {
                int i3 = arc2.span.min;
                Arc[] arcArr3 = arcArr2[i3];
                int i4 = iArr[i3];
                iArr[i3] = i4 + 1;
                arcArr3[i4] = arc2;
            }
            obj.arcsByVertex = arcArr2;
            obj.visited = new int[getCount() + 1];
            for (int i5 = 0; i5 < count; i5++) {
                obj.walk(i5);
            }
            return obj.result;
        }
    }

    /* loaded from: classes.dex */
    public class Bounds {
        public int after;
        public int before;
        public int flexibility;

        public Bounds() {
            reset();
        }

        public int getOffset(GridLayout gridLayout, View view, Alignment alignment, int i, boolean z) {
            return this.before - alignment.getAlignmentValue(view, i, gridLayout.getLayoutMode());
        }

        public void include(int i, int i2) {
            this.before = Math.max(this.before, i);
            this.after = Math.max(this.after, i2);
        }

        public void reset() {
            this.before = Integer.MIN_VALUE;
            this.after = Integer.MIN_VALUE;
            this.flexibility = 2;
        }

        public int size(boolean z) {
            if (!z) {
                int i = this.flexibility;
                AnonymousClass7 anonymousClass7 = GridLayout.BASELINE;
                if ((i & 2) != 0) {
                    return 100000;
                }
            }
            return this.before + this.after;
        }

        public final String toString() {
            return "Bounds{before=" + this.before + ", after=" + this.after + '}';
        }
    }

    /* loaded from: classes.dex */
    public final class Interval {
        public final int max;
        public final int min;

        public Interval(int i, int i2) {
            this.min = i;
            this.max = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Interval.class != obj.getClass()) {
                return false;
            }
            Interval interval = (Interval) obj;
            return this.max == interval.max && this.min == interval.min;
        }

        public final int hashCode() {
            return (this.min * 31) + this.max;
        }

        public final String toString() {
            return "[" + this.min + ", " + this.max + "]";
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public static final int DEFAULT_SPAN_SIZE = 1;
        public Spec columnSpec;
        public Spec rowSpec;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LayoutParams() {
            super(-2, -2);
            Spec spec = Spec.UNDEFINED;
            this.rowSpec = spec;
            this.columnSpec = spec;
            setMargins(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
            this.rowSpec = spec;
            this.columnSpec = spec;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            Spec spec = Spec.UNDEFINED;
            this.rowSpec = spec;
            this.columnSpec = spec;
            int[] iArr = R$styleable.GridLayout_Layout;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
            try {
                int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, Integer.MIN_VALUE);
                ((ViewGroup.MarginLayoutParams) this).leftMargin = obtainStyledAttributes.getDimensionPixelSize(3, dimensionPixelSize);
                ((ViewGroup.MarginLayoutParams) this).topMargin = obtainStyledAttributes.getDimensionPixelSize(4, dimensionPixelSize);
                ((ViewGroup.MarginLayoutParams) this).rightMargin = obtainStyledAttributes.getDimensionPixelSize(5, dimensionPixelSize);
                ((ViewGroup.MarginLayoutParams) this).bottomMargin = obtainStyledAttributes.getDimensionPixelSize(6, dimensionPixelSize);
                obtainStyledAttributes.recycle();
                obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
                try {
                    int i = obtainStyledAttributes.getInt(10, 0);
                    int i2 = obtainStyledAttributes.getInt(7, Integer.MIN_VALUE);
                    int i3 = DEFAULT_SPAN_SIZE;
                    this.columnSpec = GridLayout.spec(i2, obtainStyledAttributes.getInt(8, i3), GridLayout.getAlignment(i, true), obtainStyledAttributes.getFloat(9, 0.0f));
                    this.rowSpec = GridLayout.spec(obtainStyledAttributes.getInt(11, Integer.MIN_VALUE), obtainStyledAttributes.getInt(12, i3), GridLayout.getAlignment(i, false), obtainStyledAttributes.getFloat(13, 0.0f));
                } finally {
                }
            } finally {
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            LayoutParams layoutParams = (LayoutParams) obj;
            return this.columnSpec.equals(layoutParams.columnSpec) && this.rowSpec.equals(layoutParams.rowSpec);
        }

        public final int hashCode() {
            return this.columnSpec.hashCode() + (this.rowSpec.hashCode() * 31);
        }

        @Override // android.view.ViewGroup.LayoutParams
        public final void setBaseAttributes(TypedArray typedArray, int i, int i2) {
            ((ViewGroup.MarginLayoutParams) this).width = typedArray.getLayoutDimension(i, -2);
            ((ViewGroup.MarginLayoutParams) this).height = typedArray.getLayoutDimension(i2, -2);
        }
    }

    /* loaded from: classes.dex */
    public final class MutableInt {
        public int value;

        public MutableInt() {
            this.value = Integer.MIN_VALUE;
        }

        public MutableInt(int i) {
            this.value = i;
        }

        public final String toString() {
            return Integer.toString(this.value);
        }
    }

    /* loaded from: classes.dex */
    public final class PackedMap {
        public final int[] index;
        public final Object[] keys;
        public final Object[] values;

        public PackedMap(Object[] objArr, Object[] objArr2) {
            int length = objArr.length;
            int[] iArr = new int[length];
            HashMap hashMap = new HashMap();
            for (int i = 0; i < length; i++) {
                Object obj = objArr[i];
                Integer num = (Integer) hashMap.get(obj);
                if (num == null) {
                    num = Integer.valueOf(hashMap.size());
                    hashMap.put(obj, num);
                }
                iArr[i] = num.intValue();
            }
            this.index = iArr;
            this.keys = compact(objArr, iArr);
            this.values = compact(objArr2, iArr);
        }

        public static Object[] compact(Object[] objArr, int[] iArr) {
            int length = objArr.length;
            Class<?> componentType = objArr.getClass().getComponentType();
            AnonymousClass7 anonymousClass7 = GridLayout.BASELINE;
            int i = -1;
            for (int i2 : iArr) {
                i = Math.max(i, i2);
            }
            Object[] objArr2 = (Object[]) Array.newInstance(componentType, i + 1);
            for (int i3 = 0; i3 < length; i3++) {
                objArr2[iArr[i3]] = objArr[i3];
            }
            return objArr2;
        }
    }

    /* loaded from: classes.dex */
    public final class Spec {
        public static final Spec UNDEFINED = GridLayout.spec(Integer.MIN_VALUE, 1, GridLayout.UNDEFINED_ALIGNMENT, 0.0f);
        public final Alignment alignment;
        public final Interval span;
        public final boolean startDefined;
        public final float weight;

        public Spec(boolean z, Interval interval, Alignment alignment, float f) {
            this.startDefined = z;
            this.span = interval;
            this.alignment = alignment;
            this.weight = f;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Spec.class != obj.getClass()) {
                return false;
            }
            Spec spec = (Spec) obj;
            return this.alignment.equals(spec.alignment) && this.span.equals(spec.span);
        }

        public final Alignment getAbsoluteAlignment(boolean z) {
            AnonymousClass2 anonymousClass2 = GridLayout.UNDEFINED_ALIGNMENT;
            Alignment alignment = this.alignment;
            return alignment != anonymousClass2 ? alignment : this.weight == 0.0f ? z ? GridLayout.START : GridLayout.BASELINE : GridLayout.FILL;
        }

        public final int hashCode() {
            return this.alignment.hashCode() + (this.span.hashCode() * 31);
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [androidx.gridlayout.widget.GridLayout$7] */
    /* JADX WARN: Type inference failed for: r0v11, types: [androidx.gridlayout.widget.GridLayout$8] */
    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.gridlayout.widget.GridLayout$2] */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.gridlayout.widget.GridLayout$3, androidx.gridlayout.widget.GridLayout$Alignment] */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.gridlayout.widget.GridLayout$6] */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.gridlayout.widget.GridLayout$4, androidx.gridlayout.widget.GridLayout$Alignment] */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.gridlayout.widget.GridLayout$5] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.gridlayout.widget.GridLayout$5] */
    static {
        new Printer() { // from class: androidx.gridlayout.widget.GridLayout.1
            @Override // android.util.Printer
            public final void println(String str) {
            }
        };
        ORIENTATION = 3;
        ROW_COUNT = 4;
        COLUMN_COUNT = 1;
        USE_DEFAULT_MARGINS = 6;
        ROW_ORDER_PRESERVED = 5;
        COLUMN_ORDER_PRESERVED = 2;
        UNDEFINED_ALIGNMENT = new Alignment() { // from class: androidx.gridlayout.widget.GridLayout.2
            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getAlignmentValue(View view, int i, int i2) {
                return Integer.MIN_VALUE;
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final String getDebugString() {
                return "UNDEFINED";
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getGravityOffset(View view, int i) {
                return Integer.MIN_VALUE;
            }
        };
        final ?? r0 = new Alignment() { // from class: androidx.gridlayout.widget.GridLayout.3
            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getAlignmentValue(View view, int i, int i2) {
                return 0;
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final String getDebugString() {
                return "LEADING";
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getGravityOffset(View view, int i) {
                return 0;
            }
        };
        final ?? r1 = new Alignment() { // from class: androidx.gridlayout.widget.GridLayout.4
            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getAlignmentValue(View view, int i, int i2) {
                return i;
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final String getDebugString() {
                return "TRAILING";
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getGravityOffset(View view, int i) {
                return i;
            }
        };
        TOP = r0;
        BOTTOM = r1;
        START = r0;
        END = r1;
        LEFT = new Alignment() { // from class: androidx.gridlayout.widget.GridLayout.5
            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getAlignmentValue(View view, int i, int i2) {
                ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                return (!(view.getLayoutDirection() == 1) ? Alignment.this : r1).getAlignmentValue(view, i, i2);
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final String getDebugString() {
                return "SWITCHING[L:" + Alignment.this.getDebugString() + ", R:" + r1.getDebugString() + "]";
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getGravityOffset(View view, int i) {
                ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                return (!(view.getLayoutDirection() == 1) ? Alignment.this : r1).getGravityOffset(view, i);
            }
        };
        RIGHT = new Alignment() { // from class: androidx.gridlayout.widget.GridLayout.5
            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getAlignmentValue(View view, int i, int i2) {
                ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                return (!(view.getLayoutDirection() == 1) ? Alignment.this : r0).getAlignmentValue(view, i, i2);
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final String getDebugString() {
                return "SWITCHING[L:" + Alignment.this.getDebugString() + ", R:" + r0.getDebugString() + "]";
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getGravityOffset(View view, int i) {
                ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                return (!(view.getLayoutDirection() == 1) ? Alignment.this : r0).getGravityOffset(view, i);
            }
        };
        CENTER = new Alignment() { // from class: androidx.gridlayout.widget.GridLayout.6
            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getAlignmentValue(View view, int i, int i2) {
                return i >> 1;
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final String getDebugString() {
                return "CENTER";
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getGravityOffset(View view, int i) {
                return i >> 1;
            }
        };
        BASELINE = new Alignment() { // from class: androidx.gridlayout.widget.GridLayout.7

            /* renamed from: androidx.gridlayout.widget.GridLayout$7$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass1 extends Bounds {
                public int size;

                @Override // androidx.gridlayout.widget.GridLayout.Bounds
                public final int getOffset(GridLayout gridLayout, View view, Alignment alignment, int i, boolean z) {
                    return Math.max(0, super.getOffset(gridLayout, view, alignment, i, z));
                }

                @Override // androidx.gridlayout.widget.GridLayout.Bounds
                public final void include(int i, int i2) {
                    super.include(i, i2);
                    this.size = Math.max(this.size, i + i2);
                }

                @Override // androidx.gridlayout.widget.GridLayout.Bounds
                public final void reset() {
                    super.reset();
                    this.size = Integer.MIN_VALUE;
                }

                @Override // androidx.gridlayout.widget.GridLayout.Bounds
                public final int size(boolean z) {
                    return Math.max(super.size(z), this.size);
                }
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getAlignmentValue(View view, int i, int i2) {
                if (view.getVisibility() == 8) {
                    return 0;
                }
                int baseline = view.getBaseline();
                if (baseline == -1) {
                    return Integer.MIN_VALUE;
                }
                return baseline;
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final Bounds getBounds() {
                return new Bounds();
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final String getDebugString() {
                return "BASELINE";
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getGravityOffset(View view, int i) {
                return 0;
            }
        };
        FILL = new Alignment() { // from class: androidx.gridlayout.widget.GridLayout.8
            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getAlignmentValue(View view, int i, int i2) {
                return Integer.MIN_VALUE;
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final String getDebugString() {
                return "FILL";
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getGravityOffset(View view, int i) {
                return 0;
            }

            @Override // androidx.gridlayout.widget.GridLayout.Alignment
            public final int getSizeInCell(int i, int i2) {
                return i2;
            }
        };
    }

    public GridLayout(Context context) {
        this(context, null);
    }

    public GridLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GridLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Axis axis = new Axis(true);
        this.mHorizontalAxis = axis;
        Axis axis2 = new Axis(false);
        this.mVerticalAxis = axis2;
        this.mOrientation = 0;
        this.mUseDefaultMargins = false;
        this.mAlignmentMode = 1;
        this.mLastLayoutParamsHashCode = 0;
        this.mPrinter = LOG_PRINTER;
        this.mDefaultGap = context.getResources().getDimensionPixelOffset(R.dimen.default_gap);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.GridLayout);
        try {
            axis2.setCount(obtainStyledAttributes.getInt(ROW_COUNT, Integer.MIN_VALUE));
            invalidateStructure();
            requestLayout();
            axis.setCount(obtainStyledAttributes.getInt(COLUMN_COUNT, Integer.MIN_VALUE));
            invalidateStructure();
            requestLayout();
            int i2 = obtainStyledAttributes.getInt(ORIENTATION, 0);
            if (this.mOrientation != i2) {
                this.mOrientation = i2;
                invalidateStructure();
                requestLayout();
            }
            this.mUseDefaultMargins = obtainStyledAttributes.getBoolean(USE_DEFAULT_MARGINS, false);
            requestLayout();
            this.mAlignmentMode = obtainStyledAttributes.getInt(0, 1);
            requestLayout();
            axis2.orderPreserved = obtainStyledAttributes.getBoolean(ROW_ORDER_PRESERVED, true);
            axis2.invalidateStructure();
            invalidateStructure();
            requestLayout();
            axis.orderPreserved = obtainStyledAttributes.getBoolean(COLUMN_ORDER_PRESERVED, true);
            axis.invalidateStructure();
            invalidateStructure();
            requestLayout();
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static Alignment getAlignment(int i, boolean z) {
        int i2 = (i & (z ? 7 : 112)) >> (z ? 0 : 4);
        return i2 != 1 ? i2 != 3 ? i2 != 5 ? i2 != 7 ? i2 != 8388611 ? i2 != 8388613 ? UNDEFINED_ALIGNMENT : END : START : FILL : z ? RIGHT : BOTTOM : z ? LEFT : TOP : CENTER;
    }

    public static void handleInvalidParams(String str) {
        throw new IllegalArgumentException(str + ". ");
    }

    public static void setCellGroup(LayoutParams layoutParams, int i, int i2, int i3, int i4) {
        Interval interval = new Interval(i, i2 + i);
        Spec spec = layoutParams.rowSpec;
        layoutParams.rowSpec = new Spec(spec.startDefined, interval, spec.alignment, spec.weight);
        Interval interval2 = new Interval(i3, i4 + i3);
        Spec spec2 = layoutParams.columnSpec;
        layoutParams.columnSpec = new Spec(spec2.startDefined, interval2, spec2.alignment, spec2.weight);
    }

    public static Spec spec(int i, int i2, Alignment alignment, float f) {
        return new Spec(i != Integer.MIN_VALUE, new Interval(i, i2 + i), alignment, f);
    }

    public final void checkLayoutParams(LayoutParams layoutParams, boolean z) {
        String str = z ? "column" : "row";
        Interval interval = (z ? layoutParams.columnSpec : layoutParams.rowSpec).span;
        int i = interval.min;
        if (i != Integer.MIN_VALUE && i < 0) {
            handleInvalidParams(str.concat(" indices must be positive"));
            throw null;
        }
        int i2 = (z ? this.mHorizontalAxis : this.mVerticalAxis).definedCount;
        if (i2 != Integer.MIN_VALUE) {
            int i3 = interval.max;
            if (i3 > i2) {
                handleInvalidParams(str + " indices (start + span) mustn't exceed the " + str + " count");
                throw null;
            }
            if (i3 - i <= i2) {
                return;
            }
            handleInvalidParams(str + " span mustn't exceed the " + str + " count");
            throw null;
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (!(layoutParams instanceof LayoutParams)) {
            return false;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        checkLayoutParams(layoutParams2, true);
        checkLayoutParams(layoutParams2, false);
        return true;
    }

    public final int computeLayoutParamsHashCode() {
        int childCount = getChildCount();
        int i = 1;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                i = ((LayoutParams) childAt.getLayoutParams()).hashCode() + (i * 31);
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0092 A[EDGE_INSN: B:58:0x0092->B:32:0x0092 BREAK  A[LOOP:1: B:34:0x0070->B:51:0x0070], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void consistencyCheck() {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.gridlayout.widget.GridLayout.consistencyCheck():void");
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams, androidx.gridlayout.widget.GridLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams, androidx.gridlayout.widget.GridLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams, androidx.gridlayout.widget.GridLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            ?? marginLayoutParams = new ViewGroup.MarginLayoutParams((ViewGroup.MarginLayoutParams) layoutParams2);
            Spec spec = Spec.UNDEFINED;
            marginLayoutParams.rowSpec = spec;
            marginLayoutParams.columnSpec = spec;
            marginLayoutParams.rowSpec = layoutParams2.rowSpec;
            marginLayoutParams.columnSpec = layoutParams2.columnSpec;
            return marginLayoutParams;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ?? marginLayoutParams2 = new ViewGroup.MarginLayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            Spec spec2 = Spec.UNDEFINED;
            marginLayoutParams2.rowSpec = spec2;
            marginLayoutParams2.columnSpec = spec2;
            return marginLayoutParams2;
        }
        ?? marginLayoutParams3 = new ViewGroup.MarginLayoutParams(layoutParams);
        Spec spec3 = Spec.UNDEFINED;
        marginLayoutParams3.rowSpec = spec3;
        marginLayoutParams3.columnSpec = spec3;
        return marginLayoutParams3;
    }

    public final int getMargin(View view, boolean z, boolean z2) {
        int[] iArr;
        if (this.mAlignmentMode == 1) {
            return getMargin1(view, z, z2);
        }
        Axis axis = z ? this.mHorizontalAxis : this.mVerticalAxis;
        if (z2) {
            if (axis.leadingMargins == null) {
                axis.leadingMargins = new int[axis.getCount() + 1];
            }
            if (!axis.leadingMarginsValid) {
                axis.computeMargins(true);
                axis.leadingMarginsValid = true;
            }
            iArr = axis.leadingMargins;
        } else {
            if (axis.trailingMargins == null) {
                axis.trailingMargins = new int[axis.getCount() + 1];
            }
            if (!axis.trailingMarginsValid) {
                axis.computeMargins(false);
                axis.trailingMarginsValid = true;
            }
            iArr = axis.trailingMargins;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Interval interval = (z ? layoutParams.columnSpec : layoutParams.rowSpec).span;
        return iArr[z2 ? interval.min : interval.max];
    }

    public final int getMargin1(View view, boolean z, boolean z2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i = z ? z2 ? ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin : ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : z2 ? ((ViewGroup.MarginLayoutParams) layoutParams).topMargin : ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        if (this.mUseDefaultMargins) {
            Spec spec = z ? layoutParams.columnSpec : layoutParams.rowSpec;
            Axis axis = z ? this.mHorizontalAxis : this.mVerticalAxis;
            Interval interval = spec.span;
            if (z) {
                ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                if (getLayoutDirection() == 1) {
                    z2 = !z2;
                }
            }
            if (z2) {
                int i2 = interval.min;
            } else {
                int i3 = interval.max;
                axis.getCount();
            }
            if (view.getClass() != Space.class && view.getClass() != android.widget.Space.class) {
                return this.mDefaultGap / 2;
            }
        }
        return 0;
    }

    public final void invalidateStructure() {
        this.mLastLayoutParamsHashCode = 0;
        Axis axis = this.mHorizontalAxis;
        if (axis != null) {
            axis.invalidateStructure();
        }
        Axis axis2 = this.mVerticalAxis;
        if (axis2 != null) {
            axis2.invalidateStructure();
        }
        if (axis == null || axis2 == null) {
            return;
        }
        axis.invalidateValues();
        axis2.invalidateValues();
    }

    public final void measureChildWithMargins2(View view, int i, int i2, int i3, int i4) {
        view.measure(ViewGroup.getChildMeasureSpec(i, getMargin(view, true, false) + getMargin(view, true, true), i3), ViewGroup.getChildMeasureSpec(i2, getMargin(view, false, false) + getMargin(view, false, true), i4));
    }

    public final void measureChildrenWithMargins(int i, int i2, boolean z) {
        int i3;
        int i4;
        int i5;
        int i6;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (z) {
                    i3 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                    i4 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                } else {
                    boolean z2 = this.mOrientation == 0;
                    Spec spec = z2 ? layoutParams.columnSpec : layoutParams.rowSpec;
                    if (spec.getAbsoluteAlignment(z2) == FILL) {
                        int[] locations = (z2 ? this.mHorizontalAxis : this.mVerticalAxis).getLocations();
                        Interval interval = spec.span;
                        int margin = (locations[interval.max] - locations[interval.min]) - (getMargin(childAt, z2, false) + getMargin(childAt, z2, true));
                        if (z2) {
                            i5 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                            i6 = margin;
                            measureChildWithMargins2(childAt, i, i2, i6, i5);
                        } else {
                            i3 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                            i4 = margin;
                        }
                    }
                }
                i5 = i4;
                i6 = i3;
                measureChildWithMargins2(childAt, i, i2, i6, i5);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int[] iArr;
        Axis axis;
        int i5;
        int i6;
        View view;
        GridLayout gridLayout = this;
        consistencyCheck();
        int i7 = i3 - i;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int i8 = (i7 - paddingLeft) - paddingRight;
        Axis axis2 = gridLayout.mHorizontalAxis;
        axis2.parentMin.value = i8;
        axis2.parentMax.value = -i8;
        axis2.locationsValid = false;
        axis2.getLocations();
        int i9 = ((i4 - i2) - paddingTop) - paddingBottom;
        Axis axis3 = gridLayout.mVerticalAxis;
        axis3.parentMin.value = i9;
        axis3.parentMax.value = -i9;
        axis3.locationsValid = false;
        axis3.getLocations();
        int[] locations = axis2.getLocations();
        int[] locations2 = axis3.getLocations();
        int childCount = getChildCount();
        int i10 = 0;
        while (i10 < childCount) {
            View childAt = gridLayout.getChildAt(i10);
            if (childAt.getVisibility() == 8) {
                i5 = i10;
                i6 = childCount;
                axis = axis2;
                iArr = locations;
            } else {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Spec spec = layoutParams.columnSpec;
                Spec spec2 = layoutParams.rowSpec;
                Interval interval = spec.span;
                Interval interval2 = spec2.span;
                int i11 = childCount;
                int i12 = locations[interval.min];
                int i13 = locations2[interval2.min];
                int i14 = locations[interval.max];
                int i15 = locations2[interval2.max];
                int i16 = i14 - i12;
                int i17 = i15 - i13;
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                iArr = locations;
                Alignment absoluteAlignment = spec.getAbsoluteAlignment(true);
                Alignment absoluteAlignment2 = spec2.getAbsoluteAlignment(false);
                PackedMap groupBounds = axis2.getGroupBounds();
                Bounds bounds = (Bounds) groupBounds.values[groupBounds.index[i10]];
                PackedMap groupBounds2 = axis3.getGroupBounds();
                axis = axis2;
                Bounds bounds2 = (Bounds) groupBounds2.values[groupBounds2.index[i10]];
                i5 = i10;
                int gravityOffset = absoluteAlignment.getGravityOffset(childAt, i16 - bounds.size(true));
                int gravityOffset2 = absoluteAlignment2.getGravityOffset(childAt, i17 - bounds2.size(true));
                int margin = gridLayout.getMargin(childAt, true, true);
                int margin2 = gridLayout.getMargin(childAt, false, true);
                int margin3 = gridLayout.getMargin(childAt, true, false);
                int i18 = margin + margin3;
                int margin4 = margin2 + gridLayout.getMargin(childAt, false, false);
                i6 = i11;
                int offset = bounds.getOffset(this, childAt, absoluteAlignment, measuredWidth + i18, true);
                int offset2 = bounds2.getOffset(this, childAt, absoluteAlignment2, measuredHeight + margin4, false);
                int sizeInCell = absoluteAlignment.getSizeInCell(measuredWidth, i16 - i18);
                int sizeInCell2 = absoluteAlignment2.getSizeInCell(measuredHeight, i17 - margin4);
                int i19 = i12 + gravityOffset + offset;
                ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                int i20 = !(getLayoutDirection() == 1) ? paddingLeft + margin + i19 : (((i7 - sizeInCell) - paddingRight) - margin3) - i19;
                int i21 = paddingTop + i13 + gravityOffset2 + offset2 + margin2;
                if (sizeInCell == childAt.getMeasuredWidth() && sizeInCell2 == childAt.getMeasuredHeight()) {
                    view = childAt;
                } else {
                    view = childAt;
                    view.measure(View.MeasureSpec.makeMeasureSpec(sizeInCell, 1073741824), View.MeasureSpec.makeMeasureSpec(sizeInCell2, 1073741824));
                }
                view.layout(i20, i21, sizeInCell + i20, sizeInCell2 + i21);
            }
            i10 = i5 + 1;
            gridLayout = this;
            locations = iArr;
            axis2 = axis;
            childCount = i6;
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int measure;
        int measure2;
        consistencyCheck();
        Axis axis = this.mVerticalAxis;
        Axis axis2 = this.mHorizontalAxis;
        if (axis2 != null && axis != null) {
            axis2.invalidateValues();
            axis.invalidateValues();
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize((-paddingRight) + i), View.MeasureSpec.getMode(i));
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize((-paddingBottom) + i2), View.MeasureSpec.getMode(i2));
        measureChildrenWithMargins(makeMeasureSpec, makeMeasureSpec2, true);
        if (this.mOrientation == 0) {
            measure2 = axis2.getMeasure(makeMeasureSpec);
            measureChildrenWithMargins(makeMeasureSpec, makeMeasureSpec2, false);
            measure = axis.getMeasure(makeMeasureSpec2);
        } else {
            measure = axis.getMeasure(makeMeasureSpec2);
            measureChildrenWithMargins(makeMeasureSpec, makeMeasureSpec2, false);
            measure2 = axis2.getMeasure(makeMeasureSpec);
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(measure2 + paddingRight, getSuggestedMinimumWidth()), i, 0), View.resolveSizeAndState(Math.max(measure + paddingBottom, getSuggestedMinimumHeight()), i2, 0));
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        super.requestLayout();
        invalidateStructure();
    }
}
