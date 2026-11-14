package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;

/* loaded from: classes.dex */
public class preset_ui extends LinearLayout {
    ImageButton clickableArea;
    private int currHeight;
    private int currWidth;
    ImageView imageDisplay;
    TextView labelView;

    public preset_ui(Context context) {
        super(context);
        this.currHeight = 1;
        this.currWidth = 1;
        init(0, 0, 0, false);
    }

    public preset_ui(Context context, int i, int i2, int i3, boolean z) {
        super(context);
        this.currHeight = 1;
        this.currWidth = 1;
        init(i, i2, i3, z);
    }

    public void ForStyle() {
        this.imageDisplay.setBackgroundDrawable(new Drawable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.preset_ui.3
            GradientMaker.GradientFill bgGrad = new GradientMaker.GradientFill(2, commonFuncs.fromHex("#b5bb7b"), commonFuncs.fromHex("#3a6367"));
            Paint pnt = new Paint(1);

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                this.pnt.setShader(this.bgGrad.getShader(0.0f, preset_ui.this.currHeight * 0.5f, preset_ui.this.currWidth, preset_ui.this.currHeight * 0.5f));
                canvas.drawRect(0.0f, 0.0f, preset_ui.this.currWidth, preset_ui.this.currHeight, this.pnt);
            }

            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return -1;
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i) {
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }
        });
        ((FrameLayout) findViewById(R.id.preset_image_holder)).setForeground(null);
        findViewById(R.id.preset_highlight_holder).setBackgroundDrawable(ContextCompat.getDrawable(getContext(), R.drawable.preset_bg_inshadow1));
    }

    public void init(int i, int i2, int i3, boolean z) {
        LinearLayout.inflate(getContext(), R.layout.preset_ui, this);
        this.imageDisplay = (ImageView) findViewById(R.id.preset_imageShow);
        ImageButton imageButton = (ImageButton) findViewById(R.id.preset_clickable);
        this.clickableArea = imageButton;
        imageButton.setClickable(true);
        this.labelView = (TextView) findViewById(R.id.preset_label);
        if (i != 0 && i2 != 0) {
            ((FrameLayout) findViewById(R.id.preset_image_holder)).getLayoutParams().width = i;
            ((FrameLayout) findViewById(R.id.preset_image_holder)).getLayoutParams().height = i2;
        }
        if (i3 > 0) {
            this.imageDisplay.setPadding(i3, i3, i3, i3);
        }
        if (z) {
            ((FrameLayout) findViewById(R.id.preset_image_holder)).setForeground(ContextCompat.getDrawable(getContext(), R.drawable.preset_bg_hl1));
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.currWidth = i;
        this.currHeight = i2;
    }

    public void setContent(Bitmap bitmap, View.OnClickListener onClickListener) {
        if (bitmap != null) {
            this.imageDisplay.setImageBitmap(bitmap);
        }
        this.clickableArea.setOnClickListener(onClickListener);
    }

    public void setDeleteAction(final Runnable runnable) {
        findViewById(R.id.preset_delete).setVisibility(0);
        findViewById(R.id.preset_delete).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.preset_ui.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                runnable.run();
            }
        });
    }

    public void setLabel(String str) {
        this.labelView.setVisibility(0);
        this.labelView.setText(str);
    }

    public void setShareAction(final Runnable runnable) {
        findViewById(R.id.preset_share).setVisibility(0);
        findViewById(R.id.preset_share).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.preset_ui.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                runnable.run();
            }
        });
    }
}
