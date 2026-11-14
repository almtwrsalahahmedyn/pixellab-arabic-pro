package com.tawfiq.imaginstudio.imagetools.pixellab.controls;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/* loaded from: classes.dex */
public class CustomStickerSaver {
    public static void saveImageFromIntent(Context context, Intent intent) {
        String str;
        if (intent == null || (str = CustomFolderTabClick.currentFolderPath) == null) {
            return;
        }
        ClipData clipData = intent.getClipData();
        if (clipData != null) {
            int itemCount = clipData.getItemCount();
            for (int i = 0; i < itemCount; i++) {
                saveSingleUri(context, clipData.getItemAt(i).getUri(), str);
            }
        } else {
            Uri data = intent.getData();
            if (data != null) {
                saveSingleUri(context, data, str);
            }
        }
        CustomFolderTabClick customFolderTabClick = CustomFolderTabClick.currentTabListener;
        if (customFolderTabClick != null) {
            customFolderTabClick.onClick(null);
        }
        Toast.makeText(context, "تمت إضافة الصور بنجاح!", 0).show();
    }

    private static void saveSingleUri(Context context, Uri uri, String str) {
        if (uri == null) {
            return;
        }
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            if (openInputStream == null) {
                return;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(new File(str + "/sticker_" + System.nanoTime() + ".png"));
            byte[] bArr = new byte[4096];
            while (true) {
                int read = openInputStream.read(bArr);
                if (read == -1) {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    openInputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
