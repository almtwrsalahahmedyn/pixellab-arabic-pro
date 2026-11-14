package com.gun0912.tedpermission;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.gun0912.tedpermission.provider.TedPermissionProvider;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class TedPermissionUtil {
    private static final String PREFS_IS_FIRST_REQUEST = "IS_FIRST_REQUEST";
    private static final String PREFS_NAME_PERMISSION = "PREFS_NAME_PERMISSION";
    public static final int REQ_CODE_REQUEST_SETTING = 2000;
    private static final Context context = TedPermissionProvider.context;

    public static boolean canRequestPermission(Activity activity, String... strArr) {
        if (isFirstRequest(strArr)) {
            return true;
        }
        for (String str : strArr) {
            int i = ActivityCompat.$r8$clinit;
            boolean shouldShowRequestPermissionRationale = Build.VERSION.SDK_INT >= 23 ? activity.shouldShowRequestPermissionRationale(str) : false;
            if (isDenied(str) && !shouldShowRequestPermissionRationale) {
                return false;
            }
        }
        return true;
    }

    public static List<String> getDeniedPermissions(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (isDenied(str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    private static String getPrefsNamePermission(String str) {
        return "IS_FIRST_REQUEST_" + str;
    }

    public static Intent getSettingIntent() {
        return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.parse("package:" + context.getPackageName()));
    }

    private static SharedPreferences getSharedPreferences() {
        return context.getSharedPreferences(PREFS_NAME_PERMISSION, 0);
    }

    public static boolean isDenied(String str) {
        return !isGranted(str);
    }

    private static boolean isFirstRequest(String str) {
        return getSharedPreferences().getBoolean(getPrefsNamePermission(str), true);
    }

    private static boolean isFirstRequest(String[] strArr) {
        for (String str : strArr) {
            if (!isFirstRequest(str)) {
                return false;
            }
        }
        return true;
    }

    private static boolean isGranted(String str) {
        if (!str.equals("android.permission.SYSTEM_ALERT_WINDOW")) {
            return ContextCompat.checkSelfPermission(context, str) == 0;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return Settings.canDrawOverlays(context);
        }
        return true;
    }

    public static boolean isGranted(String... strArr) {
        for (String str : strArr) {
            if (isDenied(str)) {
                return false;
            }
        }
        return true;
    }

    private static void setFirstRequest(String str) {
        getSharedPreferences().edit().putBoolean(getPrefsNamePermission(str), false).apply();
    }

    public static void setFirstRequest(String[] strArr) {
        for (String str : strArr) {
            setFirstRequest(str);
        }
    }

    public static void startSettingActivityForResult(Activity activity) {
        startSettingActivityForResult(activity, REQ_CODE_REQUEST_SETTING);
    }

    public static void startSettingActivityForResult(Activity activity, int i) {
        activity.startActivityForResult(getSettingIntent(), i);
    }

    public static void startSettingActivityForResult(Fragment fragment) {
        startSettingActivityForResult(fragment, REQ_CODE_REQUEST_SETTING);
    }

    public static void startSettingActivityForResult(Fragment fragment, int i) {
        fragment.startActivityForResult(getSettingIntent(), i);
    }
}
