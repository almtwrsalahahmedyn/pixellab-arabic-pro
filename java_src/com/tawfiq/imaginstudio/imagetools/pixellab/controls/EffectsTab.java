package com.tawfiq.imaginstudio.imagetools.pixellab.controls;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_ui;
import com.tawfiq.imaginstudio.imagetools.pixellab.undo.History;

/* loaded from: classes.dex */
public class EffectsTab extends Fragment {
    View v;

    public void addClickListenersTo(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof option_ui) {
                final option_ui option_uiVar = (option_ui) childAt;
                option_uiVar.setActionEvent(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.EffectsTab.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ((MainActivity) EffectsTab.this.getActivity()).doActionFor(option_uiVar.actionDo, History.ComponentType.bg);
                    }
                });
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_effects_tab, viewGroup, false);
        this.v = inflate;
        addClickListenersTo((ViewGroup) inflate.findViewById(R.id.effects_controls));
        return this.v;
    }
}
