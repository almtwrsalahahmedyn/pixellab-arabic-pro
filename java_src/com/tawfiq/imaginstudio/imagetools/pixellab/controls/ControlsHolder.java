package com.tawfiq.imaginstudio.imagetools.pixellab.controls;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager.widget.ViewPager;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.textContainer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ControlsHolder extends Fragment implements View.OnClickListener {
    ImageButton bgButton;
    BgTab bgtab;
    ArrayList<ImageButton> buttonArrayList;
    private MainActivity callback;
    ImageButton effectsButton;
    TabsAdapter pageAdapter;
    ViewPager pager;
    ImageButton shapeButton;
    ShapesTab shapestab;
    ImageButton textButton;
    TextTab texttab;
    ImageButton themesButton;
    ThemesTab themesTab;
    int unselectedColor = Color.parseColor("#FFFFFFFF");
    int selectedColor = Color.parseColor("#FFFF3FFF");

    private List<Fragment> getFragments() {
        ArrayList arrayList = new ArrayList();
        this.texttab = new TextTab();
        this.shapestab = new ShapesTab();
        this.themesTab = new ThemesTab();
        this.bgtab = new BgTab();
        arrayList.add(this.themesTab);
        arrayList.add(this.texttab);
        arrayList.add(this.shapestab);
        arrayList.add(this.bgtab);
        arrayList.add(new EffectsTab());
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ShapeComponent getSelectedShape() {
        textContainer textcontainer;
        int i;
        MainActivity mainActivity = this.callback;
        if (mainActivity == null || (i = (textcontainer = mainActivity.textContain).curr_id_shape) == -1) {
            return null;
        }
        return textcontainer.shapes.get(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public textContainer getTextContainer() {
        MainActivity mainActivity = this.callback;
        if (mainActivity != null) {
            return mainActivity.textContain;
        }
        return null;
    }

    private void initTabsLogic(View view) {
        this.themesButton.setOnClickListener(this);
        this.textButton.setOnClickListener(this);
        this.shapeButton.setOnClickListener(this);
        this.bgButton.setOnClickListener(this);
        this.effectsButton.setOnClickListener(this);
        this.pager.setOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.ControlsHolder.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                ControlsHolder controlsHolder = ControlsHolder.this;
                controlsHolder.underLineTab(controlsHolder.buttonArrayList.get(i));
                ControlsHolder controlsHolder2 = ControlsHolder.this;
                if (i == controlsHolder2.buttonArrayList.indexOf(controlsHolder2.shapeButton)) {
                    ControlsHolder controlsHolder3 = ControlsHolder.this;
                    if (controlsHolder3.shapestab == null || controlsHolder3.getSelectedShape() == null || ControlsHolder.this.getTextContainer() == null) {
                        return;
                    }
                    ControlsHolder controlsHolder4 = ControlsHolder.this;
                    controlsHolder4.shapestab.togglePanels(controlsHolder4.getTextContainer().curr_id_shape != -1, ControlsHolder.this.getSelectedShape().getShapeType());
                    return;
                }
                ControlsHolder controlsHolder5 = ControlsHolder.this;
                if (i == controlsHolder5.buttonArrayList.indexOf(controlsHolder5.textButton)) {
                    ControlsHolder controlsHolder6 = ControlsHolder.this;
                    if (controlsHolder6.texttab == null || controlsHolder6.getTextContainer() == null) {
                        return;
                    }
                    ControlsHolder controlsHolder7 = ControlsHolder.this;
                    controlsHolder7.texttab.togglePanels(controlsHolder7.getTextContainer().curr_id != -1);
                    return;
                }
                ControlsHolder controlsHolder8 = ControlsHolder.this;
                if (i == controlsHolder8.buttonArrayList.indexOf(controlsHolder8.bgButton)) {
                    ControlsHolder controlsHolder9 = ControlsHolder.this;
                    if (controlsHolder9.bgtab == null || controlsHolder9.callback == null) {
                        return;
                    }
                    ControlsHolder controlsHolder10 = ControlsHolder.this;
                    controlsHolder10.bgtab.toggleCropButton(controlsHolder10.callback.hasBitmapBg());
                }
            }
        });
    }

    public int getTab() {
        return this.pager.getCurrentItem();
    }

    public Rect getTextStylesButtonRegion() {
        TextTab textTab = this.texttab;
        if (textTab != null) {
            return textTab.getTextStylesButtonRegion();
        }
        return null;
    }

    public void informBgTypeChanged(boolean z) {
        BgTab bgTab = this.bgtab;
        if (bgTab != null) {
            bgTab.toggleCropButton(z);
        }
    }

    public void informPresetsChanged() {
        ThemesTab themesTab = this.themesTab;
        if (themesTab != null) {
            themesTab.updateCustomProjectsVisibility();
        }
    }

    public void informShapeSelectionChanged(boolean z, int i) {
        ShapesTab shapesTab = this.shapestab;
        if (shapesTab != null) {
            shapesTab.togglePanels(z, i);
        }
    }

    public void informTextSelectionChanged(boolean z) {
        TextTab textTab = this.texttab;
        if (textTab != null) {
            textTab.togglePanels(z);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        this.callback = MainActivity.class.isAssignableFrom(activity.getClass()) ? (MainActivity) activity : null;
        super.onAttach(activity);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.pager.setCurrentItem(this.buttonArrayList.indexOf(view));
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = getArguments().getInt("currTab", 0);
        View inflate = layoutInflater.inflate(R.layout.fragment_controls_holder, viewGroup, false);
        this.pageAdapter = new TabsAdapter(getChildFragmentManager(), getFragments());
        ViewPager viewPager = (ViewPager) inflate.findViewById(R.id.viewpager);
        this.pager = viewPager;
        viewPager.setAdapter(this.pageAdapter);
        this.pager.setCurrentItem(i);
        this.themesButton = (ImageButton) inflate.findViewById(R.id.themeTabButton);
        this.textButton = (ImageButton) inflate.findViewById(R.id.textTabButton);
        this.shapeButton = (ImageButton) inflate.findViewById(R.id.shapeTabButton);
        this.bgButton = (ImageButton) inflate.findViewById(R.id.bgTabButton);
        this.effectsButton = (ImageButton) inflate.findViewById(R.id.effectsTabButton);
        ArrayList<ImageButton> arrayList = new ArrayList<>();
        this.buttonArrayList = arrayList;
        arrayList.add(this.themesButton);
        this.buttonArrayList.add(this.textButton);
        this.buttonArrayList.add(this.shapeButton);
        this.buttonArrayList.add(this.bgButton);
        this.buttonArrayList.add(this.effectsButton);
        initTabsLogic(inflate);
        underLineTab(this.buttonArrayList.get(i));
        FragmentActivity activity = getActivity();
        if (activity != null) {
            int i2 = activity.getSharedPreferences("theme_prefs", 0).getInt("app_color", -16747918);
            inflate.setBackgroundColor(i2);
            ImageButton imageButton = this.themesButton;
            if (imageButton != null) {
                View view = (View) imageButton.getParent();
                if (view != null) {
                    view.setBackgroundColor(i2);
                    View view2 = (View) view.getParent();
                    if (view2 != null) {
                        view2.setBackgroundColor(i2);
                    }
                }
                ImageButton imageButton2 = this.themesButton;
                if (imageButton2 != null) {
                    imageButton2.setBackgroundColor(i2);
                }
                ImageButton imageButton3 = this.textButton;
                if (imageButton3 != null) {
                    imageButton3.setBackgroundColor(i2);
                }
                ImageButton imageButton4 = this.shapeButton;
                if (imageButton4 != null) {
                    imageButton4.setBackgroundColor(i2);
                }
                ImageButton imageButton5 = this.bgButton;
                if (imageButton5 != null) {
                    imageButton5.setBackgroundColor(i2);
                }
                ImageButton imageButton6 = this.effectsButton;
                if (imageButton6 != null) {
                    imageButton6.setBackgroundColor(i2);
                }
            }
        }
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        this.callback = null;
        super.onDetach();
    }

    public void underLineTab(ImageButton imageButton) {
        ImageButton imageButton2 = this.themesButton;
        imageButton2.setColorFilter(imageButton.equals(imageButton2) ? this.selectedColor : this.unselectedColor);
        ImageButton imageButton3 = this.textButton;
        imageButton3.setColorFilter(imageButton.equals(imageButton3) ? this.selectedColor : this.unselectedColor);
        ImageButton imageButton4 = this.shapeButton;
        imageButton4.setColorFilter(imageButton.equals(imageButton4) ? this.selectedColor : this.unselectedColor);
        ImageButton imageButton5 = this.bgButton;
        imageButton5.setColorFilter(imageButton.equals(imageButton5) ? this.selectedColor : this.unselectedColor);
        ImageButton imageButton6 = this.effectsButton;
        imageButton6.setColorFilter(imageButton.equals(imageButton6) ? this.selectedColor : this.unselectedColor);
    }
}
