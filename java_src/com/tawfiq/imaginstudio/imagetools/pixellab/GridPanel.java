package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.MotionEvent;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions.Line2D;

/* loaded from: classes.dex */
public class GridPanel extends View {
    MarkerList HorizontalMarkers;
    MarkerList VerticalMarkers;
    OnGridUpdated controlsListener;
    float dX;
    float dY;
    boolean gridEnabled;
    float halfCircleRad;
    float markerSelectionRad;
    Paint pntMarker;
    Paint pntMarkerSelected;
    Paint pntMarkerSnap;
    Paint pntMarkerStroke;
    float prevX;
    float prevY;
    float remainderH;
    float remainderV;
    Marker selectedMarker;
    public boolean selectionEnabled;
    boolean snapEnabled;
    float snapRad;
    Marker snappedToHor;
    Marker snappedToVer;

    /* loaded from: classes.dex */
    public class Marker {
        boolean isHorizontal;
        Marker next = null;
        private float relPos;

        public Marker(float f, boolean z) {
            this.relPos = Math.max(Math.min(f, 1.0f), 0.0f);
            this.isHorizontal = z;
        }

        public float getAbsPos() {
            return (this.isHorizontal ? GridPanel.this.getHeight() : GridPanel.this.getWidth()) * this.relPos;
        }

        public float getRelPos() {
            return this.relPos;
        }

        public void setPos(float f) {
            this.relPos = Math.max(Math.min(f, 1.0f), 0.0f);
        }
    }

    /* loaded from: classes.dex */
    public class MarkerList {
        Marker first = null;
        boolean isHorizontalList;

        public MarkerList(boolean z) {
            this.isHorizontalList = z;
        }

