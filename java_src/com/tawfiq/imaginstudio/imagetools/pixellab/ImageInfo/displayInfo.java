package com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo;

import android.graphics.Bitmap;
import android.graphics.PointF;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import com.tawfiq.imaginstudio.imagetools.pixellab.GridPanel;
import com.tawfiq.imaginstudio.imagetools.pixellab.Image.BackgroundImageHolder;
import com.tawfiq.imaginstudio.imagetools.pixellab.ZoomWidget;
import com.tawfiq.imaginstudio.imagetools.pixellab.textContainer;

/* loaded from: classes.dex */
public class displayInfo {
    private GridPanel gridPanel;
    BackgroundImageHolder imageHolder;
    private ScrollView layerHolderScroll;
    FrameLayout previewPanel;
    private textContainer textContain;
    ZoomWidget zoom_widget;

    public displayInfo(FrameLayout frameLayout, ZoomWidget zoomWidget) {
        this.previewPanel = frameLayout;
        this.zoom_widget = zoomWidget;
    }

    public int getContainerHeight() {
        return Math.max(1, this.previewPanel.getHeight());
    }

    public int getContainerWidth() {
        return Math.max(1, this.previewPanel.getWidth());
    }

    public ScrollView getLayerHolderScroll() {
        return this.layerHolderScroll;
    }

    public textContainer getTextContain() {
        return this.textContain;
    }

    public Bitmap getUsedBitmapBg() {
        BackgroundImageHolder backgroundImageHolder = this.imageHolder;
        if (backgroundImageHolder != null) {
            return backgroundImageHolder.getCurrentBitmap();
        }
        return null;
    }

    public CurrImage getUsedImageInfoBg() {
        BackgroundImageHolder backgroundImageHolder = this.imageHolder;
        if (backgroundImageHolder != null) {
            return backgroundImageHolder.getUsedImage();
        }
        return null;
    }

    public PointF getViewOrigin() {
        ZoomWidget zoomWidget = this.zoom_widget;
        return zoomWidget != null ? zoomWidget.getViewOrigin() : new PointF(0.0f, 0.0f);
    }

    public float getZoomFactor() {
        ZoomWidget zoomWidget = this.zoom_widget;
        if (zoomWidget != null) {
            return Math.max(zoomWidget.getZoomFactor(), 1.0f);
        }
        return 1.0f;
    }

    public void motionActionUp() {
        GridPanel gridPanel = this.gridPanel;
        if (gridPanel == null) {
            return;
        }
        gridPanel.actionUp();
    }

    public boolean safetyCheck() {
        return this.previewPanel != null;
    }

    public void setBgLayout(BackgroundImageHolder backgroundImageHolder) {
        this.imageHolder = backgroundImageHolder;
    }

    public void setGridPanel(GridPanel gridPanel) {
        this.gridPanel = gridPanel;
    }

    public void setLayerHolderScroll(ScrollView scrollView) {
        this.layerHolderScroll = scrollView;
    }

    public void setTextContain(textContainer textcontainer) {
        this.textContain = textcontainer;
    }

    public boolean snapEnabled() {
        GridPanel gridPanel = this.gridPanel;
        if (gridPanel == null) {
            return false;
        }
        return gridPanel.isSnapEnabled();
    }

    public float snapPosX(float f, float f2, boolean z) {
        GridPanel gridPanel = this.gridPanel;
        return gridPanel != null ? gridPanel.snapPos(f, f2, true, z) : f;
    }

    public float snapPosX(float f, boolean z) {
        return snapPosX(f, 0.0f, z);
    }

    public float snapPosY(float f, float f2, boolean z) {
        GridPanel gridPanel = this.gridPanel;
        return gridPanel != null ? gridPanel.snapPos(f, f2, false, z) : f;
    }

    public float snapPosY(float f, boolean z) {
        return snapPosY(f, 0.0f, z);
    }
}
