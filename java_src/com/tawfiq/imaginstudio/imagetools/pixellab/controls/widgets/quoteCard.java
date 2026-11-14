package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;

/* loaded from: classes.dex */
public class quoteCard extends RelativeLayout {
    TextView quoteHolder;

    public quoteCard(Context context, String str, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        super(context);
        View inflate = RelativeLayout.inflate(getContext(), R.layout.quote_card, this);
        TextView textView = (TextView) findViewById(R.id.quoteText);
        this.quoteHolder = textView;
        textView.setText(str);
        setOnClickListener(onClickListener);
        setOnLongClickListener(onLongClickListener);
        int i = getContext().getSharedPreferences("theme_prefs", 0).getInt("app_color", -16747918);
        if (textView != null) {
            textView.setBackgroundColor(i);
            View view = (View) textView.getParent();
            if (view != null) {
                view.setBackgroundColor(i);
            }
        }
        setBackgroundColor(i);
        if (inflate != null) {
            inflate.setBackgroundColor(i);
        }
    }

    public void setQuote(String str) {
        this.quoteHolder.setText(str);
    }
}
