package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.ImageSource;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions.uniformScale;

/* loaded from: classes.dex */
public class textureSelector extends LinearLayout {
    LinearLayout addHere;
    textureSelectorInterface selectorInterface;
    ImageButton textureDelete;
    TextView textureName;
    ImageButton textureSelect;

    /* loaded from: classes.dex */
    public interface textureSelectorInterface {
        void maintainChanged(boolean z);

        void scaleChanged(int i);
    }

    public textureSelector(Context context, final boolean z, ImageSource imageSource, boolean z2, int i, final textureSelectorInterface textureselectorinterface) {
        super(context);
        this.selectorInterface = null;
        LinearLayout.inflate(getContext(), R.layout.texture_selector, this);
        int i2 = i * 10;
        int textureSizeShapeInverse = z ? uniformScale.textureSizeShapeInverse(i2) : uniformScale.textureSizeInverse(i2);
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.addHere = linearLayout;
        linearLayout.setOrientation(1);
        this.textureName = (TextView) findViewById(R.id.textureName);
        this.textureSelect = (ImageButton) findViewById(R.id.textureSelect);
        this.textureDelete = (ImageButton) findViewById(R.id.textureDelete);
        this.selectorInterface = textureselectorinterface;
        this.textureName.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textureSelector.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                textureSelector.this.textureSelect.performClick();
            }
        });
        setImagePath(imageSource);
        section_title section_titleVar = new section_title(getContext(), getContext().getString(R.string.option_title_appearance));
        option_label option_labelVar = new option_label(getContext(), getContext().getString(R.string.option_label_maintain_ratio), false, 0, 3);
        option_toggle option_toggleVar = new option_toggle(getContext(), z2, new CompoundButton.OnCheckedChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textureSelector.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                textureSelectorInterface textureselectorinterface2 = textureselectorinterface;
                if (textureselectorinterface2 != null) {
                    textureselectorinterface2.maintainChanged(z3);
                }
            }
        });
        final option_label option_labelVar2 = new option_label(getContext(), getContext().getString(R.string.action_resize), true, i2, 2);
        slider_ui slider_uiVar = new slider_ui(getContext(), 1, 17, textureSizeShapeInverse);
        slider_uiVar.toggleBubble(Boolean.FALSE);
        this.addHere.addView(section_titleVar);
        this.addHere.addView(option_labelVar);
        this.addHere.addView(option_toggleVar);
        this.addHere.addView(option_labelVar2);
        this.addHere.addView(slider_uiVar);
        ((LinearLayout) findViewById(R.id.contentGoesHere)).addView(this.addHere);
        slider_uiVar.setNotifyValueChange(new DiscreteSeekBar.OnProgressChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textureSelector.3
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i3, boolean z3) {
                int textureSizeShape = z ? uniformScale.textureSizeShape(i3) : uniformScale.textureSize(i3);
                option_labelVar2.setValue(textureSizeShape);
                textureselectorinterface.scaleChanged(textureSizeShape / 10);
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            }
        });
    }

    public void setDeleteTextureOnClick(View.OnClickListener onClickListener) {
        this.textureDelete.setOnClickListener(onClickListener);
    }

    public void setImagePath(ImageSource imageSource) {
        TextView textView;
        Context context;
        int i;
        if (imageSource.checkValid()) {
            textView = this.textureName;
            context = getContext();
            i = R.string.texture_selected;
        } else {
            textView = this.textureName;
            context = getContext();
            i = R.string.texture_no_texture;
        }
        textView.setText(context.getString(i));
        toggleDeleteButton(imageSource.checkValid());
    }

    public void setNewTextureOnClick(View.OnClickListener onClickListener) {
        this.textureSelect.setOnClickListener(onClickListener);
    }

    public void toggleDeleteButton(boolean z) {
        findViewById(R.id.textureDeleteSeparator).setVisibility(z ? 0 : 8);
        this.textureDelete.setVisibility(z ? 0 : 8);
        this.addHere.setVisibility(z ? 0 : 8);
    }
}
