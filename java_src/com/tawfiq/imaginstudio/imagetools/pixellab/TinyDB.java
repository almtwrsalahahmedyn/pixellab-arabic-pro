package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class TinyDB {
    public static String lastImagePath = "";
    String DEFAULT_APP_IMAGEDATA_DIRECTORY;
    Context mContext;
    File mFolder = null;
    SharedPreferences preferences;

    public TinyDB(Context context) {
        this.mContext = context;
        this.preferences = PreferenceManager.getDefaultSharedPreferences(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x003c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean saveBitmapPNG(java.lang.String r5, android.graphics.Bitmap r6) {
        /*
            r4 = this;
            r0 = 0
            if (r5 == 0) goto L6f
            if (r6 != 0) goto L7
            goto L6f
        L7:
            java.io.File r1 = new java.io.File
            r1.<init>(r5)
            boolean r5 = r1.exists()
            if (r5 == 0) goto L19
            boolean r5 = r1.delete()
            if (r5 != 0) goto L19
            return r0
        L19:
            boolean r5 = r1.createNewFile()     // Catch: java.io.IOException -> L1e
            goto L23
        L1e:
            r5 = move-exception
            r5.printStackTrace()
            r5 = 0
        L23:
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L33
            r2.<init>(r1)     // Catch: java.lang.Exception -> L33
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Exception -> L31
            r3 = 100
            boolean r6 = r6.compress(r1, r3, r2)     // Catch: java.lang.Exception -> L31
            goto L39
        L31:
            r6 = move-exception
            goto L35
        L33:
            r6 = move-exception
            r2 = 0
        L35:
            r6.printStackTrace()
            r6 = 0
        L39:
            r1 = 1
            if (r2 == 0) goto L5d
            r2.flush()     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            r2.close()     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            r3 = 1
            goto L5e
        L44:
            r5 = move-exception
            goto L54
        L46:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L44
            r2.close()     // Catch: java.io.IOException -> L4e
            goto L52
        L4e:
            r2 = move-exception
            r2.printStackTrace()
        L52:
            r3 = 0
            goto L68
        L54:
            r2.close()     // Catch: java.io.IOException -> L58
            goto L5c
        L58:
            r6 = move-exception
            r6.printStackTrace()
        L5c:
            throw r5
        L5d:
            r3 = 0
        L5e:
            if (r2 == 0) goto L68
            r2.close()     // Catch: java.io.IOException -> L64
            goto L68
        L64:
            r2 = move-exception
            r2.printStackTrace()
        L68:
            if (r5 == 0) goto L6f
            if (r6 == 0) goto L6f
            if (r3 == 0) goto L6f
            r0 = 1
        L6f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.TinyDB.saveBitmapPNG(java.lang.String, android.graphics.Bitmap):boolean");
    }

    private String setupFolderPath(String str) {
        File file = new File(Environment.getExternalStorageDirectory(), this.DEFAULT_APP_IMAGEDATA_DIRECTORY);
        this.mFolder = file;
        if (!file.exists()) {
            this.mFolder.mkdirs();
        }
        return this.mFolder.getPath() + '/' + str;
    }

    public void clear() {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.clear();
        edit.apply();
    }

    public Boolean deleteImage(String str) {
        return Boolean.valueOf(new File(str).delete());
    }

    public Map<String, ?> getAll() {
        return this.preferences.getAll();
    }

    public boolean getBoolean(String str) {
        return this.preferences.getBoolean(str, false);
    }

    public boolean getBoolean(String str, boolean z) {
        return this.preferences.getBoolean(str, z);
    }

    public double getDouble(String str) {
        try {
            return Double.parseDouble(getString(str));
        } catch (NumberFormatException unused) {
            return 0.0d;
        }
    }

    public float getFloat(String str) {
        return this.preferences.getFloat(str, 0.0f);
    }

    public Bitmap getImage(String str) {
        try {
            return BitmapFactory.decodeFile(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public int getInt(String str) {
        return this.preferences.getInt(str, 0);
    }

    public ArrayList<String> getList(String str) {
        return new ArrayList<>(Arrays.asList(TextUtils.split(this.preferences.getString(str, ""), "‚‗‚")));
    }

    public ArrayList<Boolean> getListBoolean(String str) {
        ArrayList<String> list = getList(str);
        ArrayList<Boolean> arrayList = new ArrayList<>();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().equals("true") ? Boolean.TRUE : Boolean.FALSE);
        }
        return arrayList;
    }

    public ArrayList<Double> getListDouble(String str) {
        ArrayList arrayList = new ArrayList(Arrays.asList(TextUtils.split(this.preferences.getString(str, ""), "â€šâ€—â€š")));
        ArrayList<Double> arrayList2 = new ArrayList<>();
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList2.add(Double.valueOf(Double.parseDouble((String) arrayList.get(i))));
        }
        return arrayList2;
    }

    public ArrayList<Integer> getListInt(String str) {
        ArrayList arrayList = new ArrayList(Arrays.asList(TextUtils.split(this.preferences.getString(str, ""), "‚‗‚")));
        ArrayList<Integer> arrayList2 = new ArrayList<>();
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList2.add(Integer.valueOf(Integer.parseInt((String) arrayList.get(i))));
        }
        return arrayList2;
    }

    public long getLong(String str) {
        return this.preferences.getLong(str, 0L);
    }

    public String getSavedImagePath() {
        return lastImagePath;
    }

    public String getString(String str) {
        return this.preferences.getString(str, "");
    }

    public void putBoolean(String str, boolean z) {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.putBoolean(str, z);
        edit.apply();
    }

    public void putDouble(String str, double d) {
        putString(str, String.valueOf(d));
    }

    public void putFloat(String str, float f) {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.putFloat(str, f);
        edit.apply();
    }

    public String putImagePNG(String str, String str2, Bitmap bitmap) {
        this.DEFAULT_APP_IMAGEDATA_DIRECTORY = str;
        String str3 = setupFolderPath(str2);
        saveBitmapPNG(str3, bitmap);
        lastImagePath = str3;
        return str3;
    }

    public Boolean putImagePNGwithfullPath(String str, Bitmap bitmap) {
        return Boolean.valueOf(saveBitmapPNG(str, bitmap));
    }

    public void putInt(String str, int i) {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.putInt(str, i);
        edit.apply();
    }

    public void putList(String str, ArrayList<String> arrayList) {
        putList(str, arrayList, false);
    }

    public void putList(String str, ArrayList<String> arrayList, boolean z) {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.putString(str, TextUtils.join("‚‗‚", (String[]) arrayList.toArray(new String[arrayList.size()])));
        if (z) {
            edit.commit();
        } else {
            edit.apply();
        }
    }

    public void putListBoolean(String str, ArrayList<Boolean> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        Iterator<Boolean> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(it.next().booleanValue() ? "true" : "false");
        }
        putList(str, arrayList2);
    }

    public void putListDouble(String str, ArrayList<Double> arrayList) {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.putString(str, TextUtils.join("â€šâ€—â€š", (Double[]) arrayList.toArray(new Double[arrayList.size()])));
        edit.apply();
    }

    public void putListInt(String str, ArrayList<Integer> arrayList) {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.putString(str, TextUtils.join("‚‗‚", (Integer[]) arrayList.toArray(new Integer[arrayList.size()])));
        edit.apply();
    }

    public void putLong(String str, long j) {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.putLong(str, j);
        edit.apply();
    }

    public void putString(String str, String str2) {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.putString(str, str2);
        edit.apply();
    }

    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.preferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public void remove(String str) {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.remove(str);
        edit.apply();
    }

    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.preferences.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }
}
