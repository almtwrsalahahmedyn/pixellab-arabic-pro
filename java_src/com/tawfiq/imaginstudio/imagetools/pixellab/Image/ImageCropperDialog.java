package com.tawfiq.imaginstudio.imagetools.pixellab.Image;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropPreview;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.ImageSource;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ZoomWidget;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.aspectButton;

/* loaded from: classes.dex */
public class ImageCropperDialog extends AlertDialog implements View.OnClickListener {
    int[] actualImSize;
    int[] actualImSizeCropped;
    private LinearLayout aspectButtonsHolder;
    private ImageButton cancelButton;
    private ImageButton circleButton;
    OnCropEventListener cropListener;
    private View dialogLayout;
    private ImageButton flipHButton;
    private ImageButton flipVButton;
    private Bitmap image;
    private ImageCropPreview imagePreview;
    private LinearLayout.LayoutParams lParamsAspectButtons;
    private ImageButton lockButton;
    private ImageButton maximizeButton;
    private ImageButton okButton;
    private ImageButton rotateCCWButton;
    private ImageButton rotateCWButton;
    private TextView sizeIndicator;
    AppCompatCheckBox useNewDims;
    ZoomButton zoomButton;
    private ZoomWidget zoomWidget;

    /* loaded from: classes.dex */
    public interface OnCropEventListener {
        void cropDone(RectF rectF, int i, boolean z, boolean z2, boolean z3, int[] iArr);
    }

