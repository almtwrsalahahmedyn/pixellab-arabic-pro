package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class CustomMotionEvent {
    private int action;
    private int actionMasked;
    private float rawX;
    private float rawY;
    private float relX;
    private float relY;

    public CustomMotionEvent() {
    }

    public CustomMotionEvent(MotionEvent motionEvent, View view) {
        updateWith(motionEvent, view);
    }

    public int getAction() {
        return this.action;
    }

    public int getActionMasked() {
        return this.actionMasked;
    }

    public float getRawX() {
        return this.rawX;
    }

    public float getRawY() {
        return this.rawY;
    }

    public float getRelX() {
        return this.relX;
    }

    public float getRelY() {
        return this.relY;
    }

    public void updateWith(MotionEvent motionEvent, View view) {
        this.rawX = motionEvent.getRawX();
        this.rawY = motionEvent.getRawY();
        this.action = motionEvent.getAction();
        this.actionMasked = motionEvent.getActionMasked();
        this.relX = motionEvent.getX() - view.getX();
        this.relY = motionEvent.getY() - view.getY();
        double rotation = view.getRotation();
        if (rotation != 0.0d) {
            double radians = Math.toRadians(-rotation);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            float pivotX = view.getPivotX();
            float pivotY = view.getPivotY();
            double d = this.relX - pivotX;
            double d2 = this.relY - pivotY;
            this.relX = (float) (((d * cos) - (d2 * sin)) + pivotX);
            this.relY = (float) ((d2 * cos) + (d * sin) + pivotY);
        }
    }
}