        private void add(Marker marker) {
            if (this.first != null) {
                if (marker.getRelPos() > this.first.getRelPos()) {
                    Marker marker2 = this.first;
                    while (true) {
                        Marker marker3 = marker2.next;
                        if (marker3 == null || marker3.getRelPos() > marker.getRelPos()) {
                            break;
                        } else {
                            marker2 = marker2.next;
                        }
                    }
                    Marker marker4 = marker2.next;
                    marker2.next = marker;
                    marker.next = marker4;
                    return;
                }
                marker.next = this.first;
            }
            this.first = marker;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAfterSelected() {
            Marker marker;
            GridPanel gridPanel = GridPanel.this;
            Marker marker2 = gridPanel.selectedMarker;
            Marker last = (marker2 == null || gridPanel.getContainer(marker2) == this) ? GridPanel.this.selectedMarker : getLast();
            GridPanel.this.selectMarker(addRelativePos(((last != null ? last.getRelPos() : 0.0f) + ((last == null || (marker = last.next) == null) ? 1.0f : marker.getRelPos())) * 0.5f));
        }

        private Marker addRelativePos(float f) {
            Marker marker = new Marker(f, this.isHorizontalList);
            add(marker);
            return marker;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addRelativePos(float... fArr) {
            for (float f : fArr) {
                addRelativePos(f);
            }
        }

        private Marker find_r(Marker marker, float f) {
            if (marker == null) {
                return null;
            }
            return marker.getRelPos() == f ? marker : find_r(marker.next, f);
        }

        public boolean checkIfValidRect() {
            return GridPanel.this.getWidth() > 0 && GridPanel.this.getHeight() > 0;
        }

        public void clear() {
            this.first = null;
        }

        public void draw(Canvas canvas, Paint paint, Paint paint2, Paint paint3, Paint paint4, boolean z) {
            float width = this.isHorizontalList ? GridPanel.this.getWidth() : GridPanel.this.getHeight();
            Marker marker = this.first;
            Line2D line2D = new Line2D();
            for (Marker marker2 = marker; marker2 != null; marker2 = marker2.next) {
                line2D.set(this.isHorizontalList ? 0.0f : marker2.getAbsPos(), this.isHorizontalList ? marker2.getAbsPos() : 0.0f, this.isHorizontalList ? width : marker2.getAbsPos(), this.isHorizontalList ? marker2.getAbsPos() : width);
                canvas.drawLine(line2D.getX1(), line2D.getY1(), line2D.getX2(), line2D.getY2(), paint2);
                GridPanel gridPanel = GridPanel.this;
                if (marker2 == gridPanel.snappedToHor || marker2 == gridPanel.snappedToVer) {
                    canvas.drawLine(line2D.getX1(), line2D.getY1(), line2D.getX2(), line2D.getY2(), paint4);
                }
                if (marker2 == GridPanel.this.selectedMarker && z) {
                    canvas.drawLine(line2D.getX1(), line2D.getY1(), line2D.getX2(), line2D.getY2(), paint3);
                }
                canvas.drawLine(line2D.getX1(), line2D.getY1(), line2D.getX2(), line2D.getY2(), paint);
                if (GridPanel.this.selectionEnabled) {
                    canvas.drawCircle(line2D.getX1(), line2D.getY1(), GridPanel.this.halfCircleRad * 1.1f, paint2);
                    canvas.drawCircle(line2D.getX1(), line2D.getY1(), GridPanel.this.halfCircleRad, paint);
                    canvas.drawCircle(line2D.getX2(), line2D.getY2(), GridPanel.this.halfCircleRad * 1.1f, paint2);
                    canvas.drawCircle(line2D.getX2(), line2D.getY2(), GridPanel.this.halfCircleRad, paint);
                }
            }
        }

        public Marker find(float f) {
            return find_r(this.first, f);
        }

        public Marker getAtPos(float f, float f2) {
            Marker marker = this.first;
            if (marker == null) {
                return null;
            }
            float abs = Math.abs(marker.getAbsPos() - f);
            while (true) {
                Marker marker2 = marker.next;
                if (marker2 == null) {
                    break;
                }
                float abs2 = Math.abs(marker2.getAbsPos() - f);
                if (abs2 > abs) {
                    break;
                }
                marker = marker.next;
                abs = abs2;
            }
            if (Math.abs(marker.getAbsPos() - f) <= f2) {
                return marker;
            }
            return null;
        }

        public Marker getLast() {
            Marker marker = this.first;
            while (marker != null) {
                Marker marker2 = marker.next;
                if (marker2 == null) {
                    break;
                }
                marker = marker2;
            }
            return marker;
        }

        public void move(Marker marker, float f, boolean z) {
            if (checkIfValidRect() && remove(marker, false)) {
                if (!z) {
                    f /= this.isHorizontalList ? GridPanel.this.getHeight() : GridPanel.this.getWidth();
                }
                marker.setPos(f);
                add(marker);
            }
        }

        public void moveBy(Marker marker, float f) {
            move(marker, marker.getAbsPos() + f, false);
        }

        public boolean remove(Marker marker, boolean z) {
            Marker marker2;
            Marker marker3 = this.first;
            if (marker3 == marker) {
                this.first = marker3.next;
                marker2 = null;
            } else {
                while (marker3 != null) {
                    Marker marker4 = marker3.next;
                    if (marker4 == marker) {
                        break;
                    }
                    marker3 = marker4;
                }
                if (marker3 == null) {
                    return false;
                }
                marker3.next = marker.next;
                marker2 = marker3;
            }
            if (!z) {
                return true;
            }
            GridPanel gridPanel = GridPanel.this;
            Marker marker5 = gridPanel.selectedMarker;
            if (marker5 != null) {
                Marker marker6 = marker5.next;
                if (marker6 != null) {
                    marker2 = marker6;
                }
                gridPanel.selectedMarker = marker2;
            }
            gridPanel.makeSureSomethingIsSelected();
            return true;
        }
    }

    /* loaded from: classes.dex */
    public interface OnGridUpdated {
        void gridSelectionToggled(boolean z);

        void gridSnapToggled(boolean z);

        void gridToggled(boolean z);
    }

    public GridPanel(Context context) {
        super(context);
        this.selectionEnabled = false;
        this.HorizontalMarkers = new MarkerList(true);
        this.VerticalMarkers = new MarkerList(false);
        this.selectedMarker = null;
        this.snappedToHor = null;
        this.snappedToVer = null;
        this.markerSelectionRad = commonFuncs.dpToPx(15);
        this.snapRad = commonFuncs.dpToPx(10);
        this.halfCircleRad = commonFuncs.dpToPx(10);
        this.pntMarker = new Paint(1);
        this.pntMarkerStroke = new Paint(1);
        this.pntMarkerSelected = new Paint(1);
        this.pntMarkerSnap = new Paint(1);
        this.snapEnabled = false;
        this.gridEnabled = false;
        this.controlsListener = null;
        this.remainderH = 0.0f;
        this.remainderV = 0.0f;
        this.HorizontalMarkers.addRelativePos(0.25f, 0.5f, 0.75f);
        this.VerticalMarkers.addRelativePos(0.25f, 0.5f, 0.75f);
        selectMarker(this.HorizontalMarkers.find(0.5f));
        this.pntMarker.setStrokeWidth(commonFuncs.dpToPx(1));
        this.pntMarker.setColor(-1);
        this.pntMarkerStroke.setStrokeWidth(commonFuncs.dpToPx(2));
        this.pntMarkerStroke.setColor(Color.argb(60, 0, 0, 0));
        this.pntMarkerSelected.setStrokeWidth(commonFuncs.dpToPx(3));
        this.pntMarkerSelected.setColor(Color.parseColor("#C8ff9800"));
        this.pntMarkerSnap.setStrokeWidth(commonFuncs.dpToPx(3));
        this.pntMarkerSnap.setColor(Color.parseColor("#C8f44336"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void makeSureSomethingIsSelected() {
        if (this.selectedMarker != null) {
            return;
        }
        Marker last = this.HorizontalMarkers.getLast();
        this.selectedMarker = last;
        if (last != null) {
            return;
        }
        this.selectedMarker = this.VerticalMarkers.getLast();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectMarker(Marker marker) {
        if (marker == null) {
            return;
        }
        this.selectedMarker = marker;
    }

    public void actionUp() {
        this.remainderV = 0.0f;
        this.remainderH = 0.0f;
        this.snappedToVer = null;
        this.snappedToHor = null;
        invalidate();
    }

    public void addHorizontal() {
        this.HorizontalMarkers.addAfterSelected();
        invalidate();
    }

    public void addVertical() {
        this.VerticalMarkers.addAfterSelected();
        invalidate();
    }

    public void currentlySnappingTo(Marker marker, boolean z) {
        this.snappedToHor = z ? marker : this.snappedToHor;
        if (z) {
            marker = this.snappedToVer;
        }
        this.snappedToVer = marker;
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003b A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003d A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean findAndSelectMarker(float r5, float r6) {
        /*
            r4 = this;
            com.tawfiq.imaginstudio.imagetools.pixellab.GridPanel$Marker r0 = r4.selectedMarker
            com.tawfiq.imaginstudio.imagetools.pixellab.GridPanel$MarkerList r1 = r4.HorizontalMarkers
            float r2 = r4.markerSelectionRad
            com.tawfiq.imaginstudio.imagetools.pixellab.GridPanel$Marker r1 = r1.getAtPos(r6, r2)
            com.tawfiq.imaginstudio.imagetools.pixellab.GridPanel$MarkerList r2 = r4.VerticalMarkers
            float r3 = r4.markerSelectionRad
            com.tawfiq.imaginstudio.imagetools.pixellab.GridPanel$Marker r2 = r2.getAtPos(r5, r3)
            if (r1 == 0) goto L2e
            if (r2 == 0) goto L2e
            float r3 = r2.getAbsPos()
            float r3 = r3 - r5
            float r5 = java.lang.Math.abs(r3)
            float r3 = r1.getAbsPos()
            float r3 = r3 - r6
            float r6 = java.lang.Math.abs(r3)
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 >= 0) goto L30
            r1 = r2
            goto L30
        L2e:
            if (r2 != 0) goto L34
        L30:
            r4.selectMarker(r1)
            goto L37
        L34:
            r4.selectMarker(r2)
        L37:
            com.tawfiq.imaginstudio.imagetools.pixellab.GridPanel$Marker r5 = r4.selectedMarker
            if (r0 == r5) goto L3d
            r5 = 1
            goto L3e
        L3d:
            r5 = 0
        L3e:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.GridPanel.findAndSelectMarker(float, float):boolean");
    }

    public MarkerList getContainer(Marker marker) {
        return (marker == null || marker.isHorizontal) ? this.HorizontalMarkers : this.VerticalMarkers;
    }

    public float getCurrentMarkerPosition() {
        Marker marker = this.selectedMarker;
        if (marker == null) {
            return 0.0f;
        }
        return marker.getRelPos();
    }

    public boolean isSnapEnabled() {
        return this.snapEnabled;
    }

    public void offsetCurrentRemainder(boolean z, float f) {
        this.remainderH += z ? f : 0.0f;
        float f2 = this.remainderV;
        if (z) {
            f = 0.0f;
        }
        this.remainderV = f2 + f;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        makeSureSomethingIsSelected();
        this.VerticalMarkers.draw(canvas, this.pntMarker, this.pntMarkerStroke, this.pntMarkerSelected, this.pntMarkerSnap, this.selectionEnabled);
        this.HorizontalMarkers.draw(canvas, this.pntMarker, this.pntMarkerStroke, this.pntMarkerSelected, this.pntMarkerSnap, this.selectionEnabled);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        makeSureSomethingIsSelected();
        if (!this.selectionEnabled) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.prevX = x;
            this.prevY = y;
            this.dX = 0.0f;
            this.dY = 0.0f;
            if (!findAndSelectMarker(x, y)) {
                return true;
            }
        } else {
            if (actionMasked != 2) {
                return true;
            }
            this.dX = x - this.prevX;
            this.dY = y - this.prevY;
            this.prevX = x;
            this.prevY = y;
            Marker marker = this.selectedMarker;
            if (marker == null) {
                return true;
            }
            MarkerList container = getContainer(marker);
            Marker marker2 = this.selectedMarker;
            container.moveBy(marker2, marker2.isHorizontal ? this.dY : this.dX);
        }
        invalidate();
        return true;
    }

    public void remMarker() {
        Marker marker = this.selectedMarker;
        if (marker == null) {
            return;
        }
        getContainer(marker).remove(this.selectedMarker, true);
        if (this.selectedMarker != null) {
            invalidate();
            return;
        }
        toggle();
        this.HorizontalMarkers.addRelativePos(0.25f, 0.5f, 0.75f);
        this.VerticalMarkers.addRelativePos(0.25f, 0.5f, 0.75f);
        toggle(false);
    }

    public void resetCurrentRemainder(boolean z) {
        this.remainderH = z ? 0.0f : this.remainderH;
        this.remainderV = z ? this.remainderV : 0.0f;
    }

    public void setControlsListener(OnGridUpdated onGridUpdated) {
        this.controlsListener = onGridUpdated;
    }

    public void setCurrentMarkerPosition(float f) {
        Marker marker = this.selectedMarker;
        if (marker == null) {
            return;
        }
        getContainer(marker).move(this.selectedMarker, f, true);
        invalidate();
    }

    public void setSnap(boolean z) {
        OnGridUpdated onGridUpdated = this.controlsListener;
        if (onGridUpdated != null) {
            onGridUpdated.gridSnapToggled(z);
        }
        this.snapEnabled = z;
    }

    public float snapPos(float f, float f2, boolean z, boolean z2) {
        if (!this.snapEnabled || !this.gridEnabled) {
            return f;
        }
        MarkerList markerList = z ? this.VerticalMarkers : this.HorizontalMarkers;
        Marker atPos = markerList.getAtPos(f + f2, this.snapRad);
        currentlySnappingTo(atPos, z);
        if (!z2) {
            return atPos == null ? f : atPos.getAbsPos() - f2;
        }
        if (atPos == null) {
            resetCurrentRemainder(z);
            return f;
        }
        if (markerList.getAtPos(atPos.getAbsPos() + (z ? this.remainderH : this.remainderV), this.snapRad) != atPos) {
            float absPos = (atPos.getAbsPos() + (z ? this.remainderH : this.remainderV)) - f2;
            resetCurrentRemainder(z);
            return absPos;
        }
        float absPos2 = atPos.getAbsPos() - f2;
        offsetCurrentRemainder(z, f - absPos2);
        return absPos2;
    }

    public void startNewFromDialog(String str, String str2) {
        int i;
        int i2 = 3;
        try {
            i = Integer.parseInt(str);
        } catch (Exception unused) {
            i = 3;
        }
        try {
            i2 = Integer.parseInt(str2);
        } catch (Exception unused2) {
        }
        int max = Math.max(0, Math.min(i, 100));
        int max2 = Math.max(0, Math.min(i2, 100));
        int i3 = 1;
        if (max == max2 && max2 == 0) {
            max = 1;
            max2 = 1;
        }
        this.HorizontalMarkers.clear();
        this.VerticalMarkers.clear();
        if (max != 0) {
            float f = 1.0f / (max + 1);
            float[] fArr = new float[max];
            int i4 = 1;
            while (true) {
                int i5 = i4 - 1;
                if (i5 >= max) {
                    break;
                }
                fArr[i5] = i4 * f;
                i4++;
            }
            this.HorizontalMarkers.addRelativePos(fArr);
        }
        if (max2 != 0) {
            float f2 = 1.0f / (max2 + 1);
            float[] fArr2 = new float[max2];
            while (true) {
                int i6 = i3 - 1;
                if (i6 >= max2) {
                    break;
                }
                fArr2[i6] = i3 * f2;
                i3++;
            }
            this.VerticalMarkers.addRelativePos(fArr2);
        }
        invalidate();
    }

    public void toggle() {
        toggle(!this.gridEnabled);
    }

    public void toggle(boolean z) {
        this.gridEnabled = z;
        setVisibility(z ? 0 : 8);
        OnGridUpdated onGridUpdated = this.controlsListener;
        if (onGridUpdated != null) {
            onGridUpdated.gridToggled(this.gridEnabled);
        }
        if (this.gridEnabled) {
            return;
        }
        this.selectionEnabled = false;
        OnGridUpdated onGridUpdated2 = this.controlsListener;
        if (onGridUpdated2 != null) {
            onGridUpdated2.gridSelectionToggled(false);
        }
    }

    public void toggleSelection(boolean z) {
        this.selectionEnabled = z;
        OnGridUpdated onGridUpdated = this.controlsListener;
        if (onGridUpdated != null) {
            onGridUpdated.gridSelectionToggled(z);
        }
        invalidate();
    }
}
