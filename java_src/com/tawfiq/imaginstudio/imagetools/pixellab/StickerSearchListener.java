package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.net.Uri;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public class StickerSearchListener implements DialogInterface.OnClickListener, View.OnLongClickListener, View.OnClickListener {
    private static MainActivity savedActivity;
    private static AlertDialog savedDialog;
    private static WebView savedWebView;
    private MainActivity activity;
    private EditText editText;

    /* loaded from: classes.dex */
    public class ConfirmDialog implements DialogInterface.OnClickListener {
        private MainActivity activity;
        private String imageUrl;
        private StickerSearchListener parentListener;

        public ConfirmDialog(StickerSearchListener stickerSearchListener, MainActivity mainActivity, String str) {
            this.parentListener = stickerSearchListener;
            this.activity = mainActivity;
            this.imageUrl = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AlertDialog searchDialog = this.parentListener.getSearchDialog();
            MainActivity mainActivity = this.activity;
            mainActivity.msg("جاري فحص الصورة وتحميلها...");
            new Thread(new StickerDownloader(mainActivity, this.imageUrl, searchDialog)).start();
        }
    }

    public StickerSearchListener(MainActivity mainActivity, EditText editText) {
        this.activity = mainActivity;
        this.editText = editText;
    }

    public static boolean resumeIfAvailable(MainActivity mainActivity) {
        AlertDialog alertDialog = savedDialog;
        if (alertDialog == null || savedActivity != mainActivity) {
            return false;
        }
        alertDialog.show();
        return true;
    }

    public AlertDialog getSearchDialog() {
        return savedDialog;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String trim = this.editText.getText().toString().trim();
        if (trim.isEmpty()) {
            return;
        }
        MainActivity mainActivity = this.activity;
        savedActivity = mainActivity;
        AlertDialog.Builder builder = new AlertDialog.Builder(mainActivity);
        builder.setTitle("اضغط مطولاً على أي صورة لإضافته");
        LinearLayout linearLayout = new LinearLayout(mainActivity);
        linearLayout.setOrientation(1);
        LinearLayout linearLayout2 = new LinearLayout(mainActivity);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(17);
        Button button = new Button(mainActivity);
        button.setText("◀ للخلف");
        button.setTag(1);
        button.setOnClickListener(this);
        linearLayout2.addView(button);
        Button button2 = new Button(mainActivity);
        button2.setText("للأمام ▶");
        button2.setTag(2);
        button2.setOnClickListener(this);
        linearLayout2.addView(button2);
        Button button3 = new Button(mainActivity);
        button3.setText("🔍 بحث جديد");
        button3.setTag(3);
        button3.setOnClickListener(this);
        linearLayout2.addView(button3);
        linearLayout.addView(linearLayout2);
        WebView webView = new WebView(mainActivity);
        webView.setFocusable(true);
        webView.setFocusableInTouchMode(true);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        webView.setWebViewClient(new WebViewClient());
        webView.setOnLongClickListener(this);
        webView.loadUrl("https://www.google.com/search?q=" + Uri.encode(trim) + "+Pinterest&tbm=isch&tbs=ic:trans");
        savedWebView = webView;
        linearLayout.addView(webView);
        builder.setView(linearLayout);
        builder.setNegativeButton("إغلاق", (DialogInterface.OnClickListener) null);
        savedDialog = builder.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        if (intValue == 1) {
            WebView webView = savedWebView;
            if (webView == null || !webView.canGoBack()) {
                return;
            }
            webView.goBack();
            return;
        }
        if (intValue == 2) {
            WebView webView2 = savedWebView;
            if (webView2 == null || !webView2.canGoForward()) {
                return;
            }
            webView2.goForward();
            return;
        }
        if (intValue == 3) {
            AlertDialog alertDialog = savedDialog;
            if (alertDialog != null) {
                alertDialog.dismiss();
            }
            savedDialog = null;
            savedWebView = null;
            this.activity.showStickerSearchDialog();
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        String extra;
        WebView.HitTestResult hitTestResult = ((WebView) view).getHitTestResult();
        if (hitTestResult == null) {
            return false;
        }
        int type = hitTestResult.getType();
        if ((type != 5 && type != 8) || (extra = hitTestResult.getExtra()) == null) {
            return false;
        }
        MainActivity mainActivity = this.activity;
        AlertDialog.Builder builder = new AlertDialog.Builder(mainActivity);
        builder.setTitle("إضافة ملحق (PNG)");
        builder.setMessage("هل تريد تحميل هذا الملحق إلى التصميم؟");
        builder.setPositiveButton("نعم، تحميل", new ConfirmDialog(this, mainActivity, extra));
        builder.setNegativeButton("إلغاء", (DialogInterface.OnClickListener) null);
        builder.show();
        return true;
    }
}
