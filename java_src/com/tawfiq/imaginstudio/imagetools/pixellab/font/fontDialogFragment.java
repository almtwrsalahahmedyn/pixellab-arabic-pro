package com.tawfiq.imaginstudio.imagetools.pixellab.font;

import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.viewpager.widget.ViewPager;
import com.tawfiq.imaginstudio.imagetools.pixellab.GoogleTabStrip.SlidingTabLayout;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions.spansIntervals;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textSelector;

/* loaded from: classes.dex */
public class fontDialogFragment extends DialogFragment {
    fontDialogInterface fo = null;
    private spansIntervals previewFonts;
    private String previewText;
    private SlidingTabLayout titleStrip;
    private View view;
    private ViewPager viewPager;

    /* loaded from: classes.dex */
    public class OtClickListener implements View.OnClickListener {
        public static String currentFeature = "";
        final fontDialogFragment dialog;
        final String feature;

        public OtClickListener(fontDialogFragment fontdialogfragment, String str) {
            this.dialog = fontdialogfragment;
            this.feature = str;
        }

        private void resetAllButtons(View view) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt != null) {
                        childAt.setSelected(false);
                        childAt.setBackgroundColor(0);
                    }
                }
            }
        }

        private void selectAllButtons(View view) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt != null) {
                        childAt.setSelected(true);
                        childAt.setBackgroundColor(-14575885);
                    }
                }
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextView textView;
            if (this.feature.equals("normal")) {
                currentFeature = "";
                resetAllButtons(view);
            } else if (this.feature.contains("all")) {
                currentFeature = this.feature;
                selectAllButtons(view);
            } else {
                if (currentFeature == null) {
                    currentFeature = "";
                }
                if (currentFeature.contains(this.feature)) {
                    view.setSelected(false);
                    view.setBackgroundColor(0);
                    currentFeature = currentFeature.replace(this.feature + ", ", "").replace(this.feature, "");
                } else {
                    view.setSelected(true);
                    view.setBackgroundColor(-14575885);
                    StringBuilder sb = new StringBuilder();
                    sb.append(currentFeature);
                    if (!currentFeature.isEmpty()) {
                        sb.append(", ");
                    }
                    sb.append(this.feature);
                    currentFeature = sb.toString();
                }
            }
            View view2 = this.dialog.getView();
            if (view2 == null || (textView = (TextView) view2.findViewById(R.id.textFont)) == null) {
                return;
            }
            String str = currentFeature.isEmpty() ? "normal" : currentFeature;
            textView.getPaint().setFontFeatureSettings(str);
            if (Build.VERSION.SDK_INT >= 21) {
                textView.setFontFeatureSettings(str);
            }
            textView.requestLayout();
            textView.invalidate();
        }
    }

    /* loaded from: classes.dex */
    public interface fontDialogInterface {
        void onOkButton(spansIntervals spansintervals);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public spansIntervals getResultingFonts() {
        return ((textSelector) this.view.findViewById(R.id.textFont)).getFontsIds();
    }

    private void setupOtButton(View view, String str, String str2) {
        View findViewWithTag = view.findViewWithTag(str);
        if (findViewWithTag != null) {
            findViewWithTag.setOnClickListener(new OtClickListener(this, str2));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.previewFonts == null || this.previewText == null) {
            dismiss();
        }
        this.viewPager = (ViewPager) this.view.findViewById(R.id.fonts_pager);
        this.titleStrip = (SlidingTabLayout) this.view.findViewById(R.id.fonts_titleStrip);
        ((textSelector) this.view.findViewById(R.id.textFont)).setFonts(this.previewFonts);
        ((textSelector) this.view.findViewById(R.id.textFont)).updateText(this.previewText);
        this.viewPager.setAdapter(new FontDialogPagerAdapter(getChildFragmentManager(), getActivity().getApplicationContext(), (textSelector) this.view.findViewById(R.id.textFont)));
        this.titleStrip.setDistributeEvenly(true);
        this.titleStrip.setViewPager(this.viewPager);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.view = layoutInflater.inflate(R.layout.font_dialog, viewGroup);
        getDialog().requestWindowFeature(1);
        getDialog().getWindow().setFlags(1024, 1024);
        ((textSelector) this.view.findViewById(R.id.textFont)).setParentTouchInterceptor((ScrollView) this.view.findViewById(R.id.textFontScroll));
        Button button = (Button) this.view.findViewById(R.id.font_dialog_ok);
        Button button2 = (Button) this.view.findViewById(R.id.font_dialog_cancel);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.font.fontDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                fontDialogFragment fontdialogfragment = fontDialogFragment.this;
                fontDialogInterface fontdialoginterface = fontdialogfragment.fo;
                if (fontdialoginterface != null) {
                    fontdialoginterface.onOkButton(fontdialogfragment.getResultingFonts());
                }
                fontDialogFragment.this.dismiss();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.font.fontDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                fontDialogFragment.this.dismiss();
            }
        });
        setupOtButton(this.view, "ot_all", "'aalt' 1, 'calt' 1, 'clig' 1, 'curs' 1, 'dlig' 1, 'fina' 1, 'hlig' 1, 'init' 1, 'isol' 1, 'jalt' 1, 'kalt' 1, 'liga' 1, 'locl' 1, 'mark' 1, 'medi' 1, 'mkmk' 1, 'ccmp' 1, 'rlig' 1, 'salt' 1, 'swsh' 1, 'titl' 1, 'ss01' 1, 'ss02' 1, 'ss03' 1, 'ss04' 1, 'ss05' 1, 'ss06' 1, 'ss07' 1, 'ss08' 1, 'ss09' 1, 'ss10' 1, 'ss11' 1, 'ss12' 1, 'ss13' 1, 'ss14' 1, 'ss15' 1, 'ss16' 1, 'ss17' 1, 'ss18' 1, 'ss19' 1, 'ss20' 1");
        setupOtButton(this.view, "ot_reset", "normal");
        setupOtButton(this.view, "ot_swsh", "'swsh' 1");
        setupOtButton(this.view, "ot_calt", "'calt' 1");
        setupOtButton(this.view, "ot_dlig", "'dlig' 1");
        setupOtButton(this.view, "ot_jalt", "'jalt' 1");
        setupOtButton(this.view, "ot_liga", "'liga' 1");
        setupOtButton(this.view, "ot_aalt", "'aalt' 1");
        setupOtButton(this.view, "ot_locl", "'locl' 1");
        setupOtButton(this.view, "ot_salt", "'salt' 1");
        setupOtButton(this.view, "ot_mark", "'mark' 1");
        setupOtButton(this.view, "ot_mkmk", "'mkmk' 1");
        setupOtButton(this.view, "ot_ccmp", "'ccmp' 1");
        setupOtButton(this.view, "ot_fina", "'fina' 1");
        setupOtButton(this.view, "ot_medi", "'medi' 1");
        setupOtButton(this.view, "ot_init", "'init' 1");
        setupOtButton(this.view, "ot_rlig", "'rlig' 1");
        setupOtButton(this.view, "ot_fwid", "'fwid' 1");
        setupOtButton(this.view, "ot_ss01", "'ss01' 1");
        setupOtButton(this.view, "ot_ss02", "'ss02' 1");
        setupOtButton(this.view, "ot_ss03", "'ss03' 1");
        setupOtButton(this.view, "ot_ss04", "'ss04' 1");
        setupOtButton(this.view, "ot_ss05", "'ss05' 1");
        setupOtButton(this.view, "ot_ss06", "'ss06' 1");
        setupOtButton(this.view, "ot_ss07", "'ss07' 1");
        setupOtButton(this.view, "ot_ss08", "'ss08' 1");
        setupOtButton(this.view, "ot_clig", "'clig' 1");
        setupOtButton(this.view, "ot_hlig", "'hlig' 1");
        setupOtButton(this.view, "ot_kalt", "'kalt' 1");
        setupOtButton(this.view, "ot_titl", "'titl' 1");
        setupOtButton(this.view, "ot_ss09", "'ss09' 1");
        setupOtButton(this.view, "ot_ss10", "'ss10' 1");
        setupOtButton(this.view, "ot_ss11", "'ss11' 1");
        setupOtButton(this.view, "ot_ss12", "'ss12' 1");
        setupOtButton(this.view, "ot_ss13", "'ss13' 1");
        setupOtButton(this.view, "ot_ss14", "'ss14' 1");
        setupOtButton(this.view, "ot_ss15", "'ss15' 1");
        setupOtButton(this.view, "ot_ss16", "'ss16' 1");
        setupOtButton(this.view, "ot_ss17", "'ss17' 1");
        setupOtButton(this.view, "ot_ss18", "'ss18' 1");
        setupOtButton(this.view, "ot_ss19", "'ss19' 1");
        setupOtButton(this.view, "ot_ss20", "'ss20' 1");
        return this.view;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        try {
            getDialog().getWindow().setLayout(-1, -1);
            getDialog().getWindow().setFlags(1024, 1024);
        } catch (Exception unused) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    public void setInitParams(String str, spansIntervals spansintervals) {
        this.previewText = str;
        this.previewFonts = spansintervals;
    }

    public void setInterface(fontDialogInterface fontdialoginterface) {
        this.fo = fontdialoginterface;
    }
}