    public ImageCropperDialog(Context context, final ImageSource imageSource, final RectF rectF, final int i, final boolean z, final boolean z2, final boolean z3, final boolean z4, boolean z5) {
        super(context);
        this.actualImSizeCropped = new int[2];
        this.cropListener = null;
        View inflate = getLayoutInflater().inflate(R.layout.image_cropper_dialog, (ViewGroup) null);
        this.dialogLayout = inflate;
        setView(inflate);
        ImageCropPreview imageCropPreview = (ImageCropPreview) this.dialogLayout.findViewById(R.id.cropper_preview);
        this.imagePreview = imageCropPreview;
        imageCropPreview.post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.3
            @Override // java.lang.Runnable
            public void run() {
                ImageCropperDialog imageCropperDialog = ImageCropperDialog.this;
                imageCropperDialog.loadImage(imageSource, imageCropperDialog.imagePreview.getWidth(), ImageCropperDialog.this.imagePreview.getHeight());
                if (ImageCropperDialog.this.image != null) {
                    ImageCropperDialog.this.imagePreview.setImage(ImageCropperDialog.this.image, z2 ? rectF : new RectF(0.0f, 0.0f, 100.0f, 100.0f), i, z, z3, z4);
                }
            }
        });
        ImageButton imageButton = (ImageButton) this.dialogLayout.findViewById(R.id.crop_rot_cw);
        this.rotateCWButton = imageButton;
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImageCropperDialog.this.imagePreview.rotateImg(true);
            }
        });
        ImageButton imageButton2 = (ImageButton) this.dialogLayout.findViewById(R.id.crop_rot_ccw);
        this.rotateCCWButton = imageButton2;
        imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImageCropperDialog.this.imagePreview.rotateImg(false);
            }
        });
        this.okButton = (ImageButton) this.dialogLayout.findViewById(R.id.crop_ok);
        this.lockButton = (ImageButton) this.dialogLayout.findViewById(R.id.crop_lock);
        this.circleButton = (ImageButton) this.dialogLayout.findViewById(R.id.crop_circle);
        this.lockButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImageCropperDialog.this.imagePreview.toggleLockAspect(!ImageCropperDialog.this.imagePreview.lockAspect);
                ImageCropperDialog.this.lockButton.setSelected(ImageCropperDialog.this.imagePreview.lockAspect);
            }
        });
        this.circleButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImageCropperDialog.this.imagePreview.circularCrop = !ImageCropperDialog.this.imagePreview.circularCrop;
                ImageCropperDialog.this.imagePreview.invalidate();
                ImageCropperDialog.this.circleButton.setSelected(ImageCropperDialog.this.imagePreview.circularCrop);
            }
        });
        this.circleButton.setSelected(z);
        ImageButton imageButton3 = (ImageButton) this.dialogLayout.findViewById(R.id.crop_cancel);
        this.cancelButton = imageButton3;
        imageButton3.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImageCropperDialog.this.dismiss();
            }
        });
        ImageButton imageButton4 = (ImageButton) this.dialogLayout.findViewById(R.id.crop_all);
        this.maximizeButton = imageButton4;
        imageButton4.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImageCropperDialog.this.imagePreview.maximize();
            }
        });
        this.flipHButton = (ImageButton) this.dialogLayout.findViewById(R.id.crop_flip_h);
        this.flipVButton = (ImageButton) this.dialogLayout.findViewById(R.id.crop_flip_v);
        this.flipHButton.setSelected(z3);
        this.flipVButton.setSelected(z4);
        this.flipHButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImageCropperDialog.this.imagePreview.flipH = !ImageCropperDialog.this.imagePreview.flipH;
                ImageCropperDialog.this.imagePreview.invalidate();
                ImageCropperDialog.this.flipHButton.setSelected(ImageCropperDialog.this.imagePreview.flipH);
            }
        });
        this.flipVButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImageCropperDialog.this.imagePreview.flipV = !ImageCropperDialog.this.imagePreview.flipV;
                ImageCropperDialog.this.imagePreview.invalidate();
                ImageCropperDialog.this.flipVButton.setSelected(ImageCropperDialog.this.imagePreview.flipV);
            }
        });
        this.aspectButtonsHolder = (LinearLayout) this.dialogLayout.findViewById(R.id.aspect_buttons_holder);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(commonFuncs.dpToPxInt(40), commonFuncs.dpToPxInt(40));
        this.lParamsAspectButtons = layoutParams;
        int dpToPxInt = commonFuncs.dpToPxInt(2);
        layoutParams.leftMargin = dpToPxInt;
        layoutParams.topMargin = dpToPxInt;
        layoutParams.bottomMargin = dpToPxInt;
        layoutParams.rightMargin = dpToPxInt;
        addAspect(1, 1);
        addAspect(16, 9);
        addAspect(4, 3);
        addAspect(3, 2);
        addAspect(9, 16);
        addAspect(3, 4);
        addAspect(2, 3);
        addAspect(4, 6);
        addAspect(6, 8);
        this.sizeIndicator = (TextView) this.dialogLayout.findViewById(R.id.newsize_indicator);
        this.imagePreview.setListener(new ImageCropPreview.OnCropPreviewAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.Image.-$$Lambda$ImageCropperDialog$UTgSfoEs-AyPUjKKeKm6Q_objzM
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropPreview.OnCropPreviewAction
            public final void cropSizeChanged(float f, float f2, boolean z6) {
                ImageCropperDialog.this.lambda$new$0$ImageCropperDialog(f, f2, z6);
            }
        });
        ZoomWidget zoomWidget = (ZoomWidget) this.dialogLayout.findViewById(R.id.cropper_zoomWidget);
        this.zoomWidget = zoomWidget;
        zoomWidget.setChild(this.imagePreview);
        this.imagePreview.setZoomWidget(this.zoomWidget);
        ZoomButton zoomButton = (ZoomButton) this.dialogLayout.findViewById(R.id.cropper_zoomButton);
        this.zoomButton = zoomButton;
        this.zoomWidget.setNotifyOnChange(zoomButton);
        this.zoomButton.setZoomListener(new ZoomButton.OnZoomEvent() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.12
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton.OnZoomEvent
            public void zoomReset() {
                ImageCropperDialog.this.zoomWidget.resetZoom(false);
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton.OnZoomEvent
            public void zoomToggle(boolean z6) {
                ImageCropperDialog.this.zoomWidget.toggleZoom(z6);
            }
        });
        this.useNewDims = (AppCompatCheckBox) this.dialogLayout.findViewById(R.id.cropper_use_newdims);
        if (!z5) {
            this.sizeIndicator.setVisibility(8);
            this.useNewDims.setVisibility(8);
        }
        this.okButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.Image.-$$Lambda$ImageCropperDialog$0nG9TQR8qEXRUYyIc1qT4x2MQNw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImageCropperDialog.this.lambda$new$1$ImageCropperDialog(view);
            }
        });
    }

    private void addAspect(int i, int i2) {
        aspectButton aspectbutton = new aspectButton(this.dialogLayout.getContext(), i, i2, this);
        aspectbutton.setBackgroundDrawable(this.dialogLayout.getResources().getDrawable(R.drawable.crop_button));
        this.aspectButtonsHolder.addView(aspectbutton, this.lParamsAspectButtons);
    }

    public /* synthetic */ void lambda$new$0$ImageCropperDialog(float f, float f2, boolean z) {
        if (this.actualImSize != null) {
            int[] iArr = this.actualImSizeCropped;
            iArr[0] = (int) ((f / 100.0f) * r0[z ? 1 : 0]);
            iArr[1] = (int) ((f2 / 100.0f) * r0[!z ? 1 : 0]);
            this.sizeIndicator.setText(this.actualImSizeCropped[0] + "x" + this.actualImSizeCropped[1]);
        }
    }

    public /* synthetic */ void lambda$new$1$ImageCropperDialog(View view) {
        RectF cropBounds;
        if (this.cropListener != null && (cropBounds = this.imagePreview.getCropBounds()) != null && cropBounds.width() > 0.0f && cropBounds.height() > 0.0f) {
            OnCropEventListener onCropEventListener = this.cropListener;
            int imageRotation = this.imagePreview.getImageRotation();
            ImageCropPreview imageCropPreview = this.imagePreview;
            onCropEventListener.cropDone(cropBounds, imageRotation, imageCropPreview.circularCrop, imageCropPreview.flipH, imageCropPreview.flipV, this.useNewDims.isChecked() ? this.actualImSizeCropped : null);
        }
        dismiss();
    }

    public void loadImage(ImageSource imageSource, int i, int i2) {
        Bitmap loadBitmapFromAsset;
        try {
            if (imageSource.checkValid()) {
                if (imageSource.getSourceType() == ImageSource.SourceType.local_file) {
                    this.actualImSize = commonFuncs.getDimensionsFromPath(imageSource.getPath());
                    String path = imageSource.getPath();
                    int[] iArr = this.actualImSize;
                    loadBitmapFromAsset = commonFuncs.getBitmapFromPath(path, commonFuncs.getInSampleSize(iArr[0], iArr[1], i, i2));
                } else {
                    if (imageSource.getSourceType() != ImageSource.SourceType.assets) {
                        return;
                    }
                    String path2 = imageSource.getPath();
                    if (imageSource.isAssetFolder()) {
                        path2 = path2 + "/" + getContext().getAssets().list(imageSource.getPath())[0];
                    }
                    this.actualImSize = commonFuncs.getDimensionsFromAssets(path2, this.dialogLayout.getContext());
                    Context context = this.dialogLayout.getContext();
                    int[] iArr2 = this.actualImSize;
                    loadBitmapFromAsset = commonFuncs.loadBitmapFromAsset(context, path2, commonFuncs.getInSampleSize(iArr2[0], iArr2[1], i, i2));
                }
                this.image = loadBitmapFromAsset;
            }
        } catch (Exception unused) {
            Toast.makeText(this.dialogLayout.getContext(), "Error loading image", 0).show();
            dismiss();
        }
    }

    public void lockAspect(final boolean z) {
        ImageCropPreview imageCropPreview = this.imagePreview;
        if (imageCropPreview != null) {
            imageCropPreview.post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.2
                @Override // java.lang.Runnable
                public void run() {
                    ImageCropperDialog.this.imagePreview.toggleLockAspect(z);
                }
            });
            this.lockButton.setSelected(z);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view instanceof aspectButton) {
            aspectButton aspectbutton = (aspectButton) view;
            ImageCropPreview imageCropPreview = this.imagePreview;
            if (imageCropPreview != null) {
                imageCropPreview.setAspectAndLock(aspectbutton.aspectX, aspectbutton.aspectY);
                this.lockButton.setSelected(this.imagePreview.lockAspect);
            }
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getWindow() != null) {
            getWindow().setLayout(-1, -1);
            getWindow().setFlags(1024, 1024);
        }
    }

    public void setAspectAndLock(final int i, final int i2) {
        ImageCropPreview imageCropPreview = this.imagePreview;
        if (imageCropPreview != null) {
            imageCropPreview.post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.1
                @Override // java.lang.Runnable
                public void run() {
                    ImageCropperDialog.this.imagePreview.setAspectAndLock(i, i2);
                }
            });
            this.lockButton.setSelected(true);
        }
    }

    public void setCircularSupported(boolean z) {
        this.circleButton.setVisibility(z ? 0 : 8);
    }

    public void setCropListener(OnCropEventListener onCropEventListener) {
        this.cropListener = onCropEventListener;
    }
}
