package com.tawfiq.imaginstudio.imagetools.pixellab.controls;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_ui;
import com.tawfiq.imaginstudio.imagetools.pixellab.undo.History;

/* loaded from: classes.dex */
public class TextTab extends Fragment {
    View v;

    public void addClickListenersTo(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof option_ui) {
                final option_ui option_uiVar = (option_ui) childAt;
                option_uiVar.setActionEvent(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.TextTab.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ((MainActivity) TextTab.this.getActivity()).doActionFor(option_uiVar.actionDo, History.ComponentType.text);
                    }
                });
            }
        }
    }

    public Rect getTextStylesButtonRegion() {
        View findViewById = this.v.findViewById(R.id.ui_text_styles);
        if (findViewById == null) {
            return null;
        }
        int[] iArr = {0, 0};
        findViewById.getLocationInWindow(iArr);
        Rect rect = new Rect(0, 0, findViewById.getWidth(), findViewById.getHeight());
        rect.offset(iArr[0], iArr[1]);
        return rect;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_text_tab, viewGroup, false);
        this.v = inflate;
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(R.id.text_unselected);
        ViewGroup viewGroup3 = (ViewGroup) this.v.findViewById(R.id.text_selected);
        addClickListenersTo(viewGroup2);
        ArabicTextEnhancer.addJustifyOptionToTextTab(viewGroup3);
        addClickListenersTo(viewGroup3);
        togglePanels(((MainActivity) getActivity()).textContain.curr_id != -1);
        return this.v;
    }

    public void togglePanels(boolean z) {
        View view = this.v;
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.text_unselected);
            ViewGroup viewGroup2 = (ViewGroup) this.v.findViewById(R.id.text_selected);
            viewGroup.setVisibility(!z ? 0 : 8);
            viewGroup2.setVisibility(z ? 0 : 8);
        }
    }
}
