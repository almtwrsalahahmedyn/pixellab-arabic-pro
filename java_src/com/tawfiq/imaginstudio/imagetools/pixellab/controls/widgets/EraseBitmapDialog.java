package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.SeekBar;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BmpPathMasks;
import com.tawfiq.imaginstudio.imagetools.pixellab.ZoomWidget;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImageEraseView;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton;

/* loaded from: classes.dex */
public class EraseBitmapDialog extends AlertDialog implements View.OnClickListener {
    View EraseMode_Panel1;
    View EraseMode_Panel2;
    EraseBitmapInterface OnEraseBitmapDone;
    View SelectMode_Panel;
    View dialogLayout;
    ImageEraseView eraseView;
    SeekBar eraserBlurSeeker;
    View eraserButton;
    SeekBar eraserSizeUnder;
    SeekBar eraserStrokeSeeker;
    ImageErasePreviewer previewerView;
    View remInvertButton;
    View remSelectionButton;
    View selDelL;
    View selTypeCircle;
    View selTypeFree;
    View selTypeSquare;
    View selectButton;
    View undoButton;
    ZoomButton zoomButton;
    ZoomWidget zoomWidget;

    /* loaded from: classes.dex */
    public interface EraseBitmapInterface {
        void OnDoneErase(BmpPathMasks bmpPathMasks);
    }

