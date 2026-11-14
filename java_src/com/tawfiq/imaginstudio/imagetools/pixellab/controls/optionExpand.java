package com.tawfiq.imaginstudio.imagetools.pixellab.controls;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.arasthel.asyncjob.AsyncJob;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.Image.BackgroundImageHolder;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.CurrImage;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.ImageSource;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BoundedShape;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.DrawingPanel;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.DrawingPanelRenderer;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.PerspectiveTool;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapesCreatorRenderer;
import com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.CustomTextView;
import com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.appStateConstants;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SegmentedSelector;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions.spansIntervals;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions.uniformScale;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_label;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_toggle;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.preset_ui;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.presets_holder;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.slider_ui;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textSelector;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textureSelector;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector;
import com.tawfiq.imaginstudio.imagetools.pixellab.textContainer;
import com.tawfiq.imaginstudio.imagetools.pixellab.undo.History;
import com.tawfiq.imaginstudio.imagetools.pixellab.undo.HistoryType;
import info.hoang8f.android.segmented.SegmentedGroup;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class optionExpand extends Fragment {
    static final int STICKER_TYPE_EMOJI = 2;
    static final int STICKER_TYPE_PRO = 4;
    static final int STICKER_TYPE_STICKER = 1;
    private MainActivity callback;
    ImageButton cancelAbility;
    Runnable cancelAction;
    View.OnClickListener cancelButtonListener;
    LinearLayout controlsLayout;
    ImageButton doneAbility;
    View.OnClickListener doneButtonListener;
    int newShapeSize;
    Runnable positiveAction;
    ArrayList<String> references;
    ImageButton resetAbility;
    View v;
    boolean cancelled = false;
    int currentStickersJob = 1;

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements AsyncJob.OnBackgroundJob {
        final /* synthetic */ AssetManager val$assetManager;
        final /* synthetic */ String val$pathSuffix;
        final /* synthetic */ presets_holder val$presetsHolder;
        final /* synthetic */ int val$stickerType;

        /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$1$1 */
        /* loaded from: classes.dex */
        public class C00231 implements AsyncJob.OnMainThreadJob {
            final /* synthetic */ preset_ui val$aSticker;

            public C00231(preset_ui preset_uiVar) {
                r2 = preset_uiVar;
            }

            @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
            public void doInUIThread() {
                View view;
                optionExpand optionexpand = optionExpand.this;
                if (optionexpand.cancelled || (view = optionexpand.v) == null || view.getContext() == null) {
                    return;
                }
                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                if (anonymousClass1.val$stickerType == optionExpand.this.currentStickersJob) {
                    anonymousClass1.val$presetsHolder.addPreset(r2);
                }
            }
        }

        /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$1$2 */
        /* loaded from: classes.dex */
        public class AnonymousClass2 implements AsyncJob.OnMainThreadJob {
            final /* synthetic */ preset_ui val$aSticker;

            public AnonymousClass2(preset_ui preset_uiVar) {
                r2 = preset_uiVar;
            }

            @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
            public void doInUIThread() {
                View view;
                optionExpand optionexpand = optionExpand.this;
                if (optionexpand.cancelled || (view = optionexpand.v) == null || view.getContext() == null) {
                    return;
                }
                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                if (anonymousClass1.val$stickerType == optionExpand.this.currentStickersJob) {
                    anonymousClass1.val$presetsHolder.removeView(r2);
                }
            }
        }

        /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$1$3 */
        /* loaded from: classes.dex */
        public class AnonymousClass3 implements AsyncJob.OnMainThreadJob {
            final /* synthetic */ preset_ui val$aSticker;
            final /* synthetic */ Bitmap val$finalD;
            final /* synthetic */ String val$shapePath;
            final /* synthetic */ float val$thumbHeight;
            final /* synthetic */ float val$thumbWidth;

            /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$1$3$1 */
            /* loaded from: classes.dex */
            public class ViewOnClickListenerC00241 implements View.OnClickListener {
                public ViewOnClickListenerC00241() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (optionExpand.this.getTextContainer() != null) {
                        textContainer textContainer = optionExpand.this.getTextContainer();
                        int i = ShapeComponent.SHAPE_TYPE_STICKER;
                        ImageSource imageSource = new ImageSource(r4, true);
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        float f = optionExpand.this.newShapeSize;
                        float f2 = r5;
                        int max = (int) ((f * f2) / Math.max(f2, r6));
                        AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                        float f3 = optionExpand.this.newShapeSize;
                        float f4 = r6;
                        textContainer.editCurrShape(i, imageSource, true, max, (int) ((f3 * f4) / Math.max(r5, f4)));
                    }
                }
            }

            public AnonymousClass3(preset_ui preset_uiVar, Bitmap bitmap, String str, float f, float f2) {
                r2 = preset_uiVar;
                r3 = bitmap;
                r4 = str;
                r5 = f;
                r6 = f2;
            }

            @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
            public void doInUIThread() {
                View view;
                optionExpand optionexpand = optionExpand.this;
                if (optionexpand.cancelled || (view = optionexpand.v) == null || view.getContext() == null) {
                    return;
                }
                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                if (anonymousClass1.val$stickerType == optionExpand.this.currentStickersJob) {
                    r2.setContent(r3, new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand.1.3.1
                        public ViewOnClickListenerC00241() {
                        }

                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            if (optionExpand.this.getTextContainer() != null) {
                                textContainer textContainer = optionExpand.this.getTextContainer();
                                int i = ShapeComponent.SHAPE_TYPE_STICKER;
                                ImageSource imageSource = new ImageSource(r4, true);
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                float f = optionExpand.this.newShapeSize;
                                float f2 = r5;
                                int max = (int) ((f * f2) / Math.max(f2, r6));
                                AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                                float f3 = optionExpand.this.newShapeSize;
                                float f4 = r6;
                                textContainer.editCurrShape(i, imageSource, true, max, (int) ((f3 * f4) / Math.max(r5, f4)));
                            }
                        }
                    });
                }
            }
        }

        /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$1$4 */
        /* loaded from: classes.dex */
        public class AnonymousClass4 implements AsyncJob.OnMainThreadJob {
            public AnonymousClass4() {
            }

            @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
            public void doInUIThread() {
                View view;
                optionExpand optionexpand = optionExpand.this;
                if (optionexpand.cancelled || (view = optionexpand.v) == null || view.getContext() == null) {
                    return;
                }
                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                if (anonymousClass1.val$stickerType == optionExpand.this.currentStickersJob) {
                    anonymousClass1.val$presetsHolder.hideProgress();
                }
            }
        }

        public AnonymousClass1(int i, AssetManager assetManager, String str, presets_holder presets_holderVar) {
            this.val$stickerType = i;
            this.val$assetManager = assetManager;
            this.val$pathSuffix = str;
            this.val$presetsHolder = presets_holderVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:112:0x0192  */
        /* JADX WARN: Removed duplicated region for block: B:115:0x01a8 A[SYNTHETIC] */
        @Override // com.arasthel.asyncjob.AsyncJob.OnBackgroundJob
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void doOnBackground() {
            /*
                Method dump skipped, instructions count: 437
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand.AnonymousClass1.doOnBackground():void");
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$10 */
    /* loaded from: classes.dex */
    public class AnonymousClass10 implements View.OnClickListener {
        public AnonymousClass10() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getTextContainer().relativePosObjects(optionExpand.this.references, textContainer.floatObject.bottom);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$100 */
    /* loaded from: classes.dex */
    public class AnonymousClass100 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass100(LinearLayout linearLayout) {
            r2 = linearLayout;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedShape().set3dEnabled(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$101 */
    /* loaded from: classes.dex */
    public class AnonymousClass101 implements CompoundButton.OnCheckedChangeListener {
        public AnonymousClass101() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            optionExpand.this.getSelectedShape().set3dDepth(optionExpand.this.getSelectedShape().getThreeDDepth(), optionExpand.this.getSelectedShape().getThreeDDepthDarken(), optionExpand.this.getSelectedShape().getThreeDQuality(), z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$102 */
    /* loaded from: classes.dex */
    public class AnonymousClass102 implements SeekArc.OnSeekArcChangeListener {
        final /* synthetic */ option_label val$obliqueAngleLabel;

        public AnonymousClass102(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onProgressChanged(SeekArc seekArc, int i, boolean z) {
            optionExpand.this.getSelectedShape().set3dObliqueAngle(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onStartTrackingTouch(SeekArc seekArc) {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onStopTrackingTouch(SeekArc seekArc) {
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$103 */
    /* loaded from: classes.dex */
    public class AnonymousClass103 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel_lighting;

        public AnonymousClass103(LinearLayout linearLayout) {
            r2 = linearLayout;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedShape().set3dLighting(z, optionExpand.this.getSelectedShape().getEmbossLightAngle(), optionExpand.this.getSelectedShape().getThreeDLightingIntensity(), optionExpand.this.getSelectedShape().getThreeDLightingShadow(), optionExpand.this.getSelectedShape().getThreeDLightingSpecularHardness());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$104 */
    /* loaded from: classes.dex */
    public class AnonymousClass104 implements SeekArc.OnSeekArcChangeListener {
        final /* synthetic */ option_label val$lightAngleLabel;

        public AnonymousClass104(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onProgressChanged(SeekArc seekArc, int i, boolean z) {
            optionExpand.this.getSelectedShape().setEmboss(optionExpand.this.getSelectedShape().isEmbossEnabled(), i, optionExpand.this.getSelectedShape().getEmbossIntensity(), optionExpand.this.getSelectedShape().getEmbossAmbient(), optionExpand.this.getSelectedShape().getEmbossHardness(), optionExpand.this.getSelectedShape().getEmbossBevel());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onStartTrackingTouch(SeekArc seekArc) {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onStopTrackingTouch(SeekArc seekArc) {
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$105 */
    /* loaded from: classes.dex */
    public class AnonymousClass105 implements RadioGroup.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel_nonOblique;
        final /* synthetic */ LinearLayout val$toggleablePanel_oblique;

        public AnonymousClass105(LinearLayout linearLayout, LinearLayout linearLayout2) {
            r2 = linearLayout;
            r3 = linearLayout2;
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            if (i == R.id.oblique_rButton) {
                optionExpand.this.getSelectedShape().set3dViewType(3);
                r2.setVisibility(8);
                r3.setVisibility(0);
            } else {
                if (i != R.id.perspective_rButton) {
                    return;
                }
                optionExpand.this.getSelectedShape().set3dViewType(1);
                r2.setVisibility(0);
                r3.setVisibility(8);
            }
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$106 */
    /* loaded from: classes.dex */
    public class AnonymousClass106 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$depthLabel;
        final /* synthetic */ int val$max3dDepthOblique;
        final /* synthetic */ int val$max3dDepthPerspective;
        final /* synthetic */ int val$old3dDepthFillType;

        public AnonymousClass106(int i, int i2, int i3, option_label option_labelVar) {
            r2 = i;
            r3 = i2;
            r4 = i3;
            r5 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().set3dDepth(optionExpand.this.toNum(i, r2 == 3 ? r3 : r4), optionExpand.this.getSelectedShape().getThreeDDepthDarken(), optionExpand.this.getSelectedShape().getThreeDQuality(), optionExpand.this.getSelectedShape().isThreeDStokeInclude());
            r5.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$107 */
    /* loaded from: classes.dex */
    public class AnonymousClass107 implements unifiedColor_selector.onColorChangeListener {
        final /* synthetic */ unifiedColor_selector val$depthColor;

        public AnonymousClass107(unifiedColor_selector unifiedcolor_selector) {
            r2 = unifiedcolor_selector;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            optionExpand.this.getSelectedShape().set3dDepthColor(i, i2, gradientFill, r2.isAutomatic());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$108 */
    /* loaded from: classes.dex */
    public class AnonymousClass108 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$depthDarkenLabel;

        public AnonymousClass108(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().set3dDepth(optionExpand.this.getSelectedShape().getThreeDDepth(), i, optionExpand.this.getSelectedShape().getThreeDQuality(), optionExpand.this.getSelectedShape().isThreeDStokeInclude());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$109 */
    /* loaded from: classes.dex */
    public class AnonymousClass109 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$xAxisLabel;

        public AnonymousClass109(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().rotate3d(i, optionExpand.this.getSelectedShape().getTextRotationY());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$11 */
    /* loaded from: classes.dex */
    public class AnonymousClass11 implements DiscreteSeekBar.OnProgressChangeListener {
        float oldFactor = 1.0f;
        final /* synthetic */ option_label val$scaleLabel;

        public AnonymousClass11(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            float scaleObjects = uniformScale.scaleObjects(i);
            r2.setValue((int) scaleObjects);
            float f = scaleObjects / 100.0f;
            optionExpand.this.getTextContainer().scaleObjects(optionExpand.this.references, f / this.oldFactor);
            this.oldFactor = f;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$110 */
    /* loaded from: classes.dex */
    public class AnonymousClass110 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$yAxisLabel;

        public AnonymousClass110(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().rotate3d(optionExpand.this.getSelectedShape().getTextRotationX(), i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$111 */
    /* loaded from: classes.dex */
    public class AnonymousClass111 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$zAxisLabel;

        public AnonymousClass111(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().rotateShape(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$112 */
    /* loaded from: classes.dex */
    public class AnonymousClass112 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$lightingIntensityLabel;

        public AnonymousClass112(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().set3dLighting(optionExpand.this.getSelectedShape().isThreeDLightingEnabled(), optionExpand.this.getSelectedShape().getEmbossLightAngle(), i, optionExpand.this.getSelectedShape().getThreeDLightingShadow(), optionExpand.this.getSelectedShape().getThreeDLightingSpecularHardness());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$113 */
    /* loaded from: classes.dex */
    public class AnonymousClass113 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$lightingShadowLabel;

        public AnonymousClass113(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().set3dLighting(optionExpand.this.getSelectedShape().isThreeDLightingEnabled(), optionExpand.this.getSelectedShape().getEmbossLightAngle(), optionExpand.this.getSelectedShape().getThreeDLightingIntensity(), i, optionExpand.this.getSelectedShape().getThreeDLightingSpecularHardness());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$114 */
    /* loaded from: classes.dex */
    public class AnonymousClass114 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$lightingSpecularLabel;

        public AnonymousClass114(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().set3dLighting(optionExpand.this.getSelectedShape().isThreeDLightingEnabled(), optionExpand.this.getSelectedShape().getEmbossLightAngle(), optionExpand.this.getSelectedShape().getThreeDLightingIntensity(), optionExpand.this.getSelectedShape().getThreeDLightingShadow(), i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$115 */
    /* loaded from: classes.dex */
    public class AnonymousClass115 implements Runnable {
        final /* synthetic */ int val$old3dDepth;
        final /* synthetic */ boolean val$old3dDepthColorAutomatic;
        final /* synthetic */ int val$old3dDepthColorFill;
        final /* synthetic */ int val$old3dDepthDarken;
        final /* synthetic */ int val$old3dDepthFillType;
        final /* synthetic */ GradientMaker.GradientFill val$old3dDepthGradientFill;
        final /* synthetic */ boolean val$old3dEnabled;
        final /* synthetic */ boolean val$old3dStokeInclude;
        final /* synthetic */ int val$old3dViewType;
        final /* synthetic */ int val$old3dXRot;
        final /* synthetic */ int val$old3dYRot;
        final /* synthetic */ int val$old3dZRot;
        final /* synthetic */ int val$oldLightAngle;
        final /* synthetic */ boolean val$oldLightingEnabled;
        final /* synthetic */ int val$oldLightingIntensity;
        final /* synthetic */ int val$oldLightingShadow;
        final /* synthetic */ int val$oldLightingSpecularHardness;
        final /* synthetic */ int val$oldObliqueAngle;

        public AnonymousClass115(boolean z, int i, int i2, int i3, boolean z2, int i4, int i5, GradientMaker.GradientFill gradientFill, boolean z3, boolean z4, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
            r4 = z;
            r5 = i;
            r6 = i2;
            r7 = i3;
            r8 = z2;
            r9 = i4;
            r10 = i5;
            r11 = gradientFill;
            r12 = z3;
            r13 = z4;
            r14 = i6;
            r15 = i7;
            r16 = i8;
            r17 = i9;
            r18 = i10;
            r19 = i11;
            r20 = i12;
            r21 = i13;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().freezeFullRedraw();
            optionExpand.this.getSelectedShape().set3dEnabled(r4);
            optionExpand.this.getSelectedShape().set3dViewType(r5);
            optionExpand.this.getSelectedShape().set3dDepth(r6, r7, optionExpand.this.getSelectedShape().getThreeDQuality(), r8);
            optionExpand.this.getSelectedShape().set3dDepthColor(r9, r10, r11, r12);
            optionExpand.this.getSelectedShape().set3dLighting(r13, r14, r15, r16, r17);
            optionExpand.this.getSelectedShape().set3dObliqueAngle(r18);
            optionExpand.this.getSelectedShape().rotate3d(r19, r20);
            optionExpand.this.getSelectedShape().UnFreezeFullRedraw();
            optionExpand.this.getSelectedShape().rotateShape(r21);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$116 */
    /* loaded from: classes.dex */
    public class AnonymousClass116 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$rotLabelX;
        final /* synthetic */ slider_ui val$rotValX;
        final /* synthetic */ slider_ui val$rotValY;

        public AnonymousClass116(slider_ui slider_uiVar, slider_ui slider_uiVar2, option_label option_labelVar) {
            r2 = slider_uiVar;
            r3 = slider_uiVar2;
            r4 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().rotate3d(r2.getBarValue(), r3.getBarValue());
            r4.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$117 */
    /* loaded from: classes.dex */
    public class AnonymousClass117 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$rotLabelY;
        final /* synthetic */ slider_ui val$rotValX;
        final /* synthetic */ slider_ui val$rotValY;

        public AnonymousClass117(slider_ui slider_uiVar, slider_ui slider_uiVar2, option_label option_labelVar) {
            r2 = slider_uiVar;
            r3 = slider_uiVar2;
            r4 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().rotate3d(r2.getBarValue(), r3.getBarValue());
            r4.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$118 */
    /* loaded from: classes.dex */
    public class AnonymousClass118 implements Runnable {
        final /* synthetic */ int val$originalValX;
        final /* synthetic */ int val$originalValY;

        public AnonymousClass118(int i, int i2) {
            r2 = i;
            r3 = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().rotate3d(r2, r3);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$119 */
    /* loaded from: classes.dex */
    public class AnonymousClass119 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$rotValX;
        final /* synthetic */ slider_ui val$rotValY;

        public AnonymousClass119(slider_ui slider_uiVar, slider_ui slider_uiVar2) {
            r2 = slider_uiVar;
            r3 = slider_uiVar2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setBarValue(0);
            r3.setBarValue(0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$12 */
    /* loaded from: classes.dex */
    public class AnonymousClass12 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$moveByLabel;

        public AnonymousClass12(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$120 */
    /* loaded from: classes.dex */
    public class AnonymousClass120 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$label;
        final /* synthetic */ slider_ui val$rotVal;

        public AnonymousClass120(slider_ui slider_uiVar, option_label option_labelVar) {
            r2 = slider_uiVar;
            r3 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().rotateShape(r2.getBarValue());
            r3.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$121 */
    /* loaded from: classes.dex */
    public class AnonymousClass121 implements Runnable {
        final /* synthetic */ int val$originalVal;

        public AnonymousClass121(int i) {
            r2 = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().rotateShape(r2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$122 */
    /* loaded from: classes.dex */
    public class AnonymousClass122 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$rotVal;

        public AnonymousClass122(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setBarValue(0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$123 */
    /* loaded from: classes.dex */
    public class AnonymousClass123 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ LinearLayout val$toggleablePanel;
        final /* synthetic */ slider_ui val$widthVal;

        public AnonymousClass123(LinearLayout linearLayout, slider_ui slider_uiVar, unifiedColor_selector unifiedcolor_selector) {
            r2 = linearLayout;
            r3 = slider_uiVar;
            r4 = unifiedcolor_selector;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedShape().setStroke(z, r3.getBarValue(), r4.getCurrColor());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$124 */
    /* loaded from: classes.dex */
    public class AnonymousClass124 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ option_toggle val$strokeSwitch;
        final /* synthetic */ option_label val$widthLabel;

        public AnonymousClass124(option_toggle option_toggleVar, unifiedColor_selector unifiedcolor_selector, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = unifiedcolor_selector;
            r4 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().setStroke(r2.getState(), i, r3.getCurrColor());
            r4.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$125 */
    /* loaded from: classes.dex */
    public class AnonymousClass125 implements unifiedColor_selector.onColorChangeListener {
        final /* synthetic */ option_toggle val$strokeSwitch;
        final /* synthetic */ slider_ui val$widthVal;

        public AnonymousClass125(option_toggle option_toggleVar, slider_ui slider_uiVar) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            optionExpand.this.getSelectedShape().setStroke(r2.getState(), r3.getBarValue(), i2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$126 */
    /* loaded from: classes.dex */
    public class AnonymousClass126 implements Runnable {
        final /* synthetic */ int val$oldStrokeColor;
        final /* synthetic */ boolean val$oldStrokeEnabled;
        final /* synthetic */ int val$oldStrokeWidth;

        public AnonymousClass126(boolean z, int i, int i2) {
            r2 = z;
            r3 = i;
            r4 = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().setStroke(r2, r3, r4);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$127 */
    /* loaded from: classes.dex */
    public class AnonymousClass127 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$brightness;
        final /* synthetic */ slider_ui val$contrast;
        final /* synthetic */ slider_ui val$hue;
        final /* synthetic */ slider_ui val$saturation;

        public AnonymousClass127(slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, slider_ui slider_uiVar4) {
            r2 = slider_uiVar;
            r3 = slider_uiVar2;
            r4 = slider_uiVar3;
            r5 = slider_uiVar4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setBarValue(0);
            r3.setBarValue(0);
            r4.setBarValue(0);
            r5.setBarValue(0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$128 */
    /* loaded from: classes.dex */
    public class AnonymousClass128 implements CompoundButton.OnCheckedChangeListener {
        public AnonymousClass128() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            optionExpand.this.getSelectedShape().setShapeOpacityShadowInclude(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$129 */
    /* loaded from: classes.dex */
    public class AnonymousClass129 implements Runnable {
        final /* synthetic */ int val$oldOpacity;
        final /* synthetic */ boolean val$oldOpacityShadowInclude;

        public AnonymousClass129(int i, boolean z) {
            r2 = i;
            r3 = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().setShapeOpacity(r2);
            optionExpand.this.getSelectedShape().setShapeOpacityShadowInclude(r3);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$13 */
    /* loaded from: classes.dex */
    public class AnonymousClass13 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$moveByVal;

        public AnonymousClass13(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getTextContainer().positionObjects(optionExpand.this.references, -r2.getBarValue(), 0.0f);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$130 */
    /* loaded from: classes.dex */
    public class AnonymousClass130 implements BezierPanel.OnBezierPanelAction {
        final /* synthetic */ BezierTools val$tools;

        public AnonymousClass130(BezierTools bezierTools) {
            r2 = bezierTools;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.OnBezierPanelAction
        public void pathChanged(int i, boolean z, boolean z2, boolean z3) {
            r2.updateActionsVisibility(i, z, z2, z3);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.OnBezierPanelAction
        public void selectionChanged(int i) {
            r2.updateFor(i, optionExpand.this.callback.bezierPanel.customBeziers);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.OnBezierPanelAction
        public void updateMode(BezierPanel.BezierMode bezierMode) {
            r2.setMode(bezierMode);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$131 */
    /* loaded from: classes.dex */
    public class AnonymousClass131 implements RadioGroup.OnCheckedChangeListener {
        public AnonymousClass131() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            optionExpand.this.getSelectedShape().setBezierMaskIn(i == R.id.in_rButton);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$132 */
    /* loaded from: classes.dex */
    public class AnonymousClass132 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass132(LinearLayout linearLayout) {
            r2 = linearLayout;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedShape().setBezierMaskEnabled(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$133 */
    /* loaded from: classes.dex */
    public class AnonymousClass133 implements Runnable {
        public AnonymousClass133() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RectF rectF = new RectF(optionExpand.this.getSelectedShape().getX(), optionExpand.this.getSelectedShape().getY(), optionExpand.this.getSelectedShape().getX() + optionExpand.this.getSelectedShape().width_f, optionExpand.this.getSelectedShape().getY() + optionExpand.this.getSelectedShape().height_f);
            Bundle pathsToBundle = optionExpand.this.callback.bezierPanel.pathsToBundle(false);
            pathsToBundle.putStringArrayList(appStateConstants.BEZIER_CURVE_RECT, commonFuncs.rectFToArr(rectF));
            optionExpand.this.getSelectedShape().setBezierMaskBundle(pathsToBundle);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$134 */
    /* loaded from: classes.dex */
    public class AnonymousClass134 implements Runnable {
        final /* synthetic */ boolean val$oldMaskEnabled;
        final /* synthetic */ boolean val$oldMaskIn;

        public AnonymousClass134(boolean z, boolean z2) {
            r2 = z;
            r3 = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().bezierMaskEnabled = r2;
            optionExpand.this.getSelectedShape().bezierMaskIn = r3;
            optionExpand.this.getSelectedShape().setBezierMaskPath(null);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$135 */
    /* loaded from: classes.dex */
    public class AnonymousClass135 implements textureSelector.textureSelectorInterface {
        public AnonymousClass135() {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textureSelector.textureSelectorInterface
        public void maintainChanged(boolean z) {
            optionExpand.this.getSelectedShape().setTextureMaintainAspect(z);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textureSelector.textureSelectorInterface
        public void scaleChanged(int i) {
            optionExpand.this.getSelectedShape().setTextureScale(i);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$136 */
    /* loaded from: classes.dex */
    public class AnonymousClass136 implements View.OnClickListener {
        public AnonymousClass136() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.callback.pickNewTexture(true);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$137 */
    /* loaded from: classes.dex */
    public class AnonymousClass137 implements View.OnClickListener {
        final /* synthetic */ textureSelector val$selectTexture;

        public AnonymousClass137(textureSelector textureselector) {
            r2 = textureselector;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedShape().removeTexture();
            r2.setImagePath(new ImageSource());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$138 */
    /* loaded from: classes.dex */
    public class AnonymousClass138 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass138(LinearLayout linearLayout) {
            r2 = linearLayout;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedShape().setRemoveColorEnabled(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$139 */
    /* loaded from: classes.dex */
    public class AnonymousClass139 implements View.OnClickListener {
        final /* synthetic */ LinearLayout val$colorPickPrompt;
        final /* synthetic */ option_toggle val$removeColorSwitch;
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass139(LinearLayout linearLayout, option_toggle option_toggleVar, LinearLayout linearLayout2) {
            r2 = linearLayout;
            r3 = option_toggleVar;
            r4 = linearLayout2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setVisibility(r3.getState() ? 0 : 8);
            r3.setVisibility(0);
            r4.setVisibility(8);
            optionExpand.this.callback.colorPickerTool.disable();
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$14 */
    /* loaded from: classes.dex */
    public class AnonymousClass14 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$moveByVal;

        public AnonymousClass14(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getTextContainer().positionObjects(optionExpand.this.references, r2.getBarValue(), 0.0f);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$140 */
    /* loaded from: classes.dex */
    public class AnonymousClass140 implements View.OnClickListener {
        final /* synthetic */ LinearLayout val$colorPickPrompt;
        final /* synthetic */ removeColorTools val$colorTools;
        final /* synthetic */ option_toggle val$removeColorSwitch;
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass140(removeColorTools removecolortools, LinearLayout linearLayout, option_toggle option_toggleVar, LinearLayout linearLayout2) {
            r2 = removecolortools;
            r3 = linearLayout;
            r4 = option_toggleVar;
            r5 = linearLayout2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setCurrColor(optionExpand.this.callback.colorPickerTool.getPickedColor());
            r3.setVisibility(r4.getState() ? 0 : 8);
            r4.setVisibility(0);
            r5.setVisibility(8);
            optionExpand.this.callback.colorPickerTool.disable();
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$141 */
    /* loaded from: classes.dex */
    public class AnonymousClass141 implements removeColorTools.OnRemoveColorToolsAction {
        final /* synthetic */ LinearLayout val$colorPickPrompt;
        final /* synthetic */ removeColorTools val$colorTools;
        final /* synthetic */ ArrayList val$currRemoveColorCT;
        final /* synthetic */ option_toggle val$removeColorSwitch;
        final /* synthetic */ LinearLayout val$toggleablePanel;
        final /* synthetic */ slider_ui val$tolerance;

        public AnonymousClass141(slider_ui slider_uiVar, ArrayList arrayList, removeColorTools removecolortools, LinearLayout linearLayout, option_toggle option_toggleVar, LinearLayout linearLayout2) {
            r2 = slider_uiVar;
            r3 = arrayList;
            r4 = removecolortools;
            r5 = linearLayout;
            r6 = option_toggleVar;
            r7 = linearLayout2;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools.OnRemoveColorToolsAction
        public void changedColor(int i) {
            r4.modifyCurrentColor(r3, i);
            optionExpand.this.getSelectedShape().fullRedraw();
            r4.setCurrColor(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools.OnRemoveColorToolsAction
        public void pickColor() {
            if (optionExpand.this.callback.colorPickerTool != null) {
                r5.setVisibility(8);
                r6.setVisibility(8);
                r7.setVisibility(0);
                optionExpand.this.callback.colorPickerTool.enable(new RectF(optionExpand.this.getSelectedShape().getX(), optionExpand.this.getSelectedShape().getY(), optionExpand.this.getSelectedShape().getShapeWidth() + optionExpand.this.getSelectedShape().getX(), optionExpand.this.getSelectedShape().getShapeHeight() + optionExpand.this.getSelectedShape().getY()), optionExpand.this.getSelectedShape());
            }
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools.OnRemoveColorToolsAction
        public void requestAdd() {
            r3.add(new ShapeComponent.ColorTolerance(-1, 100));
            optionExpand.this.getSelectedShape().fullRedraw();
            r4.setCurrIndex(r3, r1.size() - 1);
            updateDisplayedTolerance();
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools.OnRemoveColorToolsAction
        public void requestNext() {
            if (r4.getCurrIndex() + 1 < r3.size()) {
                removeColorTools removecolortools = r4;
                removecolortools.setCurrIndex(r3, removecolortools.getCurrIndex() + 1);
                updateDisplayedTolerance();
            }
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools.OnRemoveColorToolsAction
        public void requestPrev() {
            if (r4.getCurrIndex() - 1 >= 0) {
                r4.setCurrIndex(r3, r0.getCurrIndex() - 1);
                updateDisplayedTolerance();
            }
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools.OnRemoveColorToolsAction
        public void requestRemove() {
            if (r3.size() <= 1 || r4.getCurrIndex() >= r3.size()) {
                return;
            }
            r3.remove(r4.getCurrIndex());
            optionExpand.this.getSelectedShape().fullRedraw();
            removeColorTools removecolortools = r4;
            removecolortools.setCurrIndex(r3, Math.max(removecolortools.getCurrIndex() - 1, 0));
            updateDisplayedTolerance();
        }

        public void updateDisplayedTolerance() {
            r2.setBarValue(uniformScale.removeColorToleranceInverse(((ShapeComponent.ColorTolerance) r3.get(r4.getCurrIndex())).t / 10));
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$142 */
    /* loaded from: classes.dex */
    public class AnonymousClass142 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ removeColorTools val$colorTools;
        final /* synthetic */ ArrayList val$currRemoveColorCT;
        final /* synthetic */ option_label val$toleranceLabel;

        public AnonymousClass142(option_label option_labelVar, removeColorTools removecolortools, ArrayList arrayList) {
            r2 = option_labelVar;
            r3 = removecolortools;
            r4 = arrayList;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            int removeColorTolerance = uniformScale.removeColorTolerance(i);
            r2.setValue(removeColorTolerance);
            r3.modifyCurrentTolerance(r4, removeColorTolerance * 10);
            optionExpand.this.getSelectedShape().fullRedraw();
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$143 */
    /* loaded from: classes.dex */
    public class AnonymousClass143 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$blurLabel;

        public AnonymousClass143(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().setRemoveColorBlur(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$144 */
    /* loaded from: classes.dex */
    public class AnonymousClass144 implements Runnable {
        final /* synthetic */ int val$oldRemoveColorBlur;
        final /* synthetic */ ArrayList val$oldRemoveColorCT;
        final /* synthetic */ boolean val$oldRemoveColorEnabled;

        public AnonymousClass144(boolean z, int i, ArrayList arrayList) {
            r2 = z;
            r3 = i;
            r4 = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().setRemoveColorOptions(r2, r3, r4);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$145 */
    /* loaded from: classes.dex */
    public class AnonymousClass145 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass145(LinearLayout linearLayout) {
            r2 = linearLayout;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedShape().setColorOverlayEnabled(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$146 */
    /* loaded from: classes.dex */
    public class AnonymousClass146 implements unifiedColor_selector.onColorChangeListener {
        public AnonymousClass146() {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            optionExpand.this.getSelectedShape().setColorOverlay(optionExpand.this.getSelectedShape().isColorOverlayEnabled(), i, i2, gradientFill);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$147 */
    /* loaded from: classes.dex */
    public class AnonymousClass147 implements Runnable {
        final /* synthetic */ int val$oldColorOverlayColor;
        final /* synthetic */ boolean val$oldColorOverlayEnabled;
        final /* synthetic */ GradientMaker.GradientFill val$oldColorOverlayGradient;
        final /* synthetic */ int val$oldColorOverlayType;

        public AnonymousClass147(boolean z, int i, int i2, GradientMaker.GradientFill gradientFill) {
            r2 = z;
            r3 = i;
            r4 = i2;
            r5 = gradientFill;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().setColorOverlay(r2, r3, r4, r5);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$148 */
    /* loaded from: classes.dex */
    public class AnonymousClass148 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass148(LinearLayout linearLayout, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, unifiedColor_selector unifiedcolor_selector) {
            r2 = linearLayout;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = slider_uiVar3;
            r6 = unifiedcolor_selector;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedShape().setShadow(z, r3.getBarValue(), r4.getBarValue(), r5.getBarValue(), r6.getCurrColor());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$149 */
    /* loaded from: classes.dex */
    public class AnonymousClass149 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ option_label val$radiusLabel;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass149(option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, unifiedColor_selector unifiedcolor_selector, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = unifiedcolor_selector;
            r6 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().setShadow(r2.getState(), i, r3.getBarValue(), r4.getBarValue(), r5.getCurrColor());
            r6.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$15 */
    /* loaded from: classes.dex */
    public class AnonymousClass15 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$moveByVal;

        public AnonymousClass15(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getTextContainer().positionObjects(optionExpand.this.references, 0.0f, -r2.getBarValue());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$150 */
    /* loaded from: classes.dex */
    public class AnonymousClass150 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ option_label val$dxLabel;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass150(option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, unifiedColor_selector unifiedcolor_selector, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = unifiedcolor_selector;
            r6 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().setShadow(r2.getState(), r3.getBarValue(), i, r4.getBarValue(), r5.getCurrColor());
            r6.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$151 */
    /* loaded from: classes.dex */
    public class AnonymousClass151 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ option_label val$dyLabel;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass151(option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, unifiedColor_selector unifiedcolor_selector, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = unifiedcolor_selector;
            r6 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().setShadow(r2.getState(), r3.getBarValue(), r4.getBarValue(), i, r5.getCurrColor());
            r6.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$152 */
    /* loaded from: classes.dex */
    public class AnonymousClass152 implements unifiedColor_selector.onColorChangeListener {
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass152(option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = slider_uiVar3;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            optionExpand.this.getSelectedShape().setShadow(r2.getState(), r3.getBarValue(), r4.getBarValue(), r5.getBarValue(), i2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$153 */
    /* loaded from: classes.dex */
    public class AnonymousClass153 implements Runnable {
        final /* synthetic */ int val$oldShadowColor;
        final /* synthetic */ int val$oldShadowDx;
        final /* synthetic */ int val$oldShadowDy;
        final /* synthetic */ boolean val$oldShadowEnabled;
        final /* synthetic */ int val$oldShadowRadius;

        public AnonymousClass153(boolean z, int i, int i2, int i3, int i4) {
            r2 = z;
            r3 = i;
            r4 = i2;
            r5 = i3;
            r6 = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().setShadow(r2, r3, r4, r5, r6);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$154 */
    /* loaded from: classes.dex */
    public class AnonymousClass154 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass154(LinearLayout linearLayout, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, unifiedColor_selector unifiedcolor_selector) {
            r2 = linearLayout;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = slider_uiVar3;
            r6 = unifiedcolor_selector;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedShape().setInnerShadow(z, r3.getBarValue(), r4.getBarValue(), r5.getBarValue(), r6.getCurrColor());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$155 */
    /* loaded from: classes.dex */
    public class AnonymousClass155 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ option_label val$radiusLabel;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass155(option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, unifiedColor_selector unifiedcolor_selector, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = unifiedcolor_selector;
            r6 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().setInnerShadow(r2.getState(), i, r3.getBarValue(), r4.getBarValue(), r5.getCurrColor());
            r6.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$156 */
    /* loaded from: classes.dex */
    public class AnonymousClass156 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ option_label val$dxLabel;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass156(option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, unifiedColor_selector unifiedcolor_selector, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = unifiedcolor_selector;
            r6 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().setInnerShadow(r2.getState(), r3.getBarValue(), i, r4.getBarValue(), r5.getCurrColor());
            r6.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$157 */
    /* loaded from: classes.dex */
    public class AnonymousClass157 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ option_label val$dyLabel;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass157(option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, unifiedColor_selector unifiedcolor_selector, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = unifiedcolor_selector;
            r6 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().setInnerShadow(r2.getState(), r3.getBarValue(), r4.getBarValue(), i, r5.getCurrColor());
            r6.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$158 */
    /* loaded from: classes.dex */
    public class AnonymousClass158 implements unifiedColor_selector.onColorChangeListener {
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass158(option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = slider_uiVar3;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            optionExpand.this.getSelectedShape().setInnerShadow(r2.getState(), r3.getBarValue(), r4.getBarValue(), r5.getBarValue(), i2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$159 */
    /* loaded from: classes.dex */
    public class AnonymousClass159 implements Runnable {
        final /* synthetic */ int val$oldInnerShadowColor;
        final /* synthetic */ int val$oldInnerShadowDx;
        final /* synthetic */ int val$oldInnerShadowDy;
        final /* synthetic */ boolean val$oldInnerShadowEnabled;
        final /* synthetic */ int val$oldInnerShadowRadius;

        public AnonymousClass159(boolean z, int i, int i2, int i3, int i4) {
            r2 = z;
            r3 = i;
            r4 = i2;
            r5 = i3;
            r6 = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().setInnerShadow(r2, r3, r4, r5, r6);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$16 */
    /* loaded from: classes.dex */
    public class AnonymousClass16 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$moveByVal;

        public AnonymousClass16(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getTextContainer().positionObjects(optionExpand.this.references, 0.0f, r2.getBarValue());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$160 */
    /* loaded from: classes.dex */
    public class AnonymousClass160 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$label;
        final /* synthetic */ slider_ui val$rotVal;

        public AnonymousClass160(slider_ui slider_uiVar, option_label option_labelVar) {
            r2 = slider_uiVar;
            r3 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().rotateText(r2.getBarValue());
            r3.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$161 */
    /* loaded from: classes.dex */
    public class AnonymousClass161 implements Runnable {
        final /* synthetic */ int val$originalVal;

        public AnonymousClass161(int i) {
            r2 = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().rotateText(r2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$162 */
    /* loaded from: classes.dex */
    public class AnonymousClass162 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$rotVal;

        public AnonymousClass162(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setBarValue(0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$163 */
    /* loaded from: classes.dex */
    public class AnonymousClass163 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$moveByLabel;

        public AnonymousClass163(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$164 */
    /* loaded from: classes.dex */
    public class AnonymousClass164 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$moveByVal;

        public AnonymousClass164(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().setX(optionExpand.this.getSelectedText().getX() - r2.getBarValue());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$165 */
    /* loaded from: classes.dex */
    public class AnonymousClass165 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$moveByVal;

        public AnonymousClass165(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().setX(optionExpand.this.getSelectedText().getX() + r2.getBarValue());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$166 */
    /* loaded from: classes.dex */
    public class AnonymousClass166 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$moveByVal;

        public AnonymousClass166(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().setY(optionExpand.this.getSelectedText().getY() - r2.getBarValue());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$167 */
    /* loaded from: classes.dex */
    public class AnonymousClass167 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$moveByVal;

        public AnonymousClass167(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().setY(optionExpand.this.getSelectedText().getY() + r2.getBarValue());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$168 */
    /* loaded from: classes.dex */
    public class AnonymousClass168 implements Runnable {
        final /* synthetic */ float val$oldX;
        final /* synthetic */ float val$oldY;

        public AnonymousClass168(float f, float f2) {
            r2 = f;
            r3 = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setX(r2);
            optionExpand.this.getSelectedText().setY(r3);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$169 */
    /* loaded from: classes.dex */
    public class AnonymousClass169 implements View.OnClickListener {
        public AnonymousClass169() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().setX(0.0f);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$17 */
    /* loaded from: classes.dex */
    public class AnonymousClass17 implements DiscreteSeekBar.OnProgressChangeListener {
        int oldVal = 0;
        final /* synthetic */ option_label val$label;

        public AnonymousClass17(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getTextContainer().rotateObjects(optionExpand.this.references, i - this.oldVal);
            r2.setValue(i);
            this.oldVal = i;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$170 */
    /* loaded from: classes.dex */
    public class AnonymousClass170 implements View.OnClickListener {
        public AnonymousClass170() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().setX((MainActivity.helperClass.getContainerWidth() / 2.0f) - (optionExpand.this.getSelectedText().textWidth / 2.0f));
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$171 */
    /* loaded from: classes.dex */
    public class AnonymousClass171 implements View.OnClickListener {
        public AnonymousClass171() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().setX(MainActivity.helperClass.getContainerWidth() - optionExpand.this.getSelectedText().textWidth);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$172 */
    /* loaded from: classes.dex */
    public class AnonymousClass172 implements View.OnClickListener {
        public AnonymousClass172() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().setY(0.0f);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$173 */
    /* loaded from: classes.dex */
    public class AnonymousClass173 implements View.OnClickListener {
        public AnonymousClass173() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().setY((MainActivity.helperClass.getContainerHeight() / 2.0f) - (optionExpand.this.getSelectedText().textHeight / 2.0f));
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$174 */
    /* loaded from: classes.dex */
    public class AnonymousClass174 implements View.OnClickListener {
        public AnonymousClass174() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().setY(MainActivity.helperClass.getContainerHeight() - optionExpand.this.getSelectedText().textHeight);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$175 */
    /* loaded from: classes.dex */
    public class AnonymousClass175 implements Runnable {
        final /* synthetic */ float val$oldX;
        final /* synthetic */ float val$oldY;

        public AnonymousClass175(float f, float f2) {
            r2 = f;
            r3 = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setX(r2);
            optionExpand.this.getSelectedText().setY(r3);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$176 */
    /* loaded from: classes.dex */
    public class AnonymousClass176 implements CompoundButton.OnCheckedChangeListener {
        public AnonymousClass176() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            optionExpand.this.getSelectedText().setJustify(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$177 */
    /* loaded from: classes.dex */
    public class AnonymousClass177 implements View.OnClickListener {
        public AnonymousClass177() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().setTextAlign(3);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$178 */
    /* loaded from: classes.dex */
    public class AnonymousClass178 implements View.OnClickListener {
        public AnonymousClass178() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().setTextAlign(17);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$179 */
    /* loaded from: classes.dex */
    public class AnonymousClass179 implements View.OnClickListener {
        public AnonymousClass179() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().setTextAlign(5);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$18 */
    /* loaded from: classes.dex */
    public class AnonymousClass18 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$brightnessLabel;

        public AnonymousClass18(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.callback.bg_layout.setBrightness(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$180 */
    /* loaded from: classes.dex */
    public class AnonymousClass180 implements Runnable {
        final /* synthetic */ int val$oldAlign;
        final /* synthetic */ boolean val$oldJustify;

        public AnonymousClass180(int i, boolean z) {
            r2 = i;
            r3 = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setTextAlign(r2);
            optionExpand.this.getSelectedText().setJustify(r3);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$181 */
    /* loaded from: classes.dex */
    public class AnonymousClass181 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$label;

        public AnonymousClass181(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
            if (z) {
                optionExpand.this.getSelectedText().setTextSize(i);
            }
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$182 */
    /* loaded from: classes.dex */
    public class AnonymousClass182 implements Runnable {
        final /* synthetic */ int val$originalVal;

        public AnonymousClass182(int i) {
            r2 = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setTextSize(r2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$183 */
    /* loaded from: classes.dex */
    public class AnonymousClass183 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$leftLabel;
        final /* synthetic */ slider_ui val$leftVal;
        final /* synthetic */ slider_ui val$rightVal;

        public AnonymousClass183(option_label option_labelVar, slider_ui slider_uiVar, slider_ui slider_uiVar2) {
            r2 = option_labelVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
            optionExpand.this.getSelectedText().setInPadding(optionExpand.this.dpToPixels(r3.getBarValue()), optionExpand.this.dpToPixels(r4.getBarValue()));
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$184 */
    /* loaded from: classes.dex */
    public class AnonymousClass184 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ slider_ui val$leftVal;
        final /* synthetic */ option_label val$rightLabel;
        final /* synthetic */ slider_ui val$rightVal;

        public AnonymousClass184(option_label option_labelVar, slider_ui slider_uiVar, slider_ui slider_uiVar2) {
            r2 = option_labelVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
            optionExpand.this.getSelectedText().setInPadding(optionExpand.this.dpToPixels(r3.getBarValue()), optionExpand.this.dpToPixels(r4.getBarValue()));
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$185 */
    /* loaded from: classes.dex */
    public class AnonymousClass185 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$leftVal;
        final /* synthetic */ slider_ui val$rightVal;

        public AnonymousClass185(slider_ui slider_uiVar, slider_ui slider_uiVar2) {
            r2 = slider_uiVar;
            r3 = slider_uiVar2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setBarValue(0);
            r3.setBarValue(0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$186 */
    /* loaded from: classes.dex */
    public class AnonymousClass186 implements Runnable {
        final /* synthetic */ slider_ui val$leftVal;
        final /* synthetic */ int val$oldPaddingLeft;
        final /* synthetic */ int val$oldPaddingRight;
        final /* synthetic */ slider_ui val$rightVal;

        public AnonymousClass186(slider_ui slider_uiVar, int i, slider_ui slider_uiVar2, int i2) {
            r2 = slider_uiVar;
            r3 = i;
            r4 = slider_uiVar2;
            r5 = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            r2.setBarValue(r3);
            r4.setBarValue(r5);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$187 */
    /* loaded from: classes.dex */
    public class AnonymousClass187 implements textureSelector.textureSelectorInterface {
        public AnonymousClass187() {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textureSelector.textureSelectorInterface
        public void maintainChanged(boolean z) {
            optionExpand.this.getSelectedText().setTextureMaintainAspect(z);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textureSelector.textureSelectorInterface
        public void scaleChanged(int i) {
            optionExpand.this.getSelectedText().setTextureScale(i);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$188 */
    /* loaded from: classes.dex */
    public class AnonymousClass188 implements View.OnClickListener {
        public AnonymousClass188() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.callback.pickNewTexture(false);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$189 */
    /* loaded from: classes.dex */
    public class AnonymousClass189 implements View.OnClickListener {
        final /* synthetic */ textureSelector val$selectTexture;

        public AnonymousClass189(textureSelector textureselector) {
            r2 = textureselector;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().removeTexture();
            r2.setImagePath(new ImageSource());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$19 */
    /* loaded from: classes.dex */
    public class AnonymousClass19 implements Runnable {
        final /* synthetic */ int val$oldBrightness;

        public AnonymousClass19(int i) {
            r2 = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.callback.bg_layout.setBrightness(r2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$190 */
    /* loaded from: classes.dex */
    public class AnonymousClass190 implements CompoundButton.OnCheckedChangeListener {
        public AnonymousClass190() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            optionExpand.this.getSelectedText().setTextOpacityShadowInclude(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$191 */
    /* loaded from: classes.dex */
    public class AnonymousClass191 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$opacityLabel;

        public AnonymousClass191(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
            optionExpand.this.getSelectedText().setTextOpacity(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$192 */
    /* loaded from: classes.dex */
    public class AnonymousClass192 implements Runnable {
        final /* synthetic */ int val$oldOpacity;
        final /* synthetic */ boolean val$oldOpacityShadowInclude;

        public AnonymousClass192(int i, boolean z) {
            r2 = i;
            r3 = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setTextOpacity(r2);
            optionExpand.this.getSelectedText().setTextOpacityShadowInclude(r3);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$193 */
    /* loaded from: classes.dex */
    public class AnonymousClass193 implements unifiedColor_selector.onColorChangeListener {
        final /* synthetic */ textSelector val$selector;

        public AnonymousClass193(textSelector textselector) {
            r2 = textselector;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            if (i == unifiedColor_selector.TYPE_COLOR) {
                TextComponent selectedText = optionExpand.this.getSelectedText();
                textSelector textselector = r2;
                selectedText.setColorFill(i2, textselector.selectionStart, textselector.selectionEnd);
            } else if (i == unifiedColor_selector.TYPE_GRADIENT) {
                optionExpand.this.getSelectedText().setGradientFill(gradientFill);
            }
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$194 */
    /* loaded from: classes.dex */
    public class AnonymousClass194 implements Runnable {
        final /* synthetic */ spansIntervals val$oldColors;
        final /* synthetic */ int val$oldFillType;
        final /* synthetic */ GradientMaker.GradientFill val$oldGradientFill;

        public AnonymousClass194(int i, spansIntervals spansintervals, GradientMaker.GradientFill gradientFill) {
            r2 = i;
            r3 = spansintervals;
            r4 = gradientFill;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = r2;
            if (i == unifiedColor_selector.TYPE_COLOR) {
                optionExpand.this.getSelectedText().setColors(r3);
                optionExpand.this.getSelectedText().updateSpans(false);
            } else if (i == unifiedColor_selector.TYPE_GRADIENT) {
                optionExpand.this.getSelectedText().setGradientFill(r4);
            }
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$195 */
    /* loaded from: classes.dex */
    public class AnonymousClass195 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ slider_ui val$bottomVal;
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ slider_ui val$leftVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ slider_ui val$rightVal;
        final /* synthetic */ LinearLayout val$toggleablePanel;
        final /* synthetic */ slider_ui val$topVal;

        public AnonymousClass195(LinearLayout linearLayout, unifiedColor_selector unifiedcolor_selector, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, slider_ui slider_uiVar4, slider_ui slider_uiVar5) {
            r2 = linearLayout;
            r3 = unifiedcolor_selector;
            r4 = slider_uiVar;
            r5 = slider_uiVar2;
            r6 = slider_uiVar3;
            r7 = slider_uiVar4;
            r8 = slider_uiVar5;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedText().updateBackground(z, r3.getFillType(), r3.getCurrColor(), r3.getCurrGradient(), r4.getBarValue(), r5.getBarValue(), r6.getBarValue(), r7.getBarValue(), r8.getBarValue());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$196 */
    /* loaded from: classes.dex */
    public class AnonymousClass196 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_toggle val$bgEnableSwitch;
        final /* synthetic */ slider_ui val$bottomVal;
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ option_label val$leftLabel;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ slider_ui val$rightVal;
        final /* synthetic */ slider_ui val$topVal;

        public AnonymousClass196(option_toggle option_toggleVar, unifiedColor_selector unifiedcolor_selector, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, slider_ui slider_uiVar4, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = unifiedcolor_selector;
            r4 = slider_uiVar;
            r5 = slider_uiVar2;
            r6 = slider_uiVar3;
            r7 = slider_uiVar4;
            r8 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().updateBackground(r2.getState(), r3.getFillType(), r3.getCurrColor(), r3.getCurrGradient(), i, r4.getBarValue(), r5.getBarValue(), r6.getBarValue(), r7.getBarValue());
            r8.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$197 */
    /* loaded from: classes.dex */
    public class AnonymousClass197 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_toggle val$bgEnableSwitch;
        final /* synthetic */ slider_ui val$bottomVal;
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ slider_ui val$leftVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ option_label val$rightLabel;
        final /* synthetic */ slider_ui val$topVal;

        public AnonymousClass197(option_toggle option_toggleVar, unifiedColor_selector unifiedcolor_selector, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, slider_ui slider_uiVar4, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = unifiedcolor_selector;
            r4 = slider_uiVar;
            r5 = slider_uiVar2;
            r6 = slider_uiVar3;
            r7 = slider_uiVar4;
            r8 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().updateBackground(r2.getState(), r3.getFillType(), r3.getCurrColor(), r3.getCurrGradient(), r4.getBarValue(), i, r5.getBarValue(), r6.getBarValue(), r7.getBarValue());
            r8.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$198 */
    /* loaded from: classes.dex */
    public class AnonymousClass198 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_toggle val$bgEnableSwitch;
        final /* synthetic */ slider_ui val$bottomVal;
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ slider_ui val$leftVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ slider_ui val$rightVal;
        final /* synthetic */ option_label val$topLabel;

        public AnonymousClass198(option_toggle option_toggleVar, unifiedColor_selector unifiedcolor_selector, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, slider_ui slider_uiVar4, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = unifiedcolor_selector;
            r4 = slider_uiVar;
            r5 = slider_uiVar2;
            r6 = slider_uiVar3;
            r7 = slider_uiVar4;
            r8 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().updateBackground(r2.getState(), r3.getFillType(), r3.getCurrColor(), r3.getCurrGradient(), r4.getBarValue(), r5.getBarValue(), i, r6.getBarValue(), r7.getBarValue());
            r8.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$199 */
    /* loaded from: classes.dex */
    public class AnonymousClass199 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_toggle val$bgEnableSwitch;
        final /* synthetic */ option_label val$bottomLabel;
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ slider_ui val$leftVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ slider_ui val$rightVal;
        final /* synthetic */ slider_ui val$topVal;

        public AnonymousClass199(option_toggle option_toggleVar, unifiedColor_selector unifiedcolor_selector, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, slider_ui slider_uiVar4, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = unifiedcolor_selector;
            r4 = slider_uiVar;
            r5 = slider_uiVar2;
            r6 = slider_uiVar3;
            r7 = slider_uiVar4;
            r8 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().updateBackground(r2.getState(), r3.getFillType(), r3.getCurrColor(), r3.getCurrGradient(), r4.getBarValue(), r5.getBarValue(), r6.getBarValue(), i, r7.getBarValue());
            r8.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements AsyncJob.OnBackgroundJob {
        final /* synthetic */ AssetManager val$assetManager;
        final /* synthetic */ presets_holder val$presetsHolder;

        /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$2$1 */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements AsyncJob.OnMainThreadJob {
            final /* synthetic */ preset_ui val$aBG;

            public AnonymousClass1(preset_ui preset_uiVar) {
                r2 = preset_uiVar;
            }

            @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
            public void doInUIThread() {
                View view;
                optionExpand optionexpand = optionExpand.this;
                if (optionexpand.cancelled || (view = optionexpand.v) == null || view.getContext() == null) {
                    return;
                }
                AnonymousClass2.this.val$presetsHolder.addPreset(r2);
            }
        }

        /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$2$2 */
        /* loaded from: classes.dex */
        public class C00252 implements AsyncJob.OnMainThreadJob {
            final /* synthetic */ preset_ui val$aBG;

            public C00252(preset_ui preset_uiVar) {
                r2 = preset_uiVar;
            }

            @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
            public void doInUIThread() {
                View view;
                optionExpand optionexpand = optionExpand.this;
                if (optionexpand.cancelled || (view = optionexpand.v) == null || view.getContext() == null) {
                    return;
                }
                AnonymousClass2.this.val$presetsHolder.removeView(r2);
            }
        }

        /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$2$3 */
        /* loaded from: classes.dex */
        public class AnonymousClass3 implements AsyncJob.OnMainThreadJob {
            final /* synthetic */ preset_ui val$aBG;
            final /* synthetic */ Bitmap val$finalD;
            final /* synthetic */ String val$finalSubBgPath;

            /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$2$3$1 */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements View.OnClickListener {
                public AnonymousClass1() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (optionExpand.this.callback != null) {
                        try {
                            optionExpand.this.callback.usedImage.setAsBitmapAssets(optionExpand.this.v.getContext(), r4);
                            optionExpand.this.callback.updateBackground(true);
                        } catch (Exception e) {
                            e.printStackTrace();
                            Toast.makeText(optionExpand.this.v.getContext(), optionExpand.this.callback.getString(R.string.error_invalid), 0).show();
                        }
                    }
                }
            }

            public AnonymousClass3(preset_ui preset_uiVar, Bitmap bitmap, String str) {
                r2 = preset_uiVar;
                r3 = bitmap;
                r4 = str;
            }

            @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
            public void doInUIThread() {
                View view;
                optionExpand optionexpand = optionExpand.this;
                if (optionexpand.cancelled || (view = optionexpand.v) == null || view.getContext() == null) {
                    return;
                }
                r2.setContent(r3, new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand.2.3.1
                    public AnonymousClass1() {
                    }

                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (optionExpand.this.callback != null) {
                            try {
                                optionExpand.this.callback.usedImage.setAsBitmapAssets(optionExpand.this.v.getContext(), r4);
                                optionExpand.this.callback.updateBackground(true);
                            } catch (Exception e) {
                                e.printStackTrace();
                                Toast.makeText(optionExpand.this.v.getContext(), optionExpand.this.callback.getString(R.string.error_invalid), 0).show();
                            }
                        }
                    }
                });
            }
        }

        /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$2$4 */
        /* loaded from: classes.dex */
        public class AnonymousClass4 implements AsyncJob.OnMainThreadJob {
            public AnonymousClass4() {
            }

            @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
            public void doInUIThread() {
                AnonymousClass2.this.val$presetsHolder.hideProgress();
            }
        }

        public AnonymousClass2(AssetManager assetManager, presets_holder presets_holderVar) {
            this.val$assetManager = assetManager;
            this.val$presetsHolder = presets_holderVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:92:0x0148  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x0156 A[SYNTHETIC] */
        @Override // com.arasthel.asyncjob.AsyncJob.OnBackgroundJob
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void doOnBackground() {
            /*
                Method dump skipped, instructions count: 356
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand.AnonymousClass2.doOnBackground():void");
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$20 */
    /* loaded from: classes.dex */
    public class AnonymousClass20 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$brightness;

        public AnonymousClass20(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setBarValue(0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$200 */
    /* loaded from: classes.dex */
    public class AnonymousClass200 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_toggle val$bgEnableSwitch;
        final /* synthetic */ slider_ui val$bottomVal;
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ slider_ui val$leftVal;
        final /* synthetic */ option_label val$radiusLabel;
        final /* synthetic */ slider_ui val$rightVal;
        final /* synthetic */ slider_ui val$topVal;

        public AnonymousClass200(option_toggle option_toggleVar, unifiedColor_selector unifiedcolor_selector, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, slider_ui slider_uiVar4, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = unifiedcolor_selector;
            r4 = slider_uiVar;
            r5 = slider_uiVar2;
            r6 = slider_uiVar3;
            r7 = slider_uiVar4;
            r8 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().updateBackground(r2.getState(), r3.getFillType(), r3.getCurrColor(), r3.getCurrGradient(), r4.getBarValue(), r5.getBarValue(), r6.getBarValue(), r7.getBarValue(), i);
            r8.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$201 */
    /* loaded from: classes.dex */
    public class AnonymousClass201 implements unifiedColor_selector.onColorChangeListener {
        final /* synthetic */ option_toggle val$bgEnableSwitch;
        final /* synthetic */ slider_ui val$bottomVal;
        final /* synthetic */ slider_ui val$leftVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ slider_ui val$rightVal;
        final /* synthetic */ slider_ui val$topVal;

        public AnonymousClass201(option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, slider_ui slider_uiVar4, slider_ui slider_uiVar5) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = slider_uiVar3;
            r6 = slider_uiVar4;
            r7 = slider_uiVar5;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            optionExpand.this.getSelectedText().updateBackground(r2.getState(), i, i2, gradientFill, r3.getBarValue(), r4.getBarValue(), r5.getBarValue(), r6.getBarValue(), r7.getBarValue());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$202 */
    /* loaded from: classes.dex */
    public class AnonymousClass202 implements Runnable {
        final /* synthetic */ float val$oldBGB;
        final /* synthetic */ int val$oldBGColor;
        final /* synthetic */ boolean val$oldBGEnabled;
        final /* synthetic */ int val$oldBGFillType;
        final /* synthetic */ GradientMaker.GradientFill val$oldBGGradient;
        final /* synthetic */ float val$oldBGL;
        final /* synthetic */ float val$oldBGR;
        final /* synthetic */ int val$oldBGRadius;
        final /* synthetic */ float val$oldBGT;

        public AnonymousClass202(boolean z, int i, int i2, GradientMaker.GradientFill gradientFill, float f, float f2, float f3, float f4, int i3) {
            r2 = z;
            r3 = i;
            r4 = i2;
            r5 = gradientFill;
            r6 = f;
            r7 = f2;
            r8 = f3;
            r9 = f4;
            r10 = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().updateBackground(r2, r3, r4, r5, r6, r7, r8, r9, r10);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$203 */
    /* loaded from: classes.dex */
    public class AnonymousClass203 implements View.OnClickListener {
        final /* synthetic */ textSelector val$selector;

        public AnonymousClass203(textSelector textselector) {
            r2 = textselector;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextComponent selectedText = optionExpand.this.getSelectedText();
            textSelector textselector = r2;
            selectedText.setBold(textselector.selectionStart, textselector.selectionEnd);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$204 */
    /* loaded from: classes.dex */
    public class AnonymousClass204 implements View.OnClickListener {
        final /* synthetic */ textSelector val$selector;

        public AnonymousClass204(textSelector textselector) {
            r2 = textselector;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextComponent selectedText = optionExpand.this.getSelectedText();
            textSelector textselector = r2;
            selectedText.setItalic(textselector.selectionStart, textselector.selectionEnd);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$205 */
    /* loaded from: classes.dex */
    public class AnonymousClass205 implements View.OnClickListener {
        final /* synthetic */ textSelector val$selector;

        public AnonymousClass205(textSelector textselector) {
            r2 = textselector;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextComponent selectedText = optionExpand.this.getSelectedText();
            textSelector textselector = r2;
            selectedText.setUnderline(textselector.selectionStart, textselector.selectionEnd);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$206 */
    /* loaded from: classes.dex */
    public class AnonymousClass206 implements View.OnClickListener {
        final /* synthetic */ textSelector val$selector;

        public AnonymousClass206(textSelector textselector) {
            r2 = textselector;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextComponent selectedText = optionExpand.this.getSelectedText();
            textSelector textselector = r2;
            selectedText.clearStyles(textselector.selectionStart, textselector.selectionEnd);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$207 */
    /* loaded from: classes.dex */
    public class AnonymousClass207 implements Runnable {
        final /* synthetic */ spansIntervals val$oldBolds;
        final /* synthetic */ spansIntervals val$oldItalics;
        final /* synthetic */ spansIntervals val$oldUnder;

        public AnonymousClass207(spansIntervals spansintervals, spansIntervals spansintervals2, spansIntervals spansintervals3) {
            r2 = spansintervals;
            r3 = spansintervals2;
            r4 = spansintervals3;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setBolds(r2);
            optionExpand.this.getSelectedText().setItalics(r3);
            optionExpand.this.getSelectedText().setUnders(r4);
            optionExpand.this.getSelectedText().updateSpans(true);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$208 */
    /* loaded from: classes.dex */
    public class AnonymousClass208 implements BezierPanel.OnBezierPanelAction {
        final /* synthetic */ BezierTools val$tools;

        public AnonymousClass208(BezierTools bezierTools) {
            r2 = bezierTools;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.OnBezierPanelAction
        public void pathChanged(int i, boolean z, boolean z2, boolean z3) {
            r2.updateActionsVisibility(i, z, z2, z3);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.OnBezierPanelAction
        public void selectionChanged(int i) {
            r2.updateFor(i, optionExpand.this.callback.bezierPanel.customBeziers);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.OnBezierPanelAction
        public void updateMode(BezierPanel.BezierMode bezierMode) {
            r2.setMode(bezierMode);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$209 */
    /* loaded from: classes.dex */
    public class AnonymousClass209 implements RadioGroup.OnCheckedChangeListener {
        public AnonymousClass209() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            optionExpand.this.getSelectedText().setBezierMaskIn(i == R.id.in_rButton);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$21 */
    /* loaded from: classes.dex */
    public class AnonymousClass21 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$contrastLabel;

        public AnonymousClass21(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.callback.bg_layout.setContrast(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$210 */
    /* loaded from: classes.dex */
    public class AnonymousClass210 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass210(LinearLayout linearLayout) {
            r2 = linearLayout;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedText().setBezierMaskEnabled(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$211 */
    /* loaded from: classes.dex */
    public class AnonymousClass211 implements Runnable {
        public AnonymousClass211() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RectF boundsRect = optionExpand.this.getSelectedText().getBoundsRect();
            Bundle pathsToBundle = optionExpand.this.callback.bezierPanel.pathsToBundle(false);
            pathsToBundle.putStringArrayList(appStateConstants.BEZIER_CURVE_RECT, commonFuncs.rectFToArr(boundsRect));
            optionExpand.this.getSelectedText().setBezierMaskBundle(pathsToBundle);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$212 */
    /* loaded from: classes.dex */
    public class AnonymousClass212 implements Runnable {
        final /* synthetic */ boolean val$oldMaskEnabled;
        final /* synthetic */ boolean val$oldMaskIn;

        public AnonymousClass212(boolean z, boolean z2) {
            r2 = z;
            r3 = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().bezierMaskEnabled = r2;
            optionExpand.this.getSelectedText().bezierMaskIn = r3;
            optionExpand.this.getSelectedText().setBezierMaskPath(null);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$213 */
    /* loaded from: classes.dex */
    public class AnonymousClass213 implements RadioGroup.OnCheckedChangeListener {
        public AnonymousClass213() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            optionExpand.this.getSelectedText().freezeFullRedraw();
            optionExpand.this.getSelectedText().setSpaceWords(i == R.id.words_rButton);
            int letterSpacing = optionExpand.this.getSelectedText().getLetterSpacing();
            optionExpand.this.getSelectedText().setLetterSpacing(letterSpacing + 1);
            optionExpand.this.getSelectedText().setLetterSpacing(letterSpacing);
            optionExpand.this.getSelectedText().UnFreezeFullRedraw();
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$214 */
    /* loaded from: classes.dex */
    public class AnonymousClass214 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$spacingLabel;

        public AnonymousClass214(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(discreteSeekBar.getProgress());
            if (CustomTextView.useNewLetterSpacing()) {
                optionExpand.this.getSelectedText().setLetterSpacing(discreteSeekBar.getProgress());
            }
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            optionExpand.this.getSelectedText().setLetterSpacing(discreteSeekBar.getProgress());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$215 */
    /* loaded from: classes.dex */
    public class AnonymousClass215 implements Runnable {
        final /* synthetic */ int val$oldSpacing;

        public AnonymousClass215(int i) {
            r2 = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setLetterSpacing(r2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$216 */
    /* loaded from: classes.dex */
    public class AnonymousClass216 implements View.OnClickListener {
        final /* synthetic */ option_label val$spacingLabel;
        final /* synthetic */ slider_ui val$spacingVal;

        public AnonymousClass216(slider_ui slider_uiVar, option_label option_labelVar) {
            r2 = slider_uiVar;
            r3 = option_labelVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setBarValue(0);
            optionExpand.this.getSelectedText().setLetterSpacing(0);
            r3.setValue(0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$217 */
    /* loaded from: classes.dex */
    public class AnonymousClass217 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$spacingLabel;

        public AnonymousClass217(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setLineSpacing(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$218 */
    /* loaded from: classes.dex */
    public class AnonymousClass218 implements Runnable {
        final /* synthetic */ int val$oldSpacing;

        public AnonymousClass218(int i) {
            r2 = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setLineSpacing(r2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$219 */
    /* loaded from: classes.dex */
    public class AnonymousClass219 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$spacingVal;

        public AnonymousClass219(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setBarValue(0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$22 */
    /* loaded from: classes.dex */
    public class AnonymousClass22 implements Runnable {
        final /* synthetic */ int val$oldContrast;

        public AnonymousClass22(int i) {
            r2 = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.callback.bg_layout.setContrast(r2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$220 */
    /* loaded from: classes.dex */
    public class AnonymousClass220 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$curveLabel;

        public AnonymousClass220(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            int i2 = i * 5;
            optionExpand.this.getSelectedText().setCurve(optionExpand.this.toNum(i2, 180));
            r2.setValue(i2);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$221 */
    /* loaded from: classes.dex */
    public class AnonymousClass221 implements Runnable {
        final /* synthetic */ int val$oldCurve;

        public AnonymousClass221(int i) {
            r2 = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setCurve(r2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$222 */
    /* loaded from: classes.dex */
    public class AnonymousClass222 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$curveVal;

        public AnonymousClass222(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setBarValue(0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$223 */
    /* loaded from: classes.dex */
    public class AnonymousClass223 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass223(LinearLayout linearLayout) {
            r2 = linearLayout;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedText().setShadow_3d_enabled(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$224 */
    /* loaded from: classes.dex */
    public class AnonymousClass224 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$transparencyLabel;

        public AnonymousClass224(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setShadow_3d_transparency(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$225 */
    /* loaded from: classes.dex */
    public class AnonymousClass225 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$radiusLabel;

        public AnonymousClass225(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setShadow_3d_radius(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$226 */
    /* loaded from: classes.dex */
    public class AnonymousClass226 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$expandLabel;

        public AnonymousClass226(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setShadow_3d_expand(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$227 */
    /* loaded from: classes.dex */
    public class AnonymousClass227 implements unifiedColor_selector.onColorChangeListener {
        public AnonymousClass227() {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            optionExpand.this.getSelectedText().setShadow_3d_color(i2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$228 */
    /* loaded from: classes.dex */
    public class AnonymousClass228 implements Runnable {
        final /* synthetic */ int val$oldShadow3dColor;
        final /* synthetic */ boolean val$oldShadow3dEnabled;
        final /* synthetic */ int val$oldShadow3dExpand;
        final /* synthetic */ int val$oldShadow3dRadius;
        final /* synthetic */ int val$oldShadow3dTransparency;

        public AnonymousClass228(boolean z, int i, int i2, int i3, int i4) {
            r2 = z;
            r3 = i;
            r4 = i2;
            r5 = i3;
            r6 = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setShadow_3d_enabled(r2);
            optionExpand.this.getSelectedText().setShadow_3d_color(r3);
            optionExpand.this.getSelectedText().setShadow_3d_transparency(r4);
            optionExpand.this.getSelectedText().setShadow_3d_radius(r5);
            optionExpand.this.getSelectedText().setShadow_3d_expand(r6);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$229 */
    /* loaded from: classes.dex */
    public class AnonymousClass229 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ option_toggle val$glow_switch;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass229(LinearLayout linearLayout, option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3) {
            r2 = linearLayout;
            r3 = option_toggleVar;
            r4 = slider_uiVar;
            r5 = slider_uiVar2;
            r6 = slider_uiVar3;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedText().setOuterShadow(z, r3.getState(), r4.getBarValue(), r5.getBarValue(), r6.getBarValue(), optionExpand.this.getSelectedText().getOuterShadowColor());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$23 */
    /* loaded from: classes.dex */
    public class AnonymousClass23 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$contrast;

        public AnonymousClass23(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setBarValue(0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$230 */
    /* loaded from: classes.dex */
    public class AnonymousClass230 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass230(option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = slider_uiVar3;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            optionExpand.this.getSelectedText().setOuterShadow(r2.getState(), z, r3.getBarValue(), r4.getBarValue(), r5.getBarValue(), optionExpand.this.getSelectedText().getOuterShadowColor());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$231 */
    /* loaded from: classes.dex */
    public class AnonymousClass231 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ option_label val$opacityLabel;

        public AnonymousClass231(option_label option_labelVar, unifiedColor_selector unifiedcolor_selector) {
            r2 = option_labelVar;
            r3 = unifiedcolor_selector;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
            if (z) {
                int currColor = r3.getCurrColor();
                optionExpand.this.getSelectedText().setOuterShadowColor(Color.argb(optionExpand.this.toNum(i, 255), Color.red(currColor), Color.green(currColor), Color.blue(currColor)));
            }
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$232 */
    /* loaded from: classes.dex */
    public class AnonymousClass232 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ option_toggle val$glow_switch;
        final /* synthetic */ option_label val$radiusLabel;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass232(option_toggle option_toggleVar, option_toggle option_toggleVar2, slider_ui slider_uiVar, slider_ui slider_uiVar2, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = option_toggleVar2;
            r4 = slider_uiVar;
            r5 = slider_uiVar2;
            r6 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setOuterShadow(r2.getState(), r3.getState(), i, r4.getBarValue(), r5.getBarValue(), optionExpand.this.getSelectedText().getOuterShadowColor());
            r6.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$233 */
    /* loaded from: classes.dex */
    public class AnonymousClass233 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$dxLabel;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ option_toggle val$glow_switch;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass233(option_toggle option_toggleVar, option_toggle option_toggleVar2, slider_ui slider_uiVar, slider_ui slider_uiVar2, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = option_toggleVar2;
            r4 = slider_uiVar;
            r5 = slider_uiVar2;
            r6 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setOuterShadow(r2.getState(), r3.getState(), r4.getBarValue(), i, r5.getBarValue(), optionExpand.this.getSelectedText().getOuterShadowColor());
            r6.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$234 */
    /* loaded from: classes.dex */
    public class AnonymousClass234 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ option_label val$dyLabel;
        final /* synthetic */ option_toggle val$glow_switch;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass234(option_toggle option_toggleVar, option_toggle option_toggleVar2, slider_ui slider_uiVar, slider_ui slider_uiVar2, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = option_toggleVar2;
            r4 = slider_uiVar;
            r5 = slider_uiVar2;
            r6 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setOuterShadow(r2.getState(), r3.getState(), r4.getBarValue(), r5.getBarValue(), i, optionExpand.this.getSelectedText().getOuterShadowColor());
            r6.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$235 */
    /* loaded from: classes.dex */
    public class AnonymousClass235 implements unifiedColor_selector.onColorChangeListener {
        final /* synthetic */ slider_ui val$opacityVal;

        public AnonymousClass235(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            r2.setBarValue(optionExpand.this.toPercent(Color.alpha(i2), 255));
            optionExpand.this.getSelectedText().setOuterShadowColor(i2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$236 */
    /* loaded from: classes.dex */
    public class AnonymousClass236 implements Runnable {
        final /* synthetic */ boolean val$oldOuterGlowEnabled;
        final /* synthetic */ int val$oldShadowColor;
        final /* synthetic */ int val$oldShadowDx;
        final /* synthetic */ int val$oldShadowDy;
        final /* synthetic */ boolean val$oldShadowEnabled;
        final /* synthetic */ int val$oldShadowRadius;

        public AnonymousClass236(boolean z, boolean z2, int i, int i2, int i3, int i4) {
            r2 = z;
            r3 = z2;
            r4 = i;
            r5 = i2;
            r6 = i3;
            r7 = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setOuterShadow(r2, r3, r4, r5, r6, r7);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$237 */
    /* loaded from: classes.dex */
    public class AnonymousClass237 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass237(LinearLayout linearLayout) {
            r2 = linearLayout;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedText().set3dEnabled(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$238 */
    /* loaded from: classes.dex */
    public class AnonymousClass238 implements CompoundButton.OnCheckedChangeListener {
        public AnonymousClass238() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            optionExpand.this.getSelectedText().set3dDepth(optionExpand.this.getSelectedText().getThreeDDepth(), optionExpand.this.getSelectedText().getThreeDDepthDarken(), optionExpand.this.getSelectedText().getThreeDQuality(), z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$239 */
    /* loaded from: classes.dex */
    public class AnonymousClass239 implements SeekArc.OnSeekArcChangeListener {
        final /* synthetic */ option_label val$obliqueAngleLabel;

        public AnonymousClass239(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onProgressChanged(SeekArc seekArc, int i, boolean z) {
            optionExpand.this.getSelectedText().set3dObliqueAngle(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onStartTrackingTouch(SeekArc seekArc) {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onStopTrackingTouch(SeekArc seekArc) {
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$24 */
    /* loaded from: classes.dex */
    public class AnonymousClass24 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$saturationLabel;

        public AnonymousClass24(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.callback.bg_layout.setSaturation(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$240 */
    /* loaded from: classes.dex */
    public class AnonymousClass240 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel_lighting;

        public AnonymousClass240(LinearLayout linearLayout) {
            r2 = linearLayout;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedText().set3dLighting(z, optionExpand.this.getSelectedText().getEmbossLightAngle(), optionExpand.this.getSelectedText().getThreeDLightingIntensity(), optionExpand.this.getSelectedText().getThreeDLightingShadow(), optionExpand.this.getSelectedText().getThreeDLightingSpecularHardness());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$241 */
    /* loaded from: classes.dex */
    public class AnonymousClass241 implements SeekArc.OnSeekArcChangeListener {
        final /* synthetic */ option_label val$lightAngleLabel;

        public AnonymousClass241(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onProgressChanged(SeekArc seekArc, int i, boolean z) {
            optionExpand.this.getSelectedText().setEmboss(optionExpand.this.getSelectedText().isEmbossEnabled(), i, optionExpand.this.getSelectedText().getEmbossIntensity(), optionExpand.this.getSelectedText().getEmbossAmbient(), optionExpand.this.getSelectedText().getEmbossHardness(), optionExpand.this.getSelectedText().getEmbossBevel());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onStartTrackingTouch(SeekArc seekArc) {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onStopTrackingTouch(SeekArc seekArc) {
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$242 */
    /* loaded from: classes.dex */
    public class AnonymousClass242 implements RadioGroup.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel_nonOblique;
        final /* synthetic */ LinearLayout val$toggleablePanel_oblique;

        public AnonymousClass242(LinearLayout linearLayout, LinearLayout linearLayout2) {
            r2 = linearLayout;
            r3 = linearLayout2;
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            if (i == R.id.oblique_rButton) {
                optionExpand.this.getSelectedText().set3dViewType(3);
                r2.setVisibility(8);
                r3.setVisibility(0);
            } else {
                if (i != R.id.perspective_rButton) {
                    return;
                }
                optionExpand.this.getSelectedText().set3dViewType(1);
                r2.setVisibility(0);
                r3.setVisibility(8);
            }
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$243 */
    /* loaded from: classes.dex */
    public class AnonymousClass243 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$depthLabel;
        final /* synthetic */ int val$max3dDepthOblique;
        final /* synthetic */ int val$max3dDepthPerspective;
        final /* synthetic */ int val$old3dDepthFillType;

        public AnonymousClass243(int i, int i2, int i3, option_label option_labelVar) {
            r2 = i;
            r3 = i2;
            r4 = i3;
            r5 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().set3dDepth(optionExpand.this.toNum(i, r2 == 3 ? r3 : r4), optionExpand.this.getSelectedText().getThreeDDepthDarken(), optionExpand.this.getSelectedText().getThreeDQuality(), optionExpand.this.getSelectedText().isThreeDStokeInclude());
            r5.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$244 */
    /* loaded from: classes.dex */
    public class AnonymousClass244 implements unifiedColor_selector.onColorChangeListener {
        final /* synthetic */ unifiedColor_selector val$depthColor;

        public AnonymousClass244(unifiedColor_selector unifiedcolor_selector) {
            r2 = unifiedcolor_selector;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            optionExpand.this.getSelectedText().set3dDepthColor(i, i2, gradientFill, r2.isAutomatic());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$245 */
    /* loaded from: classes.dex */
    public class AnonymousClass245 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$depthDarkenLabel;

        public AnonymousClass245(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().set3dDepth(optionExpand.this.getSelectedText().getThreeDDepth(), i, optionExpand.this.getSelectedText().getThreeDQuality(), optionExpand.this.getSelectedText().isThreeDStokeInclude());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$246 */
    /* loaded from: classes.dex */
    public class AnonymousClass246 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$xAxisLabel;

        public AnonymousClass246(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().rotate3d(i, optionExpand.this.getSelectedText().getTextRotationY());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$247 */
    /* loaded from: classes.dex */
    public class AnonymousClass247 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$yAxisLabel;

        public AnonymousClass247(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().rotate3d(optionExpand.this.getSelectedText().getTextRotationX(), i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$248 */
    /* loaded from: classes.dex */
    public class AnonymousClass248 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$zAxisLabel;

        public AnonymousClass248(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().rotateText(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$249 */
    /* loaded from: classes.dex */
    public class AnonymousClass249 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$lightingIntensityLabel;

        public AnonymousClass249(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().set3dLighting(optionExpand.this.getSelectedText().isThreeDLightingEnabled(), optionExpand.this.getSelectedText().getEmbossLightAngle(), i, optionExpand.this.getSelectedText().getThreeDLightingShadow(), optionExpand.this.getSelectedText().getThreeDLightingSpecularHardness());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$25 */
    /* loaded from: classes.dex */
    public class AnonymousClass25 implements Runnable {
        final /* synthetic */ int val$oldSaturation;

        public AnonymousClass25(int i) {
            r2 = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.callback.bg_layout.setSaturation(r2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$250 */
    /* loaded from: classes.dex */
    public class AnonymousClass250 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$lightingShadowLabel;

        public AnonymousClass250(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().set3dLighting(optionExpand.this.getSelectedText().isThreeDLightingEnabled(), optionExpand.this.getSelectedText().getEmbossLightAngle(), optionExpand.this.getSelectedText().getThreeDLightingIntensity(), i, optionExpand.this.getSelectedText().getThreeDLightingSpecularHardness());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$251 */
    /* loaded from: classes.dex */
    public class AnonymousClass251 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$lightingSpecularLabel;

        public AnonymousClass251(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().set3dLighting(optionExpand.this.getSelectedText().isThreeDLightingEnabled(), optionExpand.this.getSelectedText().getEmbossLightAngle(), optionExpand.this.getSelectedText().getThreeDLightingIntensity(), optionExpand.this.getSelectedText().getThreeDLightingShadow(), i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$252 */
    /* loaded from: classes.dex */
    public class AnonymousClass252 implements Runnable {
        final /* synthetic */ int val$old3dDepth;
        final /* synthetic */ boolean val$old3dDepthColorAutomatic;
        final /* synthetic */ int val$old3dDepthColorFill;
        final /* synthetic */ int val$old3dDepthDarken;
        final /* synthetic */ int val$old3dDepthFillType;
        final /* synthetic */ GradientMaker.GradientFill val$old3dDepthGradientFill;
        final /* synthetic */ boolean val$old3dEnabled;
        final /* synthetic */ boolean val$old3dStokeInclude;
        final /* synthetic */ int val$old3dViewType;
        final /* synthetic */ int val$old3dXRot;
        final /* synthetic */ int val$old3dYRot;
        final /* synthetic */ int val$old3dZRot;
        final /* synthetic */ int val$oldLightAngle;
        final /* synthetic */ boolean val$oldLightingEnabled;
        final /* synthetic */ int val$oldLightingIntensity;
        final /* synthetic */ int val$oldLightingShadow;
        final /* synthetic */ int val$oldLightingSpecularHardness;
        final /* synthetic */ int val$oldObliqueAngle;

        public AnonymousClass252(boolean z, int i, int i2, int i3, boolean z2, int i4, int i5, GradientMaker.GradientFill gradientFill, boolean z3, boolean z4, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
            r4 = z;
            r5 = i;
            r6 = i2;
            r7 = i3;
            r8 = z2;
            r9 = i4;
            r10 = i5;
            r11 = gradientFill;
            r12 = z3;
            r13 = z4;
            r14 = i6;
            r15 = i7;
            r16 = i8;
            r17 = i9;
            r18 = i10;
            r19 = i11;
            r20 = i12;
            r21 = i13;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().freezeFullRedraw();
            optionExpand.this.getSelectedText().set3dEnabled(r4);
            optionExpand.this.getSelectedText().set3dViewType(r5);
            optionExpand.this.getSelectedText().set3dDepth(r6, r7, optionExpand.this.getSelectedText().getThreeDQuality(), r8);
            optionExpand.this.getSelectedText().set3dDepthColor(r9, r10, r11, r12);
            optionExpand.this.getSelectedText().set3dLighting(r13, r14, r15, r16, r17);
            optionExpand.this.getSelectedText().set3dObliqueAngle(r18);
            optionExpand.this.getSelectedText().rotate3d(r19, r20);
            optionExpand.this.getSelectedText().UnFreezeFullRedraw();
            optionExpand.this.getSelectedText().rotateText(r21);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$253 */
    /* loaded from: classes.dex */
    public class AnonymousClass253 implements CompoundButton.OnCheckedChangeListener {
        public AnonymousClass253() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            optionExpand.this.getSelectedText().setPerspectiveEnabled(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$254 */
    /* loaded from: classes.dex */
    public class AnonymousClass254 implements View.OnClickListener {
        public AnonymousClass254() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedText().restorePerspectivePoints();
            optionExpand.this.callback.perspectiveTool.setHandles(optionExpand.this.getSelectedText().perspectivePoint1, optionExpand.this.getSelectedText().perspectivePoint2, optionExpand.this.getSelectedText().perspectivePoint3, optionExpand.this.getSelectedText().perspectivePoint4);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$255 */
    /* loaded from: classes.dex */
    public class AnonymousClass255 implements Runnable {
        final /* synthetic */ boolean val$oldPerspectiveEnabled;
        final /* synthetic */ PointF val$oldPoint1;
        final /* synthetic */ PointF val$oldPoint2;
        final /* synthetic */ PointF val$oldPoint3;
        final /* synthetic */ PointF val$oldPoint4;

        public AnonymousClass255(boolean z, PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
            r2 = z;
            r3 = pointF;
            r4 = pointF2;
            r5 = pointF3;
            r6 = pointF4;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setPerspectiveEnabled(r2);
            optionExpand.this.getSelectedText().setPerspectivePoints(r3, r4, r5, r6);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$256 */
    /* loaded from: classes.dex */
    public class AnonymousClass256 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass256(LinearLayout linearLayout) {
            r2 = linearLayout;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedText().setEmboss(z, optionExpand.this.getSelectedText().getEmbossLightAngle(), optionExpand.this.getSelectedText().getEmbossIntensity(), optionExpand.this.getSelectedText().getEmbossAmbient(), optionExpand.this.getSelectedText().getEmbossHardness(), optionExpand.this.getSelectedText().getEmbossBevel());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$257 */
    /* loaded from: classes.dex */
    public class AnonymousClass257 implements SeekArc.OnSeekArcChangeListener {
        final /* synthetic */ option_label val$lightAngleLabel;

        public AnonymousClass257(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onProgressChanged(SeekArc seekArc, int i, boolean z) {
            optionExpand.this.getSelectedText().setEmboss(optionExpand.this.getSelectedText().isEmbossEnabled(), i, optionExpand.this.getSelectedText().getEmbossIntensity(), optionExpand.this.getSelectedText().getEmbossAmbient(), optionExpand.this.getSelectedText().getEmbossHardness(), optionExpand.this.getSelectedText().getEmbossBevel());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onStartTrackingTouch(SeekArc seekArc) {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onStopTrackingTouch(SeekArc seekArc) {
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$258 */
    /* loaded from: classes.dex */
    public class AnonymousClass258 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$intensityLabel;

        public AnonymousClass258(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setEmboss(optionExpand.this.getSelectedText().isEmbossEnabled(), optionExpand.this.getSelectedText().getEmbossLightAngle(), i, optionExpand.this.getSelectedText().getEmbossAmbient(), optionExpand.this.getSelectedText().getEmbossHardness(), optionExpand.this.getSelectedText().getEmbossBevel());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$259 */
    /* loaded from: classes.dex */
    public class AnonymousClass259 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$ambientLabel;

        public AnonymousClass259(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setEmboss(optionExpand.this.getSelectedText().isEmbossEnabled(), optionExpand.this.getSelectedText().getEmbossLightAngle(), optionExpand.this.getSelectedText().getEmbossIntensity(), i, optionExpand.this.getSelectedText().getEmbossHardness(), optionExpand.this.getSelectedText().getEmbossBevel());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$26 */
    /* loaded from: classes.dex */
    public class AnonymousClass26 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$saturation;

        public AnonymousClass26(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setBarValue(0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$260 */
    /* loaded from: classes.dex */
    public class AnonymousClass260 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$specularLabel;

        public AnonymousClass260(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setEmboss(optionExpand.this.getSelectedText().isEmbossEnabled(), optionExpand.this.getSelectedText().getEmbossLightAngle(), optionExpand.this.getSelectedText().getEmbossIntensity(), optionExpand.this.getSelectedText().getEmbossAmbient(), i, optionExpand.this.getSelectedText().getEmbossBevel());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$261 */
    /* loaded from: classes.dex */
    public class AnonymousClass261 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$bevelLabel;

        public AnonymousClass261(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setEmboss(optionExpand.this.getSelectedText().isEmbossEnabled(), optionExpand.this.getSelectedText().getEmbossLightAngle(), optionExpand.this.getSelectedText().getEmbossIntensity(), optionExpand.this.getSelectedText().getEmbossAmbient(), optionExpand.this.getSelectedText().getEmbossHardness(), i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$262 */
    /* loaded from: classes.dex */
    public class AnonymousClass262 implements CompoundButton.OnCheckedChangeListener {
        public AnonymousClass262() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            optionExpand.this.getSelectedText().setEmbossIncludeStroke(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$263 */
    /* loaded from: classes.dex */
    public class AnonymousClass263 implements Runnable {
        final /* synthetic */ int val$OldEmbossAmbient;
        final /* synthetic */ int val$OldEmbossBevel;
        final /* synthetic */ Boolean val$OldEmbossEnabled;
        final /* synthetic */ int val$OldEmbossHardness;
        final /* synthetic */ boolean val$OldEmbossIncludeStroke;
        final /* synthetic */ int val$OldEmbossIntensity;
        final /* synthetic */ int val$OldEmbossLightAngle;

        public AnonymousClass263(Boolean bool, int i, int i2, int i3, int i4, int i5, boolean z) {
            r2 = bool;
            r3 = i;
            r4 = i2;
            r5 = i3;
            r6 = i4;
            r7 = i5;
            r8 = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setEmboss(r2.booleanValue(), r3, r4, r5, r6, r7);
            optionExpand.this.getSelectedText().setEmbossIncludeStroke(r8);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$264 */
    /* loaded from: classes.dex */
    public class AnonymousClass264 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass264(LinearLayout linearLayout, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, unifiedColor_selector unifiedcolor_selector) {
            r2 = linearLayout;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = slider_uiVar3;
            r6 = unifiedcolor_selector;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedText().setInnerShadow(z, r3.getBarValue(), r4.getBarValue(), r5.getBarValue(), r6.getCurrColor());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$265 */
    /* loaded from: classes.dex */
    public class AnonymousClass265 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ option_label val$radiusLabel;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass265(option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, unifiedColor_selector unifiedcolor_selector, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = unifiedcolor_selector;
            r6 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setInnerShadow(r2.getState(), i, r3.getBarValue(), r4.getBarValue(), r5.getCurrColor());
            r6.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$266 */
    /* loaded from: classes.dex */
    public class AnonymousClass266 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ option_label val$dxLabel;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass266(option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, unifiedColor_selector unifiedcolor_selector, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = unifiedcolor_selector;
            r6 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setInnerShadow(r2.getState(), r3.getBarValue(), i, r4.getBarValue(), r5.getCurrColor());
            r6.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$267 */
    /* loaded from: classes.dex */
    public class AnonymousClass267 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ option_label val$dyLabel;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass267(option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, unifiedColor_selector unifiedcolor_selector, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = unifiedcolor_selector;
            r6 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setInnerShadow(r2.getState(), r3.getBarValue(), r4.getBarValue(), i, r5.getCurrColor());
            r6.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$268 */
    /* loaded from: classes.dex */
    public class AnonymousClass268 implements unifiedColor_selector.onColorChangeListener {
        final /* synthetic */ slider_ui val$dxVal;
        final /* synthetic */ slider_ui val$dyVal;
        final /* synthetic */ slider_ui val$radiusVal;
        final /* synthetic */ option_toggle val$shadowSwitch;

        public AnonymousClass268(option_toggle option_toggleVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
            r4 = slider_uiVar2;
            r5 = slider_uiVar3;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            optionExpand.this.getSelectedText().setInnerShadow(r2.getState(), r3.getBarValue(), r4.getBarValue(), r5.getBarValue(), i2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$269 */
    /* loaded from: classes.dex */
    public class AnonymousClass269 implements Runnable {
        final /* synthetic */ int val$oldInnerShadowColor;
        final /* synthetic */ int val$oldInnerShadowDx;
        final /* synthetic */ int val$oldInnerShadowDy;
        final /* synthetic */ boolean val$oldInnerShadowEnabled;
        final /* synthetic */ int val$oldInnerShadowRadius;

        public AnonymousClass269(boolean z, int i, int i2, int i3, int i4) {
            r2 = z;
            r3 = i;
            r4 = i2;
            r5 = i3;
            r6 = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setInnerShadow(r2, r3, r4, r5, r6);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$27 */
    /* loaded from: classes.dex */
    public class AnonymousClass27 implements Runnable {
        final /* synthetic */ int val$oldHue;

        public AnonymousClass27(int i) {
            r2 = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.callback.bg_layout.setHue(r2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$270 */
    /* loaded from: classes.dex */
    public class AnonymousClass270 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ LinearLayout val$toggleablePanel;
        final /* synthetic */ slider_ui val$widthVal;

        public AnonymousClass270(LinearLayout linearLayout, slider_ui slider_uiVar, unifiedColor_selector unifiedcolor_selector) {
            r2 = linearLayout;
            r3 = slider_uiVar;
            r4 = unifiedcolor_selector;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedText().setStroke(z, r3.getBarValue(), r4.getFillType(), r4.getCurrColor(), r4.getCurrGradient());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$271 */
    /* loaded from: classes.dex */
    public class AnonymousClass271 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ option_toggle val$strokeSwitch;
        final /* synthetic */ option_label val$widthLabel;

        public AnonymousClass271(option_toggle option_toggleVar, unifiedColor_selector unifiedcolor_selector, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = unifiedcolor_selector;
            r4 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setStroke(r2.getState(), i, r3.getFillType(), r3.getCurrColor(), r3.getCurrGradient());
            r4.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$272 */
    /* loaded from: classes.dex */
    public class AnonymousClass272 implements unifiedColor_selector.onColorChangeListener {
        final /* synthetic */ option_toggle val$strokeSwitch;
        final /* synthetic */ slider_ui val$widthVal;

        public AnonymousClass272(option_toggle option_toggleVar, slider_ui slider_uiVar) {
            r2 = option_toggleVar;
            r3 = slider_uiVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            optionExpand.this.getSelectedText().setStroke(r2.getState(), r3.getBarValue(), i, i2, gradientFill);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$273 */
    /* loaded from: classes.dex */
    public class AnonymousClass273 implements Runnable {
        final /* synthetic */ int val$oldStrokeColor;
        final /* synthetic */ boolean val$oldStrokeEnabled;
        final /* synthetic */ int val$oldStrokeFillType;
        final /* synthetic */ GradientMaker.GradientFill val$oldStrokeGradient;
        final /* synthetic */ int val$oldStrokeWidth;

        public AnonymousClass273(boolean z, int i, int i2, int i3, GradientMaker.GradientFill gradientFill) {
            r2 = z;
            r3 = i;
            r4 = i2;
            r5 = i3;
            r6 = gradientFill;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setStroke(r2, r3, r4, r5, r6);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$274 */
    /* loaded from: classes.dex */
    public class AnonymousClass274 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$rotLabelX;
        final /* synthetic */ slider_ui val$rotValX;
        final /* synthetic */ slider_ui val$rotValY;

        public AnonymousClass274(slider_ui slider_uiVar, slider_ui slider_uiVar2, option_label option_labelVar) {
            r2 = slider_uiVar;
            r3 = slider_uiVar2;
            r4 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().rotate3d(r2.getBarValue(), r3.getBarValue());
            r4.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$275 */
    /* loaded from: classes.dex */
    public class AnonymousClass275 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$rotLabelY;
        final /* synthetic */ slider_ui val$rotValX;
        final /* synthetic */ slider_ui val$rotValY;

        public AnonymousClass275(slider_ui slider_uiVar, slider_ui slider_uiVar2, option_label option_labelVar) {
            r2 = slider_uiVar;
            r3 = slider_uiVar2;
            r4 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().rotate3d(r2.getBarValue(), r3.getBarValue());
            r4.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$276 */
    /* loaded from: classes.dex */
    public class AnonymousClass276 implements Runnable {
        final /* synthetic */ int val$originalValX;
        final /* synthetic */ int val$originalValY;

        public AnonymousClass276(int i, int i2) {
            r2 = i;
            r3 = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().rotate3d(r2, r3);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$277 */
    /* loaded from: classes.dex */
    public class AnonymousClass277 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$rotValX;
        final /* synthetic */ slider_ui val$rotValY;

        public AnonymousClass277(slider_ui slider_uiVar, slider_ui slider_uiVar2) {
            r2 = slider_uiVar;
            r3 = slider_uiVar2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setBarValue(0);
            r3.setBarValue(0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$278 */
    /* loaded from: classes.dex */
    public class AnonymousClass278 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ slider_ui val$offsetVal;
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass278(LinearLayout linearLayout, slider_ui slider_uiVar) {
            r2 = linearLayout;
            r3 = slider_uiVar;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedText().setReflection(z, r3.getBarValue());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$279 */
    /* loaded from: classes.dex */
    public class AnonymousClass279 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$offsetLabel;
        final /* synthetic */ option_toggle val$reflectionSwitch;

        public AnonymousClass279(option_toggle option_toggleVar, option_label option_labelVar) {
            r2 = option_toggleVar;
            r3 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedText().setReflection(r2.getState(), i);
            r3.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$28 */
    /* loaded from: classes.dex */
    public class AnonymousClass28 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$hue;

        public AnonymousClass28(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r2.setBarValue(0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$280 */
    /* loaded from: classes.dex */
    public class AnonymousClass280 implements Runnable {
        final /* synthetic */ int val$oldReflectionDy;
        final /* synthetic */ boolean val$oldReflectionEnabled;

        public AnonymousClass280(boolean z, int i) {
            r2 = z;
            r3 = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedText().setReflection(r2, r3);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$29 */
    /* loaded from: classes.dex */
    public class AnonymousClass29 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass29(LinearLayout linearLayout) {
            r2 = linearLayout;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.callback.vignetteEffect.setVisibility(z ? 0 : 8);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$3 */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements View.OnClickListener {
        final /* synthetic */ int val$message;

        /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$3$1 */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements DialogInterface.OnClickListener {
            public AnonymousClass1() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AnonymousClass3.this.continueCancel();
            }
        }

        public AnonymousClass3(int i) {
            this.val$message = i;
        }

        public void continueCancel() {
            Runnable runnable = optionExpand.this.cancelAction;
            if (runnable != null) {
                runnable.run();
            }
            if (optionExpand.this.callback != null) {
                optionExpand.this.callback.undoAddLastHistory();
                optionExpand.this.callback.doneEditing();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.val$message >= 0) {
                continueCancel();
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(optionExpand.this.v.getContext());
            builder.setTitle(optionExpand.this.getString(R.string.operation_confirmation));
            builder.setMessage(R.string.confirm_stop_op);
            builder.setPositiveButton(optionExpand.this.v.getContext().getString(android.R.string.yes), new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand.3.1
                public AnonymousClass1() {
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    AnonymousClass3.this.continueCancel();
                }
            });
            builder.setNegativeButton(optionExpand.this.v.getContext().getString(android.R.string.no), (DialogInterface.OnClickListener) null);
            builder.show();
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$30 */
    /* loaded from: classes.dex */
    public class AnonymousClass30 implements unifiedColor_selector.onColorChangeListener {
        public AnonymousClass30() {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            optionExpand.this.callback.vignetteEffect.setVignetteColor(i2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$31 */
    /* loaded from: classes.dex */
    public class AnonymousClass31 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$alphaLabel;

        public AnonymousClass31(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
            optionExpand.this.callback.vignetteEffect.setVignetteAlpha(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$32 */
    /* loaded from: classes.dex */
    public class AnonymousClass32 implements Runnable {
        final /* synthetic */ int val$oldAlpha;
        final /* synthetic */ int val$oldColor;
        final /* synthetic */ int val$oldEnabled;

        public AnonymousClass32(int i, int i2, int i3) {
            r2 = i;
            r3 = i2;
            r4 = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.callback.vignetteEffect.setVignetteAlpha(r2);
            optionExpand.this.callback.vignetteEffect.setVignetteColor(r3);
            optionExpand.this.callback.vignetteEffect.setVisibility(r4);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$33 */
    /* loaded from: classes.dex */
    public class AnonymousClass33 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass33(LinearLayout linearLayout) {
            r2 = linearLayout;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.callback.quoteEffect.setVisibility(z ? 0 : 8);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$34 */
    /* loaded from: classes.dex */
    public class AnonymousClass34 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$alphaLabel;

        public AnonymousClass34(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
            optionExpand.this.callback.quoteEffect.setEffectAlpha(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$35 */
    /* loaded from: classes.dex */
    public class AnonymousClass35 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$repeatLabel;

        public AnonymousClass35(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
            optionExpand.this.callback.quoteEffect.setNumberToRepeat(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$36 */
    /* loaded from: classes.dex */
    public class AnonymousClass36 implements Runnable {
        final /* synthetic */ int val$oldAlpha;
        final /* synthetic */ int val$oldEnabled;
        final /* synthetic */ int val$oldRepeat;

        public AnonymousClass36(int i, int i2, int i3) {
            r2 = i;
            r3 = i2;
            r4 = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.callback.quoteEffect.setEffectAlpha(r2);
            optionExpand.this.callback.quoteEffect.setNumberToRepeat(r3);
            optionExpand.this.callback.quoteEffect.setVisibility(r4);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$37 */
    /* loaded from: classes.dex */
    public class AnonymousClass37 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass37(LinearLayout linearLayout) {
            r2 = linearLayout;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.callback.stripesEffect.setVisibility(z ? 0 : 8);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$38 */
    /* loaded from: classes.dex */
    public class AnonymousClass38 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$alphaLabel;

        public AnonymousClass38(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
            optionExpand.this.callback.stripesEffect.setEffectAlpha(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$39 */
    /* loaded from: classes.dex */
    public class AnonymousClass39 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$repeatLabel;

        public AnonymousClass39(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
            optionExpand.this.callback.stripesEffect.setNumberToRepeat(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$4 */
    /* loaded from: classes.dex */
    public class AnonymousClass4 implements View.OnClickListener {
        public AnonymousClass4() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Runnable runnable = optionExpand.this.positiveAction;
            if (runnable != null) {
                runnable.run();
            }
            if (optionExpand.this.callback != null) {
                optionExpand.this.callback.doneEditing();
            }
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$40 */
    /* loaded from: classes.dex */
    public class AnonymousClass40 implements Runnable {
        final /* synthetic */ int val$oldAlpha;
        final /* synthetic */ int val$oldEnabled;
        final /* synthetic */ int val$oldRepeat;

        public AnonymousClass40(int i, int i2, int i3) {
            r2 = i;
            r3 = i2;
            r4 = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.callback.stripesEffect.setEffectAlpha(r2);
            optionExpand.this.callback.stripesEffect.setNumberToRepeat(r3);
            optionExpand.this.callback.stripesEffect.setVisibility(r4);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$41 */
    /* loaded from: classes.dex */
    public class AnonymousClass41 implements PerspectiveTool.PerspectiveToolInterface {
        public AnonymousClass41() {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.PerspectiveTool.PerspectiveToolInterface
        public void handlesDragged(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
            optionExpand.this.getSelectedShape().setPerspectivePoints(pointF, pointF2, pointF3, pointF4);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$42 */
    /* loaded from: classes.dex */
    public class AnonymousClass42 implements CompoundButton.OnCheckedChangeListener {
        public AnonymousClass42() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            optionExpand.this.getSelectedShape().setPerspectiveEnabled(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$43 */
    /* loaded from: classes.dex */
    public class AnonymousClass43 implements View.OnClickListener {
        public AnonymousClass43() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedShape().restorePerspectivePoints();
            optionExpand.this.callback.perspectiveTool.setHandles(optionExpand.this.getSelectedShape().perspectivePoint1, optionExpand.this.getSelectedShape().perspectivePoint2, optionExpand.this.getSelectedShape().perspectivePoint3, optionExpand.this.getSelectedShape().perspectivePoint4);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$44 */
    /* loaded from: classes.dex */
    public class AnonymousClass44 implements Runnable {
        final /* synthetic */ boolean val$oldPerspectiveEnabled;
        final /* synthetic */ PointF val$oldPoint1;
        final /* synthetic */ PointF val$oldPoint2;
        final /* synthetic */ PointF val$oldPoint3;
        final /* synthetic */ PointF val$oldPoint4;

        public AnonymousClass44(boolean z, PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
            r2 = z;
            r3 = pointF;
            r4 = pointF2;
            r5 = pointF3;
            r6 = pointF4;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().setPerspectiveEnabled(r2);
            optionExpand.this.getSelectedShape().setPerspectivePoints(r3, r4, r5, r6);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$45 */
    /* loaded from: classes.dex */
    public class AnonymousClass45 implements ArrowPanel.OnArrowListener {
        final /* synthetic */ slider_ui val$beginArrowSize;
        final /* synthetic */ option_label val$beginArrowSizeLabel;
        final /* synthetic */ slider_ui val$endArrowSize;
        final /* synthetic */ option_label val$endArrowSizeLabel;

        public AnonymousClass45(option_label option_labelVar, slider_ui slider_uiVar, option_label option_labelVar2, slider_ui slider_uiVar2) {
            r2 = option_labelVar;
            r3 = slider_uiVar;
            r4 = option_labelVar2;
            r5 = slider_uiVar2;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel.OnArrowListener
        public void endChanged(ArrowPanel.ArrowHead arrowHead) {
            slider_ui slider_uiVar;
            int i;
            if (arrowHead.isAdjustableSize()) {
                r4.setValue(r3.getBarValue() * 10);
                slider_uiVar = r5;
                i = 0;
            } else {
                r4.setValue(100);
                slider_uiVar = r5;
                i = 8;
            }
            slider_uiVar.setVisibility(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel.OnArrowListener
        public void startChanged(ArrowPanel.ArrowHead arrowHead) {
            slider_ui slider_uiVar;
            int i;
            if (arrowHead.isAdjustableSize()) {
                r2.setValue(r3.getBarValue() * 10);
                slider_uiVar = r3;
                i = 0;
            } else {
                r2.setValue(100);
                slider_uiVar = r3;
                i = 8;
            }
            slider_uiVar.setVisibility(i);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$46 */
    /* loaded from: classes.dex */
    public class AnonymousClass46 implements SegmentedSelector.OnSegmentedSelect {
        final /* synthetic */ SegmentedSelector val$beginSelector;

        public AnonymousClass46(SegmentedSelector segmentedSelector) {
            r2 = segmentedSelector;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SegmentedSelector.OnSegmentedSelect
        public void selected(int i) {
            optionExpand.this.callback.arrowPanel.setStartArrowHead(r2.getArrowHeadFromId(i));
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$47 */
    /* loaded from: classes.dex */
    public class AnonymousClass47 implements SegmentedSelector.OnSegmentedSelect {
        final /* synthetic */ SegmentedSelector val$endSelector;

        public AnonymousClass47(SegmentedSelector segmentedSelector) {
            r2 = segmentedSelector;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SegmentedSelector.OnSegmentedSelect
        public void selected(int i) {
            optionExpand.this.callback.arrowPanel.setEndArrowHead(r2.getArrowHeadFromId(i));
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$48 */
    /* loaded from: classes.dex */
    public class AnonymousClass48 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$beginArrowSizeLabel;

        public AnonymousClass48(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i * 10);
            optionExpand.this.callback.arrowPanel.setBeginArrowMultiplier(i / 10.0f);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$49 */
    /* loaded from: classes.dex */
    public class AnonymousClass49 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$endArrowSizeLabel;

        public AnonymousClass49(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i * 10);
            optionExpand.this.callback.arrowPanel.setEndArrowMultiplier(i / 10.0f);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$5 */
    /* loaded from: classes.dex */
    public class AnonymousClass5 implements View.OnClickListener {
        public AnonymousClass5() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getTextContainer().relativePosObjects(optionExpand.this.references, textContainer.floatObject.left);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$50 */
    /* loaded from: classes.dex */
    public class AnonymousClass50 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$middleSizeLabel;

        public AnonymousClass50(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
            optionExpand.this.callback.arrowPanel.setArrowSize(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$51 */
    /* loaded from: classes.dex */
    public class AnonymousClass51 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$fill_opacity_label;

        public AnonymousClass51(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
            if (z) {
                optionExpand.this.callback.arrowPanel.setFillOpacity(i);
            }
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$52 */
    /* loaded from: classes.dex */
    public class AnonymousClass52 implements unifiedColor_selector.onColorChangeListener {
        final /* synthetic */ slider_ui val$fill_opacity;

        public AnonymousClass52(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            optionExpand.this.callback.arrowPanel.setFill(i, i2, gradientFill);
            r2.setBarValue(i == unifiedColor_selector.TYPE_GRADIENT ? 100 : (int) (Color.alpha(i2) * 0.39215687f));
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$53 */
    /* loaded from: classes.dex */
    public class AnonymousClass53 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$stroke_width_label;

        public AnonymousClass53(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
            optionExpand.this.callback.arrowPanel.setStrokeWidth(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$54 */
    /* loaded from: classes.dex */
    public class AnonymousClass54 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$stroke_opacity_label;

        public AnonymousClass54(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
            if (z) {
                optionExpand.this.callback.arrowPanel.setStrokeOpacity(i);
            }
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$55 */
    /* loaded from: classes.dex */
    public class AnonymousClass55 implements unifiedColor_selector.onColorChangeListener {
        final /* synthetic */ slider_ui val$stroke_opacity;

        public AnonymousClass55(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            optionExpand.this.callback.arrowPanel.setStroke(i, i2, gradientFill);
            r2.setBarValue(i == unifiedColor_selector.TYPE_GRADIENT ? 100 : (int) (Color.alpha(i2) * 0.39215687f));
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$56 */
    /* loaded from: classes.dex */
    public class AnonymousClass56 implements Runnable {
        public AnonymousClass56() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String addNewShape;
            try {
                Bundle bundle = optionExpand.this.callback.arrowPanel.toBundle();
                Bitmap bitmapFromBezierPanel = optionExpand.this.callback.arrowPanel.getBitmapFromBezierPanel((int) 2.0f);
                File cacheFile = commonFuncs.getCacheFile(commonFuncs.generateName("drawingArrow"), optionExpand.this.v.getContext());
                Rect autoCropBound = DrawingPanelRenderer.getAutoCropBound(bitmapFromBezierPanel);
                if (autoCropBound.right != -1 && autoCropBound.left != -1 && autoCropBound.top != -1 && autoCropBound.bottom != -1) {
                    float f = autoCropBound.left / 2.0f;
                    float f2 = autoCropBound.top / 2.0f;
                    float width = autoCropBound.width() / 2.0f;
                    float height = autoCropBound.height() / 2.0f;
                    commonFuncs.saveFile(DrawingPanelRenderer.autoCropBitmap(bitmapFromBezierPanel, autoCropBound), cacheFile, 1);
                    if (optionExpand.this.callback.arrowPanel.editShapeReference != null) {
                        addNewShape = optionExpand.this.callback.arrowPanel.editShapeReference.reference;
                        optionExpand.this.callback.saveCurrShapeState(optionExpand.this.callback.arrowPanel.editShapeReference);
                        optionExpand.this.callback.arrowPanel.editShapeReference.editSrc(ShapeComponent.SHAPE_TYPE_ARROW, new ImageSource(cacheFile.getPath()), true, width, height);
                        if (optionExpand.this.callback.arrowPanel.changedGeometry) {
                            optionExpand.this.callback.arrowPanel.editShapeReference.rotateShape(0);
                            optionExpand.this.callback.arrowPanel.editShapeReference.setX(f);
                            optionExpand.this.callback.arrowPanel.editShapeReference.setY(f2);
                        }
                    } else {
                        addNewShape = optionExpand.this.getTextContainer().addNewShape(ShapeComponent.SHAPE_TYPE_ARROW, new ImageSource(cacheFile.getPath()), false, f, f2, width, height);
                    }
                    optionExpand.this.getTextContainer().getShapeByRef(addNewShape).setArrowData(bundle);
                    return;
                }
                Toast.makeText(optionExpand.this.v.getContext(), optionExpand.this.callback.getString(R.string.error_save_image), 0).show();
            } catch (Exception unused) {
                Toast.makeText(optionExpand.this.v.getContext(), optionExpand.this.callback.getString(R.string.error_save_image), 0).show();
            }
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$57 */
    /* loaded from: classes.dex */
    public class AnonymousClass57 implements BezierPanel.OnBezierPanelAction {
        final /* synthetic */ BezierTools val$tools;

        public AnonymousClass57(BezierTools bezierTools) {
            r2 = bezierTools;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.OnBezierPanelAction
        public void pathChanged(int i, boolean z, boolean z2, boolean z3) {
            r2.updateActionsVisibility(i, z, z2, z3);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.OnBezierPanelAction
        public void selectionChanged(int i) {
            r2.updateFor(i, optionExpand.this.callback.bezierPanel.customBeziers);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.OnBezierPanelAction
        public void updateMode(BezierPanel.BezierMode bezierMode) {
            r2.setMode(bezierMode);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$58 */
    /* loaded from: classes.dex */
    public class AnonymousClass58 implements Runnable {
        public AnonymousClass58() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String addNewShape;
            try {
                Bundle pathsToBundle = optionExpand.this.callback.bezierPanel.pathsToBundle(true);
                pathsToBundle.putStringArrayList(appStateConstants.BEZIER_CURVE_RECT, commonFuncs.rectFToArr(new RectF(0.0f, 0.0f, MainActivity.helperClass.getContainerWidth(), MainActivity.helperClass.getContainerHeight())));
                Bitmap bitmapFromBezierPanel = optionExpand.this.callback.bezierPanel.getBitmapFromBezierPanel((int) 2.0f);
                File cacheFile = commonFuncs.getCacheFile(commonFuncs.generateName("drawingBezier"), optionExpand.this.v.getContext());
                Rect autoCropBound = DrawingPanelRenderer.getAutoCropBound(bitmapFromBezierPanel);
                if (autoCropBound.right != -1 && autoCropBound.left != -1 && autoCropBound.top != -1 && autoCropBound.bottom != -1) {
                    float f = autoCropBound.left / 2.0f;
                    float f2 = autoCropBound.top / 2.0f;
                    float width = autoCropBound.width() / 2.0f;
                    float height = autoCropBound.height() / 2.0f;
                    commonFuncs.saveFile(DrawingPanelRenderer.autoCropBitmap(bitmapFromBezierPanel, autoCropBound), cacheFile, 1);
                    if (optionExpand.this.callback.bezierPanel.editShapeReference != null) {
                        addNewShape = optionExpand.this.callback.bezierPanel.editShapeReference.reference;
                        float min = Math.min(optionExpand.this.callback.bezierPanel.editShapeReference.width_f / width, optionExpand.this.callback.bezierPanel.editShapeReference.height_f / height);
                        optionExpand.this.callback.saveCurrShapeState(optionExpand.this.callback.bezierPanel.editShapeReference);
                        optionExpand.this.callback.bezierPanel.editShapeReference.editSrc(ShapeComponent.SHAPE_TYPE_BEZIER, new ImageSource(cacheFile.getPath()), true, (int) (width * min), (int) (min * height));
                    } else {
                        addNewShape = optionExpand.this.getTextContainer().addNewShape(ShapeComponent.SHAPE_TYPE_BEZIER, new ImageSource(cacheFile.getPath()), false, f, f2, width, height);
                    }
                    optionExpand.this.getTextContainer().getShapeByRef(addNewShape).setBezierShapeData(pathsToBundle);
                    return;
                }
                Toast.makeText(optionExpand.this.v.getContext(), optionExpand.this.callback.getString(R.string.error_save_image), 0).show();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$59 */
    /* loaded from: classes.dex */
    public class AnonymousClass59 implements Runnable {
        public AnonymousClass59() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String addNewShape;
            try {
                Bundle bundle = optionExpand.this.callback.shapesCreatorTool.toBundle();
                Rect boundingBox = optionExpand.this.callback.shapesCreatorTool.getBoundingBox();
                if (!commonFuncs.isValidRect(boundingBox)) {
                    Toast.makeText(optionExpand.this.v.getContext(), optionExpand.this.callback.getString(R.string.error_save_image), 0).show();
                    return;
                }
                Bitmap bitmapFromShape = ShapesCreatorRenderer.getBitmapFromShape(optionExpand.this.callback.shapesCreatorTool, 2, boundingBox);
                File cacheFile = commonFuncs.getCacheFile(commonFuncs.generateName("drawingShape"), optionExpand.this.v.getContext());
                commonFuncs.saveFile(bitmapFromShape, cacheFile, 1);
                if (optionExpand.this.callback.shapesCreatorTool.editShapeReference != null) {
                    addNewShape = optionExpand.this.callback.shapesCreatorTool.editShapeReference.reference;
                    optionExpand.this.callback.saveCurrShapeState(optionExpand.this.callback.shapesCreatorTool.editShapeReference);
                    optionExpand.this.callback.shapesCreatorTool.editShapeReference.editSrc(ShapeComponent.SHAPE_TYPE_SHAPE, new ImageSource(cacheFile.getPath()), true, boundingBox.width(), boundingBox.height());
                    if (optionExpand.this.callback.shapesCreatorTool.changedGeometry) {
                        optionExpand.this.callback.shapesCreatorTool.editShapeReference.rotateShape(0);
                        optionExpand.this.callback.shapesCreatorTool.editShapeReference.setX(boundingBox.left);
                        optionExpand.this.callback.shapesCreatorTool.editShapeReference.setY(boundingBox.top);
                    }
                } else {
                    addNewShape = optionExpand.this.getTextContainer().addNewShape(ShapeComponent.SHAPE_TYPE_SHAPE, new ImageSource(cacheFile.getPath()), false, boundingBox.left, boundingBox.top, boundingBox.width(), boundingBox.height());
                }
                optionExpand.this.getTextContainer().getShapeByRef(addNewShape).setShapeData(bundle);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$6 */
    /* loaded from: classes.dex */
    public class AnonymousClass6 implements View.OnClickListener {
        public AnonymousClass6() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getTextContainer().relativePosObjects(optionExpand.this.references, textContainer.floatObject.center_hor);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$60 */
    /* loaded from: classes.dex */
    public class AnonymousClass60 implements View.OnClickListener {
        public AnonymousClass60() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.callback.drawingPanel.undo();
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$61 */
    /* loaded from: classes.dex */
    public class AnonymousClass61 implements View.OnClickListener {
        public AnonymousClass61() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.callback.drawingPanel.clearMe();
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$62 */
    /* loaded from: classes.dex */
    public class AnonymousClass62 implements View.OnClickListener {
        boolean enabled = false;
        final /* synthetic */ unifiedColor_selector val$color_selector;
        final /* synthetic */ ImageButton val$eraser;

        public AnonymousClass62(ImageButton imageButton, unifiedColor_selector unifiedcolor_selector) {
            r2 = imageButton;
            r3 = unifiedcolor_selector;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z = !this.enabled;
            this.enabled = z;
            r2.setSelected(z);
            optionExpand.this.callback.drawingPanel.setCurrPenType(this.enabled ? DrawingPanel.PenType.eraser : DrawingPanel.PenType.default_pen);
            r3.setVisibility(this.enabled ? 8 : 0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$63 */
    /* loaded from: classes.dex */
    public class AnonymousClass63 implements unifiedColor_selector.onColorChangeListener {
        public AnonymousClass63() {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            optionExpand.this.callback.drawingPanel.setCurrColor(i2);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$64 */
    /* loaded from: classes.dex */
    public class AnonymousClass64 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$strokeSmoothnessLabel;

        public AnonymousClass64(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.callback.drawingPanel.setSmoothness(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$65 */
    /* loaded from: classes.dex */
    public class AnonymousClass65 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ option_toggle val$dashedSwitch;

        public AnonymousClass65(option_toggle option_toggleVar) {
            r2 = option_toggleVar;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (r2.getState() && z) {
                r2.toggle(false);
            }
            optionExpand.this.callback.drawingPanel.setCurrFill(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$66 */
    /* loaded from: classes.dex */
    public class AnonymousClass66 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ option_toggle val$fillSwitch;

        public AnonymousClass66(option_toggle option_toggleVar) {
            r2 = option_toggleVar;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (r2.getState() && z) {
                r2.toggle(false);
            }
            optionExpand.this.callback.drawingPanel.setCurrDashed(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$67 */
    /* loaded from: classes.dex */
    public class AnonymousClass67 implements CompoundButton.OnCheckedChangeListener {
        public AnonymousClass67() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            optionExpand.this.callback.drawingPanel.setCurrNeon(z);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$68 */
    /* loaded from: classes.dex */
    public class AnonymousClass68 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$strokeWidthLabel;

        public AnonymousClass68(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.callback.drawingPanel.setCurrStrokeWidth(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$69 */
    /* loaded from: classes.dex */
    public class AnonymousClass69 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$blurLabel;

        public AnonymousClass69(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.callback.drawingPanel.setCurrBlur(i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$7 */
    /* loaded from: classes.dex */
    public class AnonymousClass7 implements View.OnClickListener {
        public AnonymousClass7() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getTextContainer().relativePosObjects(optionExpand.this.references, textContainer.floatObject.right);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$70 */
    /* loaded from: classes.dex */
    public class AnonymousClass70 implements Runnable {
        public AnonymousClass70() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!optionExpand.this.callback.drawingPanel.drawingsEmpty()) {
                Bitmap bitmapFromDrawing = DrawingPanelRenderer.getBitmapFromDrawing(optionExpand.this.callback.drawingPanel, (int) 2.0f);
                Rect autoCropBound = DrawingPanelRenderer.getAutoCropBound(bitmapFromDrawing);
                if (autoCropBound.right != -1 && autoCropBound.left != -1 && autoCropBound.top != -1 && autoCropBound.bottom != -1) {
                    Bitmap autoCropBitmap = DrawingPanelRenderer.autoCropBitmap(bitmapFromDrawing, autoCropBound);
                    File cacheFile = commonFuncs.getCacheFile(commonFuncs.generateName("drawing"), optionExpand.this.v.getContext());
                    commonFuncs.saveFile(autoCropBitmap, cacheFile, 1);
                    optionExpand.this.getTextContainer().addNewShape(ShapeComponent.SHAPE_TYPE_DRAWING, new ImageSource(cacheFile.getPath()), false, autoCropBound.left / 2.0f, autoCropBound.top / 2.0f, autoCropBound.width() / 2.0f, autoCropBound.height() / 2.0f);
                    return;
                }
            }
            Toast.makeText(optionExpand.this.v.getContext(), optionExpand.this.callback.getString(R.string.error_no_draw), 0).show();
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$71 */
    /* loaded from: classes.dex */
    public class AnonymousClass71 implements unifiedColor_selector.onColorChangeListener {
        public AnonymousClass71() {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
        public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
            if (i == unifiedColor_selector.TYPE_COLOR) {
                optionExpand.this.callback.usedImage.setAsColor(i2);
            } else if (i == unifiedColor_selector.TYPE_GRADIENT) {
                optionExpand.this.callback.usedImage.setAsGradient(gradientFill);
            }
            optionExpand.this.callback.updateBackground();
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$72 */
    /* loaded from: classes.dex */
    public class AnonymousClass72 implements Runnable {
        final /* synthetic */ int val$oldBgColor;
        final /* synthetic */ GradientMaker.GradientFill val$oldBgGradient;
        final /* synthetic */ int val$oldBgType;

        public AnonymousClass72(int i, int i2, GradientMaker.GradientFill gradientFill) {
            r2 = i;
            r3 = i2;
            r4 = gradientFill;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.callback.setBgFillOptions(r2, r3, r4);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$73 */
    /* loaded from: classes.dex */
    public class AnonymousClass73 implements Runnable {
        final /* synthetic */ CurrImage val$oldUsedImage;

        public AnonymousClass73(CurrImage currImage) {
            r2 = currImage;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.callback.setUsedImage(r2);
            optionExpand.this.callback.updateBackground(true);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$74 */
    /* loaded from: classes.dex */
    public class AnonymousClass74 implements Runnable {
        final /* synthetic */ int val$message;
        final /* synthetic */ ImageSource val$oldImgSource;

        public AnonymousClass74(int i, ImageSource imageSource) {
            r2 = i;
            r3 = imageSource;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = r2;
            if (i == 21) {
                optionExpand.this.getTextContainer().removeCurrentObject();
            } else if (i == 22) {
                optionExpand.this.getTextContainer().editCurrShape(ShapeComponent.SHAPE_TYPE_STICKER, r3, false, 0, 0);
            }
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$75 */
    /* loaded from: classes.dex */
    public class AnonymousClass75 implements Runnable {
        final /* synthetic */ int val$message;

        public AnonymousClass75(int i) {
            r2 = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (r2 == 21 && optionExpand.this.getSelectedShape().isEmptySticker()) {
                optionExpand.this.getTextContainer().removeCurrentObject();
            }
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$76 */
    /* loaded from: classes.dex */
    public class AnonymousClass76 implements RadioGroup.OnCheckedChangeListener {
        final /* synthetic */ int val$message;
        final /* synthetic */ presets_holder val$presetsHolder;
        final /* synthetic */ SegmentedGroup val$typeChoice;

        public AnonymousClass76(SegmentedGroup segmentedGroup, presets_holder presets_holderVar, int i) {
            r2 = segmentedGroup;
            r3 = presets_holderVar;
            r4 = i;
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            presets_holder presets_holderVar = r3;
            if (presets_holderVar != null) {
                View findViewById = presets_holderVar.findViewById(2131335577);
                if (findViewById != null) {
                    r3.removeView(findViewById);
                }
                int childCount = r3.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    r3.getChildAt(i2).setVisibility(0);
                }
            }
            CustomFolderTabClick.currentFolderPath = null;
            CustomFolderTabClick.currentTabListener = null;
            optionExpand.this.DoStickersJob(r3, r4, i == R.id.sticker_rButton ? 1 : i == R.id.emoji_rButton ? 2 : 4);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$77 */
    /* loaded from: classes.dex */
    public class AnonymousClass77 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_toggle val$aspectRatioSwitch;
        final /* synthetic */ option_label val$heightLabel;
        final /* synthetic */ slider_ui val$heightVal;
        final /* synthetic */ option_label val$widthLabel;

        public AnonymousClass77(option_toggle option_toggleVar, option_label option_labelVar, slider_ui slider_uiVar, option_label option_labelVar2) {
            r2 = option_toggleVar;
            r3 = option_labelVar;
            r4 = slider_uiVar;
            r5 = option_labelVar2;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            if (z) {
                float f = optionExpand.this.getSelectedShape().width_f;
                float f2 = optionExpand.this.getSelectedShape().height_f;
                float containerWidth = (i / 100.0f) * MainActivity.helperClass.getContainerWidth();
                float f3 = (containerWidth / f) * f2;
                ShapeComponent selectedShape = optionExpand.this.getSelectedShape();
                if (r2.getState()) {
                    f2 = f3;
                }
                selectedShape.setDims(containerWidth, f2);
                r3.setValue(Math.max(1, (int) ((containerWidth / MainActivity.helperClass.getContainerWidth()) * 100.0f)));
                if (r2.getState()) {
                    int max = Math.max(1, (int) ((f3 / MainActivity.helperClass.getContainerHeight()) * 100.0f));
                    r4.setBarValue(max);
                    r5.setValue(max);
                }
            }
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$78 */
    /* loaded from: classes.dex */
    public class AnonymousClass78 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_toggle val$aspectRatioSwitch;
        final /* synthetic */ option_label val$heightLabel;
        final /* synthetic */ option_label val$widthLabel;
        final /* synthetic */ slider_ui val$widthVal;

        public AnonymousClass78(option_toggle option_toggleVar, option_label option_labelVar, slider_ui slider_uiVar, option_label option_labelVar2) {
            r2 = option_toggleVar;
            r3 = option_labelVar;
            r4 = slider_uiVar;
            r5 = option_labelVar2;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            if (z) {
                float f = optionExpand.this.getSelectedShape().width_f;
                float containerHeight = (i / 100.0f) * MainActivity.helperClass.getContainerHeight();
                float f2 = (containerHeight / optionExpand.this.getSelectedShape().height_f) * f;
                ShapeComponent selectedShape = optionExpand.this.getSelectedShape();
                if (r2.getState()) {
                    f = f2;
                }
                selectedShape.setDims(f, containerHeight);
                r3.setValue(Math.max(1, (int) ((containerHeight / MainActivity.helperClass.getContainerHeight()) * 100.0f)));
                if (r2.getState()) {
                    int max = Math.max(1, (int) ((f2 / MainActivity.helperClass.getContainerWidth()) * 100.0f));
                    r4.setBarValue(max);
                    r5.setValue(max);
                }
            }
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$79 */
    /* loaded from: classes.dex */
    public class AnonymousClass79 implements Runnable {
        final /* synthetic */ float val$oldShapeHeight;
        final /* synthetic */ float val$oldShapeWidth;

        public AnonymousClass79(float f, float f2) {
            r2 = f;
            r3 = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().setDims(r2, r3);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$8 */
    /* loaded from: classes.dex */
    public class AnonymousClass8 implements View.OnClickListener {
        public AnonymousClass8() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getTextContainer().relativePosObjects(optionExpand.this.references, textContainer.floatObject.top);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$80 */
    /* loaded from: classes.dex */
    public class AnonymousClass80 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$moveByLabel;

        public AnonymousClass80(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$81 */
    /* loaded from: classes.dex */
    public class AnonymousClass81 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$moveByVal;

        public AnonymousClass81(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedShape().setX(optionExpand.this.getSelectedShape().getX() - r2.getBarValue());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$82 */
    /* loaded from: classes.dex */
    public class AnonymousClass82 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$moveByVal;

        public AnonymousClass82(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedShape().setX(optionExpand.this.getSelectedShape().getX() + r2.getBarValue());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$83 */
    /* loaded from: classes.dex */
    public class AnonymousClass83 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$moveByVal;

        public AnonymousClass83(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedShape().setY(optionExpand.this.getSelectedShape().getY() - r2.getBarValue());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$84 */
    /* loaded from: classes.dex */
    public class AnonymousClass84 implements View.OnClickListener {
        final /* synthetic */ slider_ui val$moveByVal;

        public AnonymousClass84(slider_ui slider_uiVar) {
            r2 = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedShape().setY(optionExpand.this.getSelectedShape().getY() + r2.getBarValue());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$85 */
    /* loaded from: classes.dex */
    public class AnonymousClass85 implements Runnable {
        final /* synthetic */ float val$oldX;
        final /* synthetic */ float val$oldY;

        public AnonymousClass85(float f, float f2) {
            r2 = f;
            r3 = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().setX(r2);
            optionExpand.this.getSelectedShape().setY(r3);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$86 */
    /* loaded from: classes.dex */
    public class AnonymousClass86 implements View.OnClickListener {
        public AnonymousClass86() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedShape().setX(0.0f);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$87 */
    /* loaded from: classes.dex */
    public class AnonymousClass87 implements View.OnClickListener {
        public AnonymousClass87() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedShape().setX((MainActivity.helperClass.getContainerWidth() / 2.0f) - (optionExpand.this.getSelectedShape().width_f / 2.0f));
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$88 */
    /* loaded from: classes.dex */
    public class AnonymousClass88 implements View.OnClickListener {
        public AnonymousClass88() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedShape().setX(MainActivity.helperClass.getContainerWidth() - optionExpand.this.getSelectedShape().width_f);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$89 */
    /* loaded from: classes.dex */
    public class AnonymousClass89 implements View.OnClickListener {
        public AnonymousClass89() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedShape().setY(0.0f);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$9 */
    /* loaded from: classes.dex */
    public class AnonymousClass9 implements View.OnClickListener {
        public AnonymousClass9() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getTextContainer().relativePosObjects(optionExpand.this.references, textContainer.floatObject.center_ver);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$90 */
    /* loaded from: classes.dex */
    public class AnonymousClass90 implements View.OnClickListener {
        public AnonymousClass90() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedShape().setY((MainActivity.helperClass.getContainerHeight() / 2.0f) - (optionExpand.this.getSelectedShape().height_f / 2.0f));
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$91 */
    /* loaded from: classes.dex */
    public class AnonymousClass91 implements View.OnClickListener {
        public AnonymousClass91() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            optionExpand.this.getSelectedShape().setY(MainActivity.helperClass.getContainerHeight() - optionExpand.this.getSelectedShape().height_f);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$92 */
    /* loaded from: classes.dex */
    public class AnonymousClass92 implements Runnable {
        final /* synthetic */ float val$oldX;
        final /* synthetic */ float val$oldY;

        public AnonymousClass92(float f, float f2) {
            r2 = f;
            r3 = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().setX(r2);
            optionExpand.this.getSelectedShape().setY(r3);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$93 */
    /* loaded from: classes.dex */
    public class AnonymousClass93 implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ LinearLayout val$toggleablePanel;

        public AnonymousClass93(LinearLayout linearLayout) {
            r2 = linearLayout;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            r2.setVisibility(z ? 0 : 8);
            optionExpand.this.getSelectedShape().setEmboss(z, optionExpand.this.getSelectedShape().getEmbossLightAngle(), optionExpand.this.getSelectedShape().getEmbossIntensity(), optionExpand.this.getSelectedShape().getEmbossAmbient(), optionExpand.this.getSelectedShape().getEmbossHardness(), optionExpand.this.getSelectedShape().getEmbossBevel());
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$94 */
    /* loaded from: classes.dex */
    public class AnonymousClass94 implements SeekArc.OnSeekArcChangeListener {
        final /* synthetic */ option_label val$lightAngleLabel;

        public AnonymousClass94(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onProgressChanged(SeekArc seekArc, int i, boolean z) {
            optionExpand.this.getSelectedShape().setEmboss(optionExpand.this.getSelectedShape().isEmbossEnabled(), i, optionExpand.this.getSelectedShape().getEmbossIntensity(), optionExpand.this.getSelectedShape().getEmbossAmbient(), optionExpand.this.getSelectedShape().getEmbossHardness(), optionExpand.this.getSelectedShape().getEmbossBevel());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onStartTrackingTouch(SeekArc seekArc) {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.OnSeekArcChangeListener
        public void onStopTrackingTouch(SeekArc seekArc) {
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$95 */
    /* loaded from: classes.dex */
    public class AnonymousClass95 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$intensityLabel;

        public AnonymousClass95(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().setEmboss(optionExpand.this.getSelectedShape().isEmbossEnabled(), optionExpand.this.getSelectedShape().getEmbossLightAngle(), i, optionExpand.this.getSelectedShape().getEmbossAmbient(), optionExpand.this.getSelectedShape().getEmbossHardness(), optionExpand.this.getSelectedShape().getEmbossBevel());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$96 */
    /* loaded from: classes.dex */
    public class AnonymousClass96 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$ambientLabel;

        public AnonymousClass96(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().setEmboss(optionExpand.this.getSelectedShape().isEmbossEnabled(), optionExpand.this.getSelectedShape().getEmbossLightAngle(), optionExpand.this.getSelectedShape().getEmbossIntensity(), i, optionExpand.this.getSelectedShape().getEmbossHardness(), optionExpand.this.getSelectedShape().getEmbossBevel());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$97 */
    /* loaded from: classes.dex */
    public class AnonymousClass97 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$specularLabel;

        public AnonymousClass97(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().setEmboss(optionExpand.this.getSelectedShape().isEmbossEnabled(), optionExpand.this.getSelectedShape().getEmbossLightAngle(), optionExpand.this.getSelectedShape().getEmbossIntensity(), optionExpand.this.getSelectedShape().getEmbossAmbient(), i, optionExpand.this.getSelectedShape().getEmbossBevel());
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$98 */
    /* loaded from: classes.dex */
    public class AnonymousClass98 implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$bevelLabel;

        public AnonymousClass98(option_label option_labelVar) {
            r2 = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            optionExpand.this.getSelectedShape().setEmboss(optionExpand.this.getSelectedShape().isEmbossEnabled(), optionExpand.this.getSelectedShape().getEmbossLightAngle(), optionExpand.this.getSelectedShape().getEmbossIntensity(), optionExpand.this.getSelectedShape().getEmbossAmbient(), optionExpand.this.getSelectedShape().getEmbossHardness(), i);
            r2.setValue(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStartTrackingTouch(this, discreteSeekBar);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public /* synthetic */ void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            DiscreteSeekBar.OnProgressChangeListener.CC.$default$onStopTrackingTouch(this, discreteSeekBar);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand$99 */
    /* loaded from: classes.dex */
    public class AnonymousClass99 implements Runnable {
        final /* synthetic */ int val$OldEmbossAmbient;
        final /* synthetic */ int val$OldEmbossBevel;
        final /* synthetic */ Boolean val$OldEmbossEnabled;
        final /* synthetic */ int val$OldEmbossHardness;
        final /* synthetic */ int val$OldEmbossIntensity;
        final /* synthetic */ int val$OldEmbossLightAngle;

        public AnonymousClass99(Boolean bool, int i, int i2, int i3, int i4, int i5) {
            r2 = bool;
            r3 = i;
            r4 = i2;
            r5 = i3;
            r6 = i4;
            r7 = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            optionExpand.this.getSelectedShape().setEmboss(r2.booleanValue(), r3, r4, r5, r6, r7);
        }
    }

    /* loaded from: classes.dex */
    public class AddFolderDialogClick implements View.OnClickListener {
        public final optionExpand this$0;
        public final presets_holder val$presetsHolder;
        public final int val$type;

        public AddFolderDialogClick(optionExpand optionexpand, presets_holder presets_holderVar, int i) {
            this.this$0 = optionexpand;
            this.val$presetsHolder = presets_holderVar;
            this.val$type = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle("قم بتعيين اسم مجلد الملصقات الخاص بك");
            EditText editText = new EditText(context);
            editText.setSingleLine(true);
            builder.setView(editText);
            builder.setPositiveButton("OK", new CustomFolderDialogListener(this, editText, context));
            builder.setNegativeButton("Cancel", (DialogInterface.OnClickListener) null);
            builder.show();
        }
    }

    /* loaded from: classes.dex */
    public class BgBlurCancel implements Runnable {
        private final MainActivity callback;
        private final int prevBlur;

        public BgBlurCancel(MainActivity mainActivity, int i) {
            this.callback = mainActivity;
            this.prevBlur = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BackgroundImageHolder backgroundImageHolder;
            MainActivity mainActivity = this.callback;
            if (mainActivity == null || (backgroundImageHolder = mainActivity.bg_layout) == null) {
                return;
            }
            backgroundImageHolder.setBlurRadius(this.prevBlur);
        }
    }

    /* loaded from: classes.dex */
    public class BgBlurListener implements DiscreteSeekBar.OnProgressChangeListener {
        private final MainActivity callback;
        private final option_label label;

        public BgBlurListener(MainActivity mainActivity, option_label option_labelVar) {
            this.callback = mainActivity;
            this.label = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            BackgroundImageHolder backgroundImageHolder;
            option_label option_labelVar = this.label;
            if (option_labelVar != null) {
                option_labelVar.setValue(i);
            }
            MainActivity mainActivity = this.callback;
            if (mainActivity == null || (backgroundImageHolder = mainActivity.bg_layout) == null) {
                return;
            }
            backgroundImageHolder.setBlurRadius(i);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
        }
    }

    /* loaded from: classes.dex */
    public class BgBlurReset implements View.OnClickListener {
        final /* synthetic */ MainActivity this$0;
        final /* synthetic */ slider_ui val$slider;

        BgBlurReset(MainActivity mainActivity, slider_ui slider_uiVar) {
            this.this$0 = mainActivity;
            this.val$slider = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BackgroundImageHolder backgroundImageHolder;
            slider_ui slider_uiVar = this.val$slider;
            if (slider_uiVar != null) {
                slider_uiVar.setBarValue(0);
            }
            MainActivity mainActivity = this.this$0;
            if (mainActivity == null || (backgroundImageHolder = mainActivity.bg_layout) == null) {
                return;
            }
            backgroundImageHolder.setBlurRadius(0);
        }
    }

    /* loaded from: classes.dex */
    public class BlendCancel implements Runnable {
        final /* synthetic */ int val$oldMode;
        final /* synthetic */ ShapeComponent val$shape;

        BlendCancel(ShapeComponent shapeComponent, int i) {
            this.val$shape = shapeComponent;
            this.val$oldMode = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShapeComponent shapeComponent = this.val$shape;
            if (shapeComponent != null) {
                shapeComponent.setBlendMode(this.val$oldMode);
            }
        }
    }

    /* loaded from: classes.dex */
    public class BlendSliderListener implements View.OnClickListener {
        final /* synthetic */ LinearLayout val$layout;
        final /* synthetic */ int val$mode;
        final /* synthetic */ ShapeComponent val$shape;

        BlendSliderListener(ShapeComponent shapeComponent, int i, LinearLayout linearLayout) {
            this.val$shape = shapeComponent;
            this.val$mode = i;
            this.val$layout = linearLayout;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShapeComponent shapeComponent = this.val$shape;
            if (shapeComponent != null) {
                shapeComponent.setBlendMode(this.val$mode);
            }
            LinearLayout linearLayout = this.val$layout;
            if (linearLayout != null) {
                int childCount = linearLayout.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = linearLayout.getChildAt(i);
                    if (childAt != null) {
                        childAt.setBackgroundColor(452984831);
                    }
                }
            }
            view.setBackgroundColor(-1499549);
        }
    }

    /* loaded from: classes.dex */
    public class GaussianBlurCancel implements Runnable {
        final /* synthetic */ int val$oldRadius;

        GaussianBlurCancel(int i) {
            this.val$oldRadius = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShapeComponent selectedShape = optionExpand.this.getSelectedShape();
            if (selectedShape != null) {
                selectedShape.setGaussianBlurRadius(this.val$oldRadius);
            }
        }
    }

    /* loaded from: classes.dex */
    public class GaussianBlurListener implements DiscreteSeekBar.OnProgressChangeListener {
        final /* synthetic */ option_label val$label;

        GaussianBlurListener(option_label option_labelVar) {
            this.val$label = option_labelVar;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
            this.val$label.setValue(i);
            ShapeComponent selectedShape = optionExpand.this.getSelectedShape();
            if (selectedShape != null) {
                selectedShape.setGaussianBlurRadius(i);
            }
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
        public void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
        }
    }

    /* loaded from: classes.dex */
    public class GaussianBlurReset implements View.OnClickListener {
        final /* synthetic */ slider_ui val$slider;

        GaussianBlurReset(slider_ui slider_uiVar) {
            this.val$slider = slider_uiVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.val$slider.setBarValue(0);
            ShapeComponent selectedShape = optionExpand.this.getSelectedShape();
            if (selectedShape != null) {
                selectedShape.setGaussianBlurRadius(0);
            }
        }
    }

    public static /* synthetic */ ShapeComponent access$200(optionExpand optionexpand) {
        return optionexpand.getSelectedShape();
    }

    private void addBlendControls() {
        ShapeComponent selectedShape = getSelectedShape();
        if (selectedShape == null) {
            return;
        }
        int i = selectedShape.blendMode;
        Context context = this.v.getContext();
        String[] strArr = {"عادي (Normal)", "تشتت (Dissolve)", "تغميق (Darken)", "ضاعف (Multiply)", "حرق لوني (Color Burn)", "حرق خطي (Linear Burn)", "لون أغمق (Darker Color)", "تنوير (Lighten)", "الشاشة (Screen)", "تفادي اللون (Color Dodge)", "تفادي خطي / إضافة (Add)", "لون أفتح (Lighter Color)", "تراكب (Overlay)", "ضوء خافت (Soft Light)", "ضوء شديد (Hard Light)", "ضوء مشرق (Vivid Light)", "ضوء خطي (Linear Light)", "ضوء نقطي (Pin Light)", "مزيج صلب (Hard Mix)", "فرق (Difference)", "استبعاد (Exclusion)", "طرح (Subtract)", "قسمة (Divide)", "صبغة (Hue)", "تشبع (Saturation)", "لون (Color)", "إضاءة (Luminosity)"};
        for (int i2 = 0; i2 < 27; i2++) {
            TextView textView = new TextView(context);
            textView.setText(strArr[i2]);
            textView.setTextSize(15.0f);
            textView.setTextColor(-1);
            textView.setGravity(17);
            int dpToPixels = dpToPixels(12);
            textView.setPadding(dpToPixels, dpToPixels, dpToPixels, dpToPixels);
            if (i2 == i) {
                textView.setBackgroundColor(-1499549);
            } else {
                textView.setBackgroundColor(452984831);
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.bottomMargin = dpToPixels(4);
            textView.setOnClickListener(new BlendSliderListener(selectedShape, i2, this.controlsLayout));
            this.controlsLayout.addView(textView, layoutParams);
        }
        this.cancelAction = new BlendCancel(selectedShape, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x2a7f  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x1244  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x129d  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x1208  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x11b8  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x0c8e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x07e2  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x094a  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x09e3  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0c44  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0c96  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0ca5  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0f38  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x11be  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x123a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void addControlsForMessage(int r112) {
        /*
            Method dump skipped, instructions count: 18670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand.addControlsForMessage(int):void");
    }

    private int alphaPercentFromColor(int i) {
        return toPercent(Color.alpha(i), 255);
    }

    private ShapeComponent createDummyShape() {
        return new ShapeComponent(this.v.getContext(), ShapeComponent.SHAPE_TYPE_STICKER, new ImageSource(), 2.0f, 2.0f, "dummyS");
    }

    private TextComponent createDummyText() {
        return new TextComponent(this.v.getContext(), -16777216, "dummyT");
    }

    public ShapeComponent getSelectedShape() {
        textContainer textcontainer;
        MainActivity mainActivity = this.callback;
        if (mainActivity == null || (textcontainer = mainActivity.textContain) == null) {
            return null;
        }
        return textcontainer.getCurrentShape();
    }

    public TextComponent getSelectedText() {
        textContainer textcontainer;
        MainActivity mainActivity = this.callback;
        if (mainActivity == null || (textcontainer = mainActivity.textContain) == null) {
            return null;
        }
        return textcontainer.getCurrentText();
    }

    public textContainer getTextContainer() {
        return this.callback.textContain;
    }

    public static optionExpand newInstance(int i, History.ComponentType componentType, ArrayList<String> arrayList) {
        optionExpand optionexpand = new optionExpand();
        Bundle bundle = new Bundle(2);
        bundle.putInt("editFor", i);
        bundle.putSerializable("type", componentType);
        bundle.putStringArrayList("references", arrayList);
        optionexpand.setArguments(bundle);
        return optionexpand;
    }

    private void setLParamMargin(LinearLayout.LayoutParams layoutParams, int i) {
        setLParamMarginHor(layoutParams, i);
        setLParamMarginVer(layoutParams, i);
    }

    private void setLParamMarginHor(LinearLayout.LayoutParams layoutParams, int i) {
        layoutParams.leftMargin = i;
        layoutParams.rightMargin = i;
    }

    private void setLParamMarginVer(LinearLayout.LayoutParams layoutParams, int i) {
        layoutParams.topMargin = i;
        layoutParams.bottomMargin = i;
    }

    public void DoBgImagesJob(presets_holder presets_holderVar, int i) {
        AsyncJob.doInBackground(new AnonymousClass2(this.v.getContext().getAssets(), presets_holderVar));
    }

    public void DoStickersJob(presets_holder presets_holderVar, int i, int i2) {
        String str;
        this.currentStickersJob = i2;
        presets_holderVar.removeAll();
        presets_holderVar.startLoading();
        if (i2 != 1) {
            if (i2 == 2) {
                str = "emojis";
            } else if (i2 == 4) {
                str = "pro_stickers";
            }
            AsyncJob.doInBackground(new AnonymousClass1(i2, this.v.getContext().getAssets(), str, presets_holderVar));
        }
        str = "stickers";
        AsyncJob.doInBackground(new AnonymousClass1(i2, this.v.getContext().getAssets(), str, presets_holderVar));
    }

    public int colorToPercent(int i) {
        return (i * 100) / 255;
    }

    public void doCancelAction() {
        this.cancelAbility.performClick();
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public ScrollView getScroller() {
        return (ScrollView) this.v.findViewById(R.id.scrollView);
    }

    public /* synthetic */ void lambda$addControlsForMessage$0$optionExpand(option_label option_labelVar, DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        this.callback.bg_layout.setHue(i);
        option_labelVar.setValue(i);
    }

    public /* synthetic */ void lambda$addControlsForMessage$1$optionExpand(option_label option_labelVar, slider_ui slider_uiVar, BoundedShape.ShapeLabel shapeLabel) {
        this.callback.shapesCreatorTool.setShape(shapeLabel, false, true);
        option_labelVar.setVisibility(shapeLabel == BoundedShape.ShapeLabel.rect ? 0 : 8);
        slider_uiVar.setVisibility(option_labelVar.getVisibility());
        slider_uiVar.setBarValue(0);
    }

    public /* synthetic */ void lambda$addControlsForMessage$11$optionExpand(option_label option_labelVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, slider_ui slider_uiVar4, DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        option_labelVar.setValue(i);
        int barValue = slider_uiVar.getBarValue();
        int barValue2 = slider_uiVar2.getBarValue();
        int barValue3 = slider_uiVar3.getBarValue();
        int barValue4 = slider_uiVar4.getBarValue();
        ShapeComponent selectedShape = getSelectedShape();
        if (selectedShape != null) {
            selectedShape.setEffects(barValue, barValue2, barValue3, barValue4);
            return;
        }
        TextComponent selectedText = getSelectedText();
        if (selectedText != null) {
            selectedText.setEffects(barValue, barValue2, barValue3, barValue4);
        }
    }

    public /* synthetic */ void lambda$addControlsForMessage$12$optionExpand(option_label option_labelVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, slider_ui slider_uiVar4, DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        option_labelVar.setValue(i);
        int barValue = slider_uiVar.getBarValue();
        int barValue2 = slider_uiVar2.getBarValue();
        int barValue3 = slider_uiVar3.getBarValue();
        int barValue4 = slider_uiVar4.getBarValue();
        ShapeComponent selectedShape = getSelectedShape();
        if (selectedShape != null) {
            selectedShape.setEffects(barValue, barValue2, barValue3, barValue4);
            return;
        }
        TextComponent selectedText = getSelectedText();
        if (selectedText != null) {
            selectedText.setEffects(barValue, barValue2, barValue3, barValue4);
        }
    }

    public /* synthetic */ void lambda$addControlsForMessage$13$optionExpand(option_label option_labelVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, slider_ui slider_uiVar4, DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        option_labelVar.setValue(i);
        int barValue = slider_uiVar.getBarValue();
        int barValue2 = slider_uiVar2.getBarValue();
        int barValue3 = slider_uiVar3.getBarValue();
        int barValue4 = slider_uiVar4.getBarValue();
        ShapeComponent selectedShape = getSelectedShape();
        if (selectedShape != null) {
            selectedShape.setEffects(barValue, barValue2, barValue3, barValue4);
            return;
        }
        TextComponent selectedText = getSelectedText();
        if (selectedText != null) {
            selectedText.setEffects(barValue, barValue2, barValue3, barValue4);
        }
    }

    public /* synthetic */ void lambda$addControlsForMessage$14$optionExpand(option_label option_labelVar, slider_ui slider_uiVar, slider_ui slider_uiVar2, slider_ui slider_uiVar3, slider_ui slider_uiVar4, DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        option_labelVar.setValue(i);
        int barValue = slider_uiVar.getBarValue();
        int barValue2 = slider_uiVar2.getBarValue();
        int barValue3 = slider_uiVar3.getBarValue();
        int barValue4 = slider_uiVar4.getBarValue();
        ShapeComponent selectedShape = getSelectedShape();
        if (selectedShape != null) {
            selectedShape.setEffects(barValue, barValue2, barValue3, barValue4);
            return;
        }
        TextComponent selectedText = getSelectedText();
        if (selectedText != null) {
            selectedText.setEffects(barValue, barValue2, barValue3, barValue4);
        }
    }

    public /* synthetic */ void lambda$addControlsForMessage$15$optionExpand(int i, int i2, int i3, int i4) {
        ShapeComponent selectedShape = getSelectedShape();
        if (selectedShape != null) {
            selectedShape.setEffects(i, i2, i3, i4);
        }
    }

    public /* synthetic */ void lambda$addControlsForMessage$16$optionExpand(option_label option_labelVar, DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        option_labelVar.setValue(i);
        getSelectedShape().setShapeOpacity(i);
    }

    public /* synthetic */ void lambda$addControlsForMessage$18$optionExpand(slider_ui slider_uiVar) {
        slider_uiVar.setBarValue((int) getSelectedText().getTextSize());
    }

    public /* synthetic */ void lambda$addControlsForMessage$19$optionExpand(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        getSelectedText().setPerspectivePoints(pointF, pointF2, pointF3, pointF4);
    }

    public /* synthetic */ void lambda$addControlsForMessage$2$optionExpand(option_label option_labelVar, DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        option_labelVar.setValue(i);
        this.callback.shapesCreatorTool.setBorderRadius(i);
    }

    public /* synthetic */ void lambda$addControlsForMessage$3$optionExpand(option_label option_labelVar, DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        option_labelVar.setValue(i);
        this.callback.shapesCreatorTool.setOpacity(i);
    }

    public /* synthetic */ void lambda$addControlsForMessage$4$optionExpand(int i, int i2, GradientMaker.GradientFill gradientFill) {
        if (i == unifiedColor_selector.TYPE_COLOR) {
            this.callback.shapesCreatorTool.setFillColor(i2);
        } else if (i == unifiedColor_selector.TYPE_GRADIENT) {
            this.callback.shapesCreatorTool.setFillGradient(gradientFill);
        }
        this.callback.updateBackground();
    }

    public /* synthetic */ void lambda$addControlsForMessage$5$optionExpand(option_label option_labelVar, DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        option_labelVar.setValue(i);
        this.callback.shapesCreatorTool.setStroke_width(i);
    }

    public /* synthetic */ void lambda$addControlsForMessage$6$optionExpand(option_label option_labelVar, DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        option_labelVar.setValue(i);
        this.callback.shapesCreatorTool.setStroke_alpha(i);
    }

    public /* synthetic */ void lambda$addControlsForMessage$7$optionExpand(int i, int i2, GradientMaker.GradientFill gradientFill) {
        if (i == unifiedColor_selector.TYPE_COLOR) {
            this.callback.shapesCreatorTool.setStroke_colorFill(i2);
        } else if (i == unifiedColor_selector.TYPE_GRADIENT) {
            this.callback.shapesCreatorTool.setStroke_gradientFill(gradientFill);
        }
        this.callback.updateBackground();
    }

    public /* synthetic */ void lambda$addControlsForMessage$8$optionExpand(option_label option_labelVar, DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        option_labelVar.setValue(i);
        this.callback.shapesCreatorTool.setStroke_blur(i);
    }

    public /* synthetic */ void lambda$addControlsForMessage$9$optionExpand(int i) {
        this.callback.shapesCreatorTool.setStrokeCap(i == 2 ? Paint.Cap.SQUARE : i == 1 ? Paint.Cap.BUTT : Paint.Cap.ROUND);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        FragmentActivity activity;
        super.onActivityResult(i, i2, intent);
        if (i == 257 && i2 == -1 && (activity = getActivity()) != null) {
            CustomStickerSaver.saveImageFromIntent(activity, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Context context2 = context instanceof Activity ? (Activity) context : null;
        if (context2 != null) {
            this.callback = MainActivity.class.isAssignableFrom(context2.getClass()) ? (MainActivity) context2 : null;
        }
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v = layoutInflater.inflate(R.layout.fragment_option_expand, viewGroup, false);
        this.newShapeSize = dpToPixels(60);
        this.controlsLayout = (LinearLayout) this.v.findViewById(R.id.controls_layout);
        this.cancelAbility = (ImageButton) this.v.findViewById(R.id.option_edit_cancel);
        this.resetAbility = (ImageButton) this.v.findViewById(R.id.option_edit_reset);
        this.doneAbility = (ImageButton) this.v.findViewById(R.id.option_edit_done);
        int i = getArguments().getInt("editFor");
        this.cancelButtonListener = new AnonymousClass3(i);
        AnonymousClass4 anonymousClass4 = new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand.4
            public AnonymousClass4() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Runnable runnable = optionExpand.this.positiveAction;
                if (runnable != null) {
                    runnable.run();
                }
                if (optionExpand.this.callback != null) {
                    optionExpand.this.callback.doneEditing();
                }
            }
        };
        this.doneButtonListener = anonymousClass4;
        this.doneAbility.setOnClickListener(anonymousClass4);
        this.cancelAbility.setOnClickListener(this.cancelButtonListener);
        History.ComponentType componentType = (History.ComponentType) getArguments().getSerializable("type");
        ArrayList<String> stringArrayList = getArguments().getStringArrayList("references");
        this.references = stringArrayList;
        if (i >= 0 || i == -16 || i == -83) {
            try {
                if (componentType == History.ComponentType.shape) {
                    this.callback.history.addAction(getSelectedShape().saveToBundle(), HistoryType.shape_action, getSelectedShape().reference);
                } else if (componentType == History.ComponentType.text) {
                    this.callback.history.addAction(getSelectedText().saveToBundle(), HistoryType.text_action, getSelectedText().reference);
                } else if (componentType == History.ComponentType.multiple && stringArrayList != null && stringArrayList.size() > 0) {
                    this.callback.saveStatesForReferences(this.references);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        addControlsForMessage(i);
        return this.v;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.cancelled = true;
        MainActivity mainActivity = (MainActivity) getActivity();
        if (mainActivity != null) {
            mainActivity.doneEditing();
        }
        this.v = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
    }

    public int percentToColor(int i) {
        return (i * 255) / 100;
    }

    public void setResetAbility(View.OnClickListener onClickListener) {
        this.resetAbility.setVisibility(0);
        this.resetAbility.setOnClickListener(onClickListener);
    }

    public int toNum(int i, int i2) {
        return (int) ((i * i2) / 100.0f);
    }

    public int toPercent(int i, int i2) {
        return (int) ((i / i2) * 100.0f);
    }
}
