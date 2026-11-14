package com.tawfiq.imaginstudio.imagetools.pixellab.controls;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_ui;
import com.tawfiq.imaginstudio.imagetools.pixellab.textContainer;
import com.tawfiq.imaginstudio.imagetools.pixellab.undo.History;

/* loaded from: classes.dex */
public class ShapesTab extends Fragment {
    View v;

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.ShapesTab$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements View.OnClickListener, DialogInterface.OnClickListener {
        final /* synthetic */ option_ui val$childOptionUi;

        public AnonymousClass1(option_ui option_uiVar) {
            this.val$childOptionUi = option_uiVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            textContainer textcontainer;
            ShapeComponent currentShape;
            MainActivity mainActivity = (MainActivity) ShapesTab.this.getActivity();
            if (mainActivity != null && (textcontainer = mainActivity.textContain) != null && (currentShape = textcontainer.getCurrentShape()) != null) {
                currentShape.setBlendMode(i);
            }
            dialogInterface.dismiss();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((MainActivity) ShapesTab.this.getActivity()).doActionFor(this.val$childOptionUi.actionDo, History.ComponentType.shape);
        }
    }

    public void addClickListenersTo(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof option_ui) {
                option_ui option_uiVar = (option_ui) childAt;
                option_uiVar.setActionEvent(new AnonymousClass1(option_uiVar));
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_shapes_tab, viewGroup, false);
        this.v = inflate;
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(R.id.shape_unselected);
        ViewGroup viewGroup3 = (ViewGroup) this.v.findViewById(R.id.shape_selected);
        addClickListenersTo(viewGroup2);
        addClickListenersTo(viewGroup3);
        return this.v;
    }

    public void togglePanels(boolean z, int i) {
        View view = this.v;
        if (view != null) {
            View findViewById = view.findViewById(R.id.shape_unselected);
            View findViewById2 = this.v.findViewById(R.id.shape_selected);
            this.v.findViewById(R.id.ui_shape_reselect).setVisibility((i == ShapeComponent.SHAPE_TYPE_GALLERY || i == ShapeComponent.SHAPE_TYPE_STICKER) ? 0 : 8);
            this.v.findViewById(R.id.ui_shape_edit_bezier).setVisibility(i == ShapeComponent.SHAPE_TYPE_BEZIER ? 0 : 8);
            this.v.findViewById(R.id.ui_shape_edit_shape).setVisibility(i == ShapeComponent.SHAPE_TYPE_SHAPE ? 0 : 8);
            this.v.findViewById(R.id.ui_shape_edit_arrow).setVisibility(i == ShapeComponent.SHAPE_TYPE_ARROW ? 0 : 8);
            findViewById.setVisibility(!z ? 0 : 8);
            findViewById2.setVisibility(z ? 0 : 8);
        }
    }
}
