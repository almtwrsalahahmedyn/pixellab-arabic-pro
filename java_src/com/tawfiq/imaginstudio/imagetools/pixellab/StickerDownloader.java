package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.AlertDialog;

/* loaded from: classes.dex */
public class StickerDownloader implements Runnable {
    private MainActivity activity;
    private boolean isNotPngError = false;
    private String savedPath;
    private AlertDialog searchDialog;
    private String urlStr;

    public StickerDownloader(MainActivity mainActivity, String str, AlertDialog alertDialog) {
        this.activity = mainActivity;
        this.urlStr = str;
        this.searchDialog = alertDialog;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x008a, code lost:
    
        if (r4.contains("jpg") == false) goto L21;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.StickerDownloader.run():void");
    }
}
