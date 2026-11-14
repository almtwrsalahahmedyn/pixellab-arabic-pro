package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class CustomTextMenu extends PopupWindow {

    /* renamed from: short, reason: not valid java name */
    private static final short[] f33short = {1391, 1321, 1401, 1321, 1401, 1321, 1401, 1451, 961, 1476, 1454, 1446, 1455, 1444, 1452, 974, 1481, 1450, 1475, 1454, 1496, 1503, 1451, 1444, 1039, 1049, 1055, 1049, 1055, 1049, 1055};
    private Context currContext;
    private final int horPadding;
    private LinearLayout itemsContainer;
    LinearLayout.LayoutParams lParamsSep;
    LinearLayout.LayoutParams lParamsText;
    private int largestChildWidth;
    private final int maxWidth;
    private ScrollView popupView;
    private ArrayList<View> proItems;
    private final int verPadding;

    public CustomTextMenu(Context context) {
        super(context);
        this.horPadding = m482(13);
        this.verPadding = m482(3);
        this.maxWidth = m482(300);
        this.largestChildWidth = m482(30);
        this.proItems = new ArrayList<>();
        this.currContext = context;
        this.popupView = new ScrollView(context);
        LinearLayout linearLayout = new LinearLayout(context);
        this.itemsContainer = linearLayout;
        C0028.m509(linearLayout, 1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        this.lParamsText = layoutParams;
        int m482 = m482(2);
        layoutParams.topMargin = m482;
        layoutParams.bottomMargin = m482;
        C0030.m534(m484(this), m492(this));
        C0028.m496(this, m484(this));
        C0030.m542(this, -2);
        C0030.m528(this, -2);
        C0029.m513(this, C0030.m540(context, R.drawable.quick_edit_bg));
        C0032.m557(this, true);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, m482(1));
        this.lParamsSep = layoutParams2;
        int m4822 = m482(1);
        layoutParams2.rightMargin = m4822;
        layoutParams2.leftMargin = m4822;
    }

    private void addSeparator(boolean z) {
        View view = new View(m479(this));
        C0029.m523(view, new ColorDrawable(C0028.m497(C0030.m545(m483(), 0, 7, 1356))));
        C0030.m538(m492(this), view, m487(this));
        if (z) {
            C0030.m537(m491(this), view);
        }
    }

    private View createItem(int i, final Runnable runnable, boolean z) {
        final TextView textView = new TextView(m479(this));
        if (i == R.string.action_about) {
            C0032.m558(textView, C0030.m545(m483(), 7, 17, 1006));
        } else {
            C0032.m553(textView, i);
        }
        C0030.m539(textView, new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.CustomTextMenu.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                runnable.run();
                CustomTextMenu.this.dismiss();
            }
        });
        m486(this, textView);
        if (!z) {
            return textView;
        }
        LinearLayout linearLayout = new LinearLayout(m479(this));
        C0028.m504(linearLayout, 16);
        C0028.m506(linearLayout, new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.-$$Lambda$CustomTextMenu$ms0pZ-9USjH-hv1hNba3IKEMi0k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0029.m518(textView);
            }
        });
        C0032.m560(linearLayout, textView);
        Drawable m540 = C0030.m540(m479(this), R.drawable.crown);
        ImageView imageView = new ImageView(m479(this));
        C0030.m532(imageView, m540);
        C0032.m560(linearLayout, imageView);
        return linearLayout;
    }

    private void defaultTextSettings(TextView textView) {
        textView.setTextSize(2, 18.0f);
        textView.setTextColor(-1);
        textView.setMaxLines(1);
        textView.setSingleLine(true);
        textView.setMaxWidth(this.maxWidth);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        int i = this.horPadding;
        int i2 = this.verPadding;
        textView.setPadding(i, i2, i, i2);
        textView.setBackgroundDrawable(ContextCompat.getDrawable(this.currContext, R.drawable.menu_item_bg));
    }

    /* renamed from: ۟۟۠۠ۤ, reason: not valid java name and contains not printable characters */
    public static Context m479(Object obj) {
        if (C0028.m503() > 0) {
            return ((CustomTextMenu) obj).currContext;
        }
        return null;
    }

    /* renamed from: ۟۟ۦۣۤ, reason: not valid java name and contains not printable characters */
    public static int m480(Object obj) {
        if (C0032.m566() <= 0) {
            return ((CustomTextMenu) obj).horPadding;
        }
        return 0;
    }

    /* renamed from: ۟ۡۧۡ۠, reason: not valid java name and contains not printable characters */
    public static void m481(Object obj, boolean z) {
        if (C0030.m541() > 0) {
            ((CustomTextMenu) obj).addSeparator(z);
        }
    }

    /* renamed from: ۟ۢۤ۠ۦ, reason: not valid java name and contains not printable characters */
    public static int m482(int i) {
        if (C0032.m566() <= 0) {
            return commonFuncs.dpToPxInt(i);
        }
        return 0;
    }

    /* renamed from: ۟ۢۦۣۡ, reason: not valid java name and contains not printable characters */
    public static short[] m483() {
        if (C0032.m566() < 0) {
            return f33short;
        }
        return null;
    }

    /* renamed from: ۣ۟ۢۨ۟, reason: not valid java name and contains not printable characters */
    public static ScrollView m484(Object obj) {
        if (C0032.m566() < 0) {
            return ((CustomTextMenu) obj).popupView;
        }
        return null;
    }

    /* renamed from: ۟ۤۤۤۡ, reason: not valid java name and contains not printable characters */
    public static View m485(Object obj, int i, Object obj2, boolean z) {
        if (C0028.m503() > 0) {
            return ((CustomTextMenu) obj).createItem(i, (Runnable) obj2, z);
        }
        return null;
    }

    /* renamed from: ۟ۥۣۨۥ, reason: not valid java name and contains not printable characters */
    public static void m486(Object obj, Object obj2) {
        if (C0030.m541() > 0) {
            ((CustomTextMenu) obj).defaultTextSettings((TextView) obj2);
        }
    }

    /* renamed from: ۟ۥۦۢ۟, reason: not valid java name and contains not printable characters */
    public static LinearLayout.LayoutParams m487(Object obj) {
        if (C0030.m541() >= 0) {
            return ((CustomTextMenu) obj).lParamsSep;
        }
        return null;
    }

    /* renamed from: ۢۢۥۧ, reason: not valid java name and contains not printable characters */
    public static int m488(Object obj) {
        if (C0028.m503() >= 0) {
            return ((CustomTextMenu) obj).verPadding;
        }
        return 0;
    }

    /* renamed from: ۤ۟ۢ۠, reason: not valid java name and contains not printable characters */
    public static LinearLayout.LayoutParams m489(Object obj) {
        if (C0029.m519() >= 0) {
            return ((CustomTextMenu) obj).lParamsText;
        }
        return null;
    }

    /* renamed from: ۥ۠۟ۨ, reason: contains not printable characters */
    public static int m490(Object obj) {
        if (C0028.m503() >= 0) {
            return ((CustomTextMenu) obj).maxWidth;
        }
        return 0;
    }

    /* renamed from: ۥ۠ۦ۠, reason: contains not printable characters */
    public static ArrayList m491(Object obj) {
        if (C0032.m566() <= 0) {
            return ((CustomTextMenu) obj).proItems;
        }
        return null;
    }

    /* renamed from: ۥۥ۟ۤ, reason: contains not printable characters */
    public static LinearLayout m492(Object obj) {
        if (C0029.m519() >= 0) {
            return ((CustomTextMenu) obj).itemsContainer;
        }
        return null;
    }

    /* renamed from: ۨۧۢۦ, reason: not valid java name and contains not printable characters */
    public static int m493(Object obj) {
        if (C0028.m503() > 0) {
            return ((CustomTextMenu) obj).largestChildWidth;
        }
        return 0;
    }

    public void addItem(int i, Runnable runnable) {
        C0028.m499(this, i, runnable, false);
    }

    public void addItem(int i, Runnable runnable, boolean z) {
        View m485 = m485(this, i, runnable, z);
        C0028.m495(m485, 0, 0);
        int m564 = C0032.m564(m485);
        if (m564 > m493(this)) {
            this.largestChildWidth = m564;
        }
        C0030.m538(m492(this), m485, m489(this));
        m481(this, z);
        if (z) {
            C0030.m537(m491(this), m485);
        }
    }

    public void done() {
        View m525 = C0029.m525(m492(this), C0029.m526(r0) - 1);
        if (m525 != null && !(m525 instanceof TextView)) {
            C0029.m520(m492(this), m525);
        }
        this.largestChildWidth = C0029.m527(m493(this), m490(this));
        for (int i = 0; i < C0029.m526(m492(this)); i++) {
            View m5252 = C0029.m525(m492(this), i);
            if (m5252 instanceof TextView) {
                C0029.m524(m5252).width = m493(this);
                C0029.m522(m5252);
            }
        }
    }

    public void hideFirstItem(boolean z) {
        C0030.m535(C0029.m525(m492(this), 0), z ? 8 : 0);
        if (C0029.m526(m492(this)) > 2) {
            C0030.m535(C0029.m525(m492(this), 1), z ? 8 : 0);
        }
    }

    public void toggleProItems(boolean z) {
        Iterator m516 = C0029.m516(m491(this));
        while (C0032.m559(m516)) {
            C0030.m535((View) C0032.m565(m516), z ? 0 : 8);
        }
    }
}
