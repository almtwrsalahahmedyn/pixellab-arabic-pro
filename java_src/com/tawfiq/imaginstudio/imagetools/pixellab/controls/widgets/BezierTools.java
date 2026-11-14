package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.core.content.ContextCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.FillInfo;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier;
import com.tawfiq.imaginstudio.imagetools.pixellab.appDefault;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SegmentedSelector;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions.uniformScale;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BezierTools extends LinearLayout implements View.OnClickListener {
    SegmentedSelector bezierMode;
    SegmentedSelector capSelector;
    View closePathButton;
    colorButton currBezier;
    View divideButton;
    View fillOptions;
    unifiedColor_selector fill_color_selector;
    slider_ui fill_opacity;
    OnBezierToolsAction listener;
    boolean maskMode;
    ViewGroup navigationOptions;
    int oldScroll;
    View openPathButton;
    ViewGroup primaryOptions;
    View removePButton;
    View rotButton;
    slider_ui rotSlider;
    LinearLayout rotateOptions;
    View scaleButton;
    LinearLayout scaleOptions;
    slider_ui scaleSlider;
    ViewGroup secondaryOptions;
    View strokeOptions;
    unifiedColor_selector stroke_color_selector;
    slider_ui stroke_opacity;
    slider_ui stroke_width;

    /* loaded from: classes.dex */
    public interface OnBezierToolsAction {
        void addNew();

        void closeSelected();

        void commitTransform(boolean z);

        void copySelected();

        void divideNext();

        void openSelected();

        void removeSelectedBezier();

        void removeSelectedPoint();

        void rotateBezier(int i);

        void scaleBezier(int i);

        void selectNextBezier();

        void selectPrevBezier();

        void setCurrMode(BezierPanel.BezierMode bezierMode);

        void setFill(int i, int i2, GradientMaker.GradientFill gradientFill);

        void setFillOpacity(int i);

        void setStroke(int i, int i2, GradientMaker.GradientFill gradientFill);

        void setStrokeCap(Paint.Cap cap);

        void setStrokeOpacity(int i);

        void setStrokeWidth(int i);
    }

    public BezierTools(Context context, final OnBezierToolsAction onBezierToolsAction, boolean z) {
        super(context);
        this.listener = null;
        this.oldScroll = 0;
        this.maskMode = z;
        LinearLayout.inflate(context, R.layout.bezier_tools, this);
        this.listener = onBezierToolsAction;
        colorButton colorbutton = new colorButton(context, 1, ContextCompat.getColor(context, R.color.blue_normal), null, false);
        this.currBezier = colorbutton;
        colorbutton.disableStroke();
        this.currBezier.toggleNumberView(true);
        ((ViewGroup) findViewById(R.id.bezier_cHolder)).addView(this.currBezier);
        ((ViewGroup) findViewById(R.id.mode_labelH)).addView(new option_label(context, getContext().getString(R.string.bezier_mode), false, 0, 3));
        ((ViewGroup) findViewById(R.id.actions_labelH)).addView(new option_label(context, getContext().getString(R.string.actions_option), false, 0, 3));
        SegmentedSelector segmentedSelector = (SegmentedSelector) findViewById(R.id.bezierModes);
        this.bezierMode = segmentedSelector;
        if (z) {
            segmentedSelector.addItems(R.drawable.drag, R.drawable.move24);
        } else {
            segmentedSelector.addItems(R.drawable.add_node, R.drawable.drag, R.drawable.move24);
        }
        this.bezierMode.setListener(new SegmentedSelector.OnSegmentedSelect() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.1
            /* JADX WARN: Code restructure failed: missing block: B:15:0x0014, code lost:
            
                if (r3 == 1) goto L13;
             */
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SegmentedSelector.OnSegmentedSelect
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void selected(int r3) {
                /*
                    r2 = this;
                    com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools$OnBezierToolsAction r0 = r2
                    if (r0 == 0) goto L1e
                    com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools r1 = com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.this
                    boolean r1 = r1.maskMode
                    if (r1 != 0) goto L13
                    r1 = 2
                    if (r3 != r1) goto Le
                    goto L16
                Le:
                    if (r3 != 0) goto L19
                    com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel$BezierMode r3 = com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.BezierMode.addP
                    goto L1b
                L13:
                    r1 = 1
                    if (r3 != r1) goto L19
                L16:
                    com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel$BezierMode r3 = com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.BezierMode.moveB
                    goto L1b
                L19:
                    com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel$BezierMode r3 = com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel.BezierMode.dragP
                L1b:
                    r0.setCurrMode(r3)
                L1e:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.AnonymousClass1.selected(int):void");
            }
        });
        if (!z) {
            addFillOptions((LinearLayout) findViewById(R.id.bezier_fillH));
            addStrokeOptions((LinearLayout) findViewById(R.id.bezier_strokeH));
        }
        this.openPathButton = findViewById(R.id.bezier_unclose);
        View findViewById = findViewById(R.id.bezier_close);
        this.closePathButton = findViewById;
        if (z) {
            findViewById.setVisibility(8);
        }
        this.fillOptions = findViewById(R.id.bezier_fillH);
        this.strokeOptions = findViewById(R.id.bezier_strokeH);
        this.navigationOptions = (ViewGroup) findViewById(R.id.bezier_navigationH);
        this.removePButton = findViewById(R.id.bezier_n_delete);
        this.divideButton = findViewById(R.id.bezier_divide);
        this.scaleButton = findViewById(R.id.bezier_scale);
        View findViewById2 = findViewById(R.id.bezier_rotate);
        this.rotButton = findViewById2;
        addButtonsListeners(this.navigationOptions, this.removePButton, this.divideButton, this.closePathButton, this.openPathButton, this.scaleButton, findViewById2);
        ImageButton imageButton = (ImageButton) findViewById(R.id.bezierActionOK);
        ImageButton imageButton2 = (ImageButton) findViewById(R.id.bezierActionCancel);
        imageButton.setColorFilter(appDefault.blueHighlightColor);
        imageButton2.setColorFilter(appDefault.blueHighlightColor);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BezierTools.this.primaryOptions.setVisibility(0);
                BezierTools.this.secondaryOptions.setVisibility(8);
                BezierTools.this.restoreScroll();
                OnBezierToolsAction onBezierToolsAction2 = onBezierToolsAction;
                if (onBezierToolsAction2 != null) {
                    onBezierToolsAction2.commitTransform(true);
                }
            }
        });
        imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BezierTools.this.primaryOptions.setVisibility(0);
                BezierTools.this.secondaryOptions.setVisibility(8);
                BezierTools.this.restoreScroll();
                OnBezierToolsAction onBezierToolsAction2 = onBezierToolsAction;
                if (onBezierToolsAction2 != null) {
                    onBezierToolsAction2.commitTransform(false);
                }
            }
        });
        this.primaryOptions = (ViewGroup) findViewById(R.id.bezierMainControls);
        this.secondaryOptions = (ViewGroup) findViewById(R.id.bezierSecondControls);
        this.rotateOptions = (LinearLayout) findViewById(R.id.bezierRotateControls);
        this.scaleOptions = (LinearLayout) findViewById(R.id.bezierScaleControls);
    }

    private void addButtonsListeners(ViewGroup viewGroup, View... viewArr) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            if (viewGroup.getChildAt(i) instanceof ImageButton) {
                viewGroup.getChildAt(i).setOnClickListener(this);
            }
        }
        for (View view : viewArr) {
            view.setOnClickListener(this);
        }
    }

    private void addFillOptions(LinearLayout linearLayout) {
        linearLayout.setVisibility(0);
        final option_label option_labelVar = new option_label(getContext(), getContext().getString(R.string.controls_opacity), true, 0, 2);
        this.fill_opacity = new slider_ui(getContext(), 0, 100, 100);
        unifiedColor_selector unifiedcolor_selector = new unifiedColor_selector(getContext(), true, unifiedColor_selector.TYPE_COLOR, -1, new GradientMaker.GradientFill());
        this.fill_color_selector = unifiedcolor_selector;
        unifiedcolor_selector.setOnColorChangeListener(new unifiedColor_selector.onColorChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.5
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
            public void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill) {
                slider_ui slider_uiVar;
                int i3;
                if (i == unifiedColor_selector.TYPE_COLOR) {
                    slider_uiVar = BezierTools.this.fill_opacity;
                    i3 = (int) ((Color.alpha(i2) / 255.0f) * 100.0f);
                } else {
                    slider_uiVar = BezierTools.this.fill_opacity;
                    i3 = 100;
                }
                slider_uiVar.setBarValue(i3);
                OnBezierToolsAction onBezierToolsAction = BezierTools.this.listener;
                if (onBezierToolsAction != null) {
                    onBezierToolsAction.setFill(i, i2, gradientFill);
                }
            }
        });
        this.fill_opacity.setNotifyValueChange(new DiscreteSeekBar.OnProgressChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.6
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
                option_labelVar.setValue(i);
                if (z) {
                    BezierTools.this.listener.setFillOpacity((int) ((i / 100.0f) * 255.0f));
                }
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            }
        });
        linearLayout.addView(option_labelVar);
        linearLayout.addView(this.fill_opacity);
        linearLayout.addView(new option_label(getContext(), getContext().getString(R.string.fill_color), false, 0, 3));
        linearLayout.addView(this.fill_color_selector);
    }

    private void addRotOptions(LinearLayout linearLayout) {
        slider_ui slider_uiVar = this.rotSlider;
        if (slider_uiVar != null) {
            slider_uiVar.setBarValue(0);
            return;
        }
        linearLayout.removeAllViews();
        final option_label option_labelVar = new option_label(getContext(), getContext().getString(R.string.controls_rotate), true, 0, 1);
        slider_ui slider_uiVar2 = new slider_ui(getContext(), -180, 180, 0);
        this.rotSlider = slider_uiVar2;
        slider_uiVar2.setNotifyValueChange(new DiscreteSeekBar.OnProgressChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.8
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
                option_labelVar.setValue(i);
                OnBezierToolsAction onBezierToolsAction = BezierTools.this.listener;
                if (onBezierToolsAction == null || !z) {
                    return;
                }
                onBezierToolsAction.rotateBezier(i);
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            }
        });
        linearLayout.addView(option_labelVar);
        linearLayout.addView(this.rotSlider);
    }

    private void addScaleOptions(LinearLayout linearLayout) {
        slider_ui slider_uiVar = this.scaleSlider;
        if (slider_uiVar != null) {
            slider_uiVar.setBarValue(45);
            return;
        }
        linearLayout.removeAllViews();
        final option_label option_labelVar = new option_label(getContext(), getContext().getString(R.string.action_resize), true, 100, 2);
        slider_ui slider_uiVar2 = new slider_ui(getContext(), 0, 95, 45);
        this.scaleSlider = slider_uiVar2;
        slider_uiVar2.setNotifyValueChange(new DiscreteSeekBar.OnProgressChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.7
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
                int scaleBezier = uniformScale.scaleBezier(i);
                option_labelVar.setValue(scaleBezier);
                OnBezierToolsAction onBezierToolsAction = BezierTools.this.listener;
                if (onBezierToolsAction == null || !z) {
                    return;
                }
                onBezierToolsAction.scaleBezier(scaleBezier);
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            }
        });
        linearLayout.addView(option_labelVar);
        linearLayout.addView(this.scaleSlider);
    }

    private void addStrokeOptions(LinearLayout linearLayout) {
        linearLayout.setVisibility(0);
        Context context = getContext();
        String string = getContext().getString(R.string.option_label_stroke_width);
        int i = customBezier.defaultStrokeWidth;
        final option_label option_labelVar = new option_label(context, string, true, i, 3);
        this.stroke_width = new slider_ui(getContext(), 0, commonFuncs.dpToPxInt(20), i);
        final option_label option_labelVar2 = new option_label(getContext(), getContext().getString(R.string.controls_opacity), true, 100, 2);
        this.stroke_opacity = new slider_ui(getContext(), 0, 100, 100);
        this.stroke_color_selector = new unifiedColor_selector(getContext(), true, unifiedColor_selector.TYPE_COLOR, -1, new GradientMaker.GradientFill());
        this.stroke_width.setNotifyValueChange(new DiscreteSeekBar.OnProgressChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.9
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i2, boolean z) {
                OnBezierToolsAction onBezierToolsAction;
                option_labelVar.setValue(i2);
                if (z && (onBezierToolsAction = BezierTools.this.listener) != null) {
                    onBezierToolsAction.setStrokeWidth(i2);
                }
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            }
        });
        this.stroke_color_selector.setOnColorChangeListener(new unifiedColor_selector.onColorChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.10
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.onColorChangeListener
            public void colorChanged(int i2, int i3, GradientMaker.GradientFill gradientFill) {
                slider_ui slider_uiVar;
                int i4;
                if (i2 == unifiedColor_selector.TYPE_COLOR) {
                    slider_uiVar = BezierTools.this.stroke_opacity;
                    i4 = (int) ((Color.alpha(i3) / 255.0f) * 100.0f);
                } else {
                    slider_uiVar = BezierTools.this.stroke_opacity;
                    i4 = 100;
                }
                slider_uiVar.setBarValue(i4);
                OnBezierToolsAction onBezierToolsAction = BezierTools.this.listener;
                if (onBezierToolsAction != null) {
                    onBezierToolsAction.setStroke(i2, i3, gradientFill);
                }
            }
        });
        this.stroke_opacity.setNotifyValueChange(new DiscreteSeekBar.OnProgressChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.11
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i2, boolean z) {
                OnBezierToolsAction onBezierToolsAction;
                option_labelVar2.setValue(i2);
                if (z && (onBezierToolsAction = BezierTools.this.listener) != null) {
                    onBezierToolsAction.setStrokeOpacity((int) ((i2 / 100.0f) * 255.0f));
                }
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            }
        });
        SegmentedSelector segmentedSelector = new SegmentedSelector(getContext());
        this.capSelector = segmentedSelector;
        segmentedSelector.addItems(R.drawable.round_cap24, R.drawable.butt_cap24, R.drawable.square_cap24);
        this.capSelector.setListener(new SegmentedSelector.OnSegmentedSelect() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.12
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SegmentedSelector.OnSegmentedSelect
            public void selected(int i2) {
                OnBezierToolsAction onBezierToolsAction = BezierTools.this.listener;
                if (onBezierToolsAction != null) {
                    onBezierToolsAction.setStrokeCap(i2 == 2 ? Paint.Cap.SQUARE : i2 == 1 ? Paint.Cap.BUTT : Paint.Cap.ROUND);
                }
            }
        });
        linearLayout.addView(option_labelVar);
        linearLayout.addView(this.stroke_width);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        layoutParams.bottomMargin = commonFuncs.dpToPxInt(10);
        linearLayout.addView(this.capSelector, layoutParams);
        linearLayout.addView(option_labelVar2);
        linearLayout.addView(this.stroke_opacity);
        linearLayout.addView(new option_label(getContext(), getContext().getString(R.string.stroke_fill_color), false, 0, 3));
        linearLayout.addView(this.stroke_color_selector);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreScroll() {
        final ScrollView scrollView;
        try {
            try {
                scrollView = (ScrollView) getParent().getParent().getParent();
            } catch (Exception unused) {
                scrollView = (ScrollView) getParent().getParent().getParent().getParent();
            }
        } catch (Exception unused2) {
            scrollView = null;
        }
        if (scrollView == null) {
            return;
        }
        scrollView.post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.BezierTools.4
            @Override // java.lang.Runnable
            public void run() {
                scrollView.smoothScrollTo(0, BezierTools.this.oldScroll);
            }
        });
    }

    private void saveScroll() {
        try {
            try {
                this.oldScroll = ((ScrollView) getParent().getParent().getParent()).getScrollY();
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            this.oldScroll = ((ScrollView) getParent().getParent().getParent().getParent()).getScrollY();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.listener == null) {
            return;
        }
        switch (view.getId()) {
            case R.id.bezier_add /* 2131361993 */:
                this.listener.addNew();
                return;
            case R.id.bezier_cHolder /* 2131361994 */:
            case R.id.bezier_fillH /* 2131361998 */:
            case R.id.bezier_navigationH /* 2131362000 */:
            case R.id.bezier_strokeH /* 2131362006 */:
            default:
                return;
            case R.id.bezier_close /* 2131361995 */:
                this.listener.closeSelected();
                return;
            case R.id.bezier_divide /* 2131361996 */:
                this.listener.divideNext();
                return;
            case R.id.bezier_duplicate /* 2131361997 */:
                this.listener.copySelected();
                return;
            case R.id.bezier_n_delete /* 2131361999 */:
                this.listener.removeSelectedPoint();
                return;
            case R.id.bezier_next /* 2131362001 */:
                this.listener.selectNextBezier();
                return;
            case R.id.bezier_prev /* 2131362002 */:
                this.listener.selectPrevBezier();
                return;
            case R.id.bezier_remove /* 2131362003 */:
                this.listener.removeSelectedBezier();
                return;
            case R.id.bezier_rotate /* 2131362004 */:
                saveScroll();
                this.scaleOptions.setVisibility(8);
                this.rotateOptions.setVisibility(0);
                this.primaryOptions.setVisibility(8);
                this.secondaryOptions.setVisibility(0);
                addRotOptions(this.rotateOptions);
                return;
            case R.id.bezier_scale /* 2131362005 */:
                saveScroll();
                this.scaleOptions.setVisibility(0);
                this.rotateOptions.setVisibility(8);
                this.primaryOptions.setVisibility(8);
                this.secondaryOptions.setVisibility(0);
                addScaleOptions(this.scaleOptions);
                return;
            case R.id.bezier_unclose /* 2131362007 */:
                this.listener.openSelected();
                return;
        }
    }

    public void setMode(BezierPanel.BezierMode bezierMode) {
        this.bezierMode.setSelected(bezierMode == BezierPanel.BezierMode.addP ? 0 : bezierMode == BezierPanel.BezierMode.dragP ? 1 : 2);
        OnBezierToolsAction onBezierToolsAction = this.listener;
        if (onBezierToolsAction != null) {
            onBezierToolsAction.setCurrMode(bezierMode);
        }
    }

    public void updateActionsVisibility(int i, boolean z, boolean z2, boolean z3) {
        int i2 = 8;
        this.divideButton.setVisibility((z3 || (z && !z2)) ? 8 : 0);
        this.rotButton.setVisibility(i > 1 ? 0 : 8);
        this.scaleButton.setVisibility(i > 1 ? 0 : 8);
        this.closePathButton.setVisibility((i <= 1 || z2 || this.maskMode) ? 8 : 0);
        View view = this.openPathButton;
        if (i > 1 && z2 && !this.maskMode) {
            i2 = 0;
        }
        view.setVisibility(i2);
    }

    public void updateFor(int i, ArrayList<customBezier> arrayList) {
        if (i >= 0) {
            int i2 = 1;
            if (i > arrayList.size() - 1) {
                return;
            }
            customBezier custombezier = arrayList.get(i);
            this.currBezier.setNumberToView(i + 1);
            this.openPathButton.setVisibility((custombezier.actions.count() <= 1 || !custombezier.closedContour || this.maskMode) ? 8 : 0);
            this.closePathButton.setVisibility((custombezier.actions.count() <= 1 || custombezier.closedContour || this.maskMode) ? 8 : 0);
            this.fillOptions.setVisibility(custombezier.closedContour ? 0 : 8);
            FillInfo fillOptions = custombezier.getFillOptions();
            if (this.fillOptions.getVisibility() == 0) {
                unifiedColor_selector unifiedcolor_selector = this.fill_color_selector;
                if (unifiedcolor_selector != null) {
                    unifiedcolor_selector.setParamsQuietly(fillOptions.getFill_type(), fillOptions.getFill_color(), fillOptions.getFill_gradient());
                }
                slider_ui slider_uiVar = this.fill_opacity;
                if (slider_uiVar != null) {
                    slider_uiVar.setBarValue((int) ((custombezier.fillAlpha / 255.0f) * 100.0f));
                }
            }
            if (this.strokeOptions.getVisibility() == 0) {
                unifiedColor_selector unifiedcolor_selector2 = this.stroke_color_selector;
                if (unifiedcolor_selector2 != null) {
                    unifiedcolor_selector2.setParamsQuietly(fillOptions.getStroke_type(), fillOptions.getStroke_color(), fillOptions.getStroke_gradient());
                }
                slider_ui slider_uiVar2 = this.stroke_opacity;
                if (slider_uiVar2 != null) {
                    slider_uiVar2.setBarValue((int) ((custombezier.strokeAlpha / 255.0f) * 100.0f));
                }
                slider_ui slider_uiVar3 = this.stroke_width;
                if (slider_uiVar3 != null) {
                    slider_uiVar3.setBarValue(custombezier.getFillOptions().getStroke_width());
                }
                if (this.capSelector != null) {
                    Paint.Cap stroke_cap = custombezier.getFillOptions().getStroke_cap();
                    SegmentedSelector segmentedSelector = this.capSelector;
                    if (stroke_cap == Paint.Cap.SQUARE) {
                        i2 = 2;
                    } else if (stroke_cap != Paint.Cap.BUTT) {
                        i2 = 0;
                    }
                    segmentedSelector.setSelected(i2);
                }
            }
            slider_ui slider_uiVar4 = this.scaleSlider;
            if (slider_uiVar4 != null) {
                slider_uiVar4.setBarValue(uniformScale.scaleBezierInverse(custombezier.getCurrScale()));
            }
            slider_ui slider_uiVar5 = this.rotSlider;
            if (slider_uiVar5 != null) {
                slider_uiVar5.setBarValue(custombezier.getCurrRot());
            }
        }
    }
}