    public EraseBitmapDialog(Context context, BmpPathMasks bmpPathMasks, Bitmap bitmap, final EraseBitmapInterface eraseBitmapInterface) {
        super(context);
        this.OnEraseBitmapDone = eraseBitmapInterface;
        View inflate = getLayoutInflater().inflate(R.layout.erase_bmp, (ViewGroup) null);
        this.dialogLayout = inflate;
        setView(inflate, 0, 0, 0, 0);
        this.undoButton = this.dialogLayout.findViewById(R.id.erase_bmp_undo);
        if (bmpPathMasks == null || bmpPathMasks.isEmpty()) {
            this.undoButton.setEnabled(false);
            this.undoButton.setAlpha(0.5f);
        }
        this.selTypeFree = this.dialogLayout.findViewById(R.id.sel_type_free);
        this.selTypeSquare = this.dialogLayout.findViewById(R.id.sel_type_square);
        this.selTypeCircle = this.dialogLayout.findViewById(R.id.sel_type_circle);
        this.selTypeFree.setSelected(true);
        this.selDelL = this.dialogLayout.findViewById(R.id.sel_free_delL);
        this.remSelectionButton = this.dialogLayout.findViewById(R.id.sel_remove_selection);
        this.remInvertButton = this.dialogLayout.findViewById(R.id.sel_remove_invert);
        this.eraseView = new ImageEraseView(context, bitmap, new ImageEraseView.OnMaskChange() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.EraseBitmapDialog.2
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImageEraseView.OnMaskChange
            public void freeSelCountChanged(int i) {
                EraseBitmapDialog eraseBitmapDialog = EraseBitmapDialog.this;
                if (eraseBitmapDialog.eraseView.currSelectionShape == ImageEraseView.SelectionShape.free) {
                    eraseBitmapDialog.selDelL.setVisibility(i > 0 ? 0 : 8);
                    EraseBitmapDialog.this.remSelectionButton.setVisibility(i > 1 ? 0 : 8);
                    EraseBitmapDialog.this.remInvertButton.setVisibility(i > 1 ? 0 : 8);
                }
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImageEraseView.OnMaskChange
            public void imgAreaUpdated(Rect rect) {
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImageEraseView.OnMaskChange
            public void masksCountChanged(int i) {
                ViewPropertyAnimator animate;
                float f;
                if (i != 0) {
                    EraseBitmapDialog.this.undoButton.setEnabled(true);
                    animate = EraseBitmapDialog.this.undoButton.animate();
                    f = 1.0f;
                } else {
                    EraseBitmapDialog.this.undoButton.setEnabled(false);
                    animate = EraseBitmapDialog.this.undoButton.animate();
                    f = 0.5f;
                }
                animate.alpha(f).setDuration(200L).start();
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImageEraseView.OnMaskChange
            public void selTypeChanged(ImageEraseView.SelectionShape selectionShape) {
                EraseBitmapDialog.this.selTypeFree.setSelected(selectionShape == ImageEraseView.SelectionShape.free);
                View view = EraseBitmapDialog.this.selTypeSquare;
                ImageEraseView.SelectionShape selectionShape2 = ImageEraseView.SelectionShape.square;
                view.setSelected(selectionShape == selectionShape2);
                View view2 = EraseBitmapDialog.this.selTypeCircle;
                ImageEraseView.SelectionShape selectionShape3 = ImageEraseView.SelectionShape.circle;
                view2.setSelected(selectionShape == selectionShape3);
                EraseBitmapDialog.this.selDelL.setVisibility(8);
                if (selectionShape == selectionShape2 || selectionShape == selectionShape3) {
                    EraseBitmapDialog.this.remSelectionButton.setVisibility(0);
                    EraseBitmapDialog.this.remInvertButton.setVisibility(0);
                } else {
                    EraseBitmapDialog.this.remSelectionButton.setVisibility(8);
                    EraseBitmapDialog.this.remInvertButton.setVisibility(8);
                }
            }
        });
        ((ViewGroup) this.dialogLayout.findViewById(R.id.erase_bmp_content)).addView(this.eraseView, 1);
        this.dialogLayout.findViewById(R.id.erase_bmp_ok).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.EraseBitmapDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                eraseBitmapInterface.OnDoneErase(EraseBitmapDialog.this.eraseView.masks);
                EraseBitmapDialog.this.dismiss();
            }
        });
        this.zoomWidget = (ZoomWidget) this.dialogLayout.findViewById(R.id.erase_zoomWidget);
        this.zoomButton = (ZoomButton) this.dialogLayout.findViewById(R.id.erase_zoomButton);
        this.zoomWidget.setChild(this.dialogLayout.findViewById(R.id.erase_bmp_content));
        this.zoomWidget.setNotifyOnChange(this.zoomButton);
        this.zoomButton.setZoomListener(new ZoomButton.OnZoomEvent() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.EraseBitmapDialog.4
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton.OnZoomEvent
            public void zoomReset() {
                EraseBitmapDialog.this.zoomWidget.resetZoom(false);
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton.OnZoomEvent
            public void zoomToggle(boolean z) {
                EraseBitmapDialog.this.zoomWidget.toggleZoom(z);
            }
        });
        this.SelectMode_Panel = this.dialogLayout.findViewById(R.id.erase_sel_panel);
        View findViewById = this.dialogLayout.findViewById(R.id.erase_panel1);
        this.EraseMode_Panel1 = findViewById;
        findViewById.setVisibility(0);
        View findViewById2 = this.dialogLayout.findViewById(R.id.erase_panel2);
        this.EraseMode_Panel2 = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(0);
        }
        this.SelectMode_Panel.setVisibility(8);
        this.eraserStrokeSeeker = (SeekBar) this.dialogLayout.findViewById(R.id.erase_radius);
        this.eraserSizeUnder = (SeekBar) this.dialogLayout.findViewById(R.id.erase_size_under);
        this.eraserBlurSeeker = (SeekBar) this.dialogLayout.findViewById(R.id.erase_blur);
        ((RadiusIndicator) this.dialogLayout.findViewById(R.id.erase_radius_ind)).setRadius(this.eraseView.getCurrentEraserRadius() * 0.5f);
        this.eraserStrokeSeeker.setMax((int) (commonFuncs.dpToPx(40) / 2.0f));
        this.eraserStrokeSeeker.setProgress((int) (this.eraseView.currStrokeWidth * 0.5f));
        this.eraserSizeUnder.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.EraseBitmapDialog.5
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                EraseBitmapDialog.this.eraseView.setSizeUnder(i);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }
        });
        this.eraserStrokeSeeker.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.EraseBitmapDialog.6
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (i <= 0) {
                    i = 1;
                }
                ((RadiusIndicator) EraseBitmapDialog.this.dialogLayout.findViewById(R.id.erase_radius_ind)).setRadius(i);
                EraseBitmapDialog.this.eraseView.setCurrentEraserRadius(i * 2);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }
        });
        this.eraserBlurSeeker.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.EraseBitmapDialog.7
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                EraseBitmapDialog.this.eraseView.setCurrStrokeBlur(i);
                ((RadiusIndicator) EraseBitmapDialog.this.dialogLayout.findViewById(R.id.erase_radius_ind)).setBlur(i);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }
        });
        this.eraserButton = this.dialogLayout.findViewById(R.id.erase_erase);
        this.selectButton = this.dialogLayout.findViewById(R.id.erase_sel);
        this.selDelL.setOnClickListener(this);
        this.selTypeFree.setOnClickListener(this);
        this.selTypeSquare.setOnClickListener(this);
        this.selTypeCircle.setOnClickListener(this);
        this.eraserButton.setOnClickListener(this);
        this.selectButton.setOnClickListener(this);
        this.remSelectionButton.setOnClickListener(this);
        this.remInvertButton.setOnClickListener(this);
        this.undoButton.setOnClickListener(this);
        this.undoButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.EraseBitmapDialog.8
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                AlertDialog.Builder builder = new AlertDialog.Builder(EraseBitmapDialog.this.dialogLayout.getContext());
                builder.setMessage(R.string.reset_image);
                builder.setNegativeButton(android.R.string.no, (DialogInterface.OnClickListener) null);
                builder.setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.EraseBitmapDialog.8.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        EraseBitmapDialog.this.eraseView.undoAll();
                    }
                });
                builder.show();
                return true;
            }
        });
        this.eraserButton.setSelected(true);
        this.eraseView.setMasks(bmpPathMasks);
        ImageErasePreviewer imageErasePreviewer = (ImageErasePreviewer) this.dialogLayout.findViewById(R.id.erase_content);
        this.previewerView = imageErasePreviewer;
        this.eraseView.setPreviewListener(imageErasePreviewer);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ImageEraseView imageEraseView;
        ImageEraseView.SelectionShape selectionShape;
        int id = view.getId();
        if (id == R.id.erase_bmp_undo) {
            this.eraseView.undoOp();
            return;
        }
        if (id == R.id.erase_erase) {
            ImageEraseView.EraserMode eraserMode = this.eraseView.currEraserMode;
            ImageEraseView.EraserMode eraserMode2 = ImageEraseView.EraserMode.erase;
            if (eraserMode != eraserMode2) {
                this.eraserButton.setSelected(true);
                this.selectButton.setSelected(false);
                this.eraseView.setMode(eraserMode2);
                this.SelectMode_Panel.setVisibility(8);
                this.EraseMode_Panel1.setVisibility(0);
                View view2 = this.EraseMode_Panel2;
                if (view2 != null) {
                    view2.setVisibility(0);
                    return;
                }
                return;
            }
            return;
        }
        if (id == R.id.erase_sel) {
            ImageEraseView.EraserMode eraserMode3 = this.eraseView.currEraserMode;
            ImageEraseView.EraserMode eraserMode4 = ImageEraseView.EraserMode.select;
            if (eraserMode3 != eraserMode4) {
                this.eraserButton.setSelected(false);
                this.selectButton.setSelected(true);
                this.selTypeFree.setSelected(true);
                this.selTypeSquare.setSelected(false);
                this.selTypeCircle.setSelected(false);
                this.eraseView.setMode(eraserMode4);
                this.SelectMode_Panel.setVisibility(0);
                this.EraseMode_Panel1.setVisibility(8);
                View view3 = this.EraseMode_Panel2;
                if (view3 != null) {
                    view3.setVisibility(8);
                    return;
                }
                return;
            }
            return;
        }
        switch (id) {
            case R.id.sel_free_delL /* 2131362334 */:
                this.eraseView.delLastFreeSelection();
                return;
            case R.id.sel_remove_invert /* 2131362335 */:
                this.eraseView.removeFreeSelection(true);
                return;
            case R.id.sel_remove_selection /* 2131362336 */:
                this.eraseView.removeFreeSelection(false);
                return;
            case R.id.sel_type_circle /* 2131362337 */:
                imageEraseView = this.eraseView;
                selectionShape = ImageEraseView.SelectionShape.circle;
                break;
            case R.id.sel_type_free /* 2131362338 */:
                imageEraseView = this.eraseView;
                selectionShape = ImageEraseView.SelectionShape.free;
                break;
            case R.id.sel_type_square /* 2131362339 */:
                imageEraseView = this.eraseView;
                selectionShape = ImageEraseView.SelectionShape.square;
                break;
            default:
                return;
        }
        imageEraseView.setSelectionType(selectionShape);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        if (getWindow() != null) {
            getWindow().setLayout(-1, -1);
            getWindow().setFlags(1024, 1024);
        }
    }
}
