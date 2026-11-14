package com.gun0912.tedpermission;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import com.gun0912.tedpermission.util.ObjectUtils;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;

/* loaded from: classes.dex */
public class TedPermissionActivity extends AppCompatActivity {
    public static final String EXTRA_DENIED_DIALOG_CLOSE_TEXT = "denied_dialog_close_text";
    public static final String EXTRA_DENY_MESSAGE = "deny_message";
    public static final String EXTRA_DENY_TITLE = "deny_title";
    public static final String EXTRA_PACKAGE_NAME = "package_name";
    public static final String EXTRA_PERMISSIONS = "permissions";
    public static final String EXTRA_RATIONALE_CONFIRM_TEXT = "rationale_confirm_text";
    public static final String EXTRA_RATIONALE_MESSAGE = "rationale_message";
    public static final String EXTRA_RATIONALE_TITLE = "rationale_title";
    public static final String EXTRA_SCREEN_ORIENTATION = "screen_orientation";
    public static final String EXTRA_SETTING_BUTTON = "setting_button";
    public static final String EXTRA_SETTING_BUTTON_TEXT = "setting_button_text";
    public static final int REQ_CODE_PERMISSION_REQUEST = 10;
    public static final int REQ_CODE_SYSTEM_ALERT_WINDOW_PERMISSION_REQUEST = 30;
    public static final int REQ_CODE_SYSTEM_ALERT_WINDOW_PERMISSION_REQUEST_SETTING = 31;
    private static Deque<PermissionListener> permissionListenerStack;
    String deniedCloseButtonText;
    CharSequence denyMessage;
    CharSequence denyTitle;
    boolean hasSettingButton;
    boolean isShownRationaleDialog;
    String packageName;
    String[] permissions;
    String rationaleConfirmText;
    CharSequence rationaleTitle;
    CharSequence rationale_message;
    int requestedOrientation;
    String settingButtonText;

    /* JADX INFO: Access modifiers changed from: private */
    public void checkPermissions(boolean z) {
        int i;
        ArrayList arrayList = new ArrayList();
        String[] strArr = this.permissions;
        int length = strArr.length;
        while (i < length) {
            String str = strArr[i];
            if (str.equals("android.permission.SYSTEM_ALERT_WINDOW")) {
                i = hasWindowPermission() ? i + 1 : 0;
                arrayList.add(str);
            } else {
                if (!TedPermissionUtil.isDenied(str)) {
                }
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            permissionResult(null);
            return;
        }
        if (z || (arrayList.size() == 1 && arrayList.contains("android.permission.SYSTEM_ALERT_WINDOW"))) {
            permissionResult(arrayList);
        } else if (this.isShownRationaleDialog || TextUtils.isEmpty(this.rationale_message)) {
            requestPermissions(arrayList);
        } else {
            showRationaleDialog(arrayList);
        }
    }

    private boolean hasWindowPermission() {
        return Settings.canDrawOverlays(getApplicationContext());
    }

    private boolean needWindowPermission() {
        for (String str : this.permissions) {
            if (str.equals("android.permission.SYSTEM_ALERT_WINDOW")) {
                return !hasWindowPermission();
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void permissionResult(List<String> list) {
        finish();
        overridePendingTransition(0, 0);
        Deque<PermissionListener> deque = permissionListenerStack;
        if (deque != null) {
            PermissionListener pop = deque.pop();
            if (ObjectUtils.isEmpty(list)) {
                pop.onPermissionGranted();
            } else {
                pop.onPermissionDenied(list);
            }
            if (permissionListenerStack.size() == 0) {
                permissionListenerStack = null;
            }
        }
    }

    private void requestWindowPermission() {
        final Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.fromParts("package", this.packageName, null));
        if (TextUtils.isEmpty(this.rationale_message)) {
            startActivityForResult(intent, 30);
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this, R.style.Theme_AppCompat_Light_Dialog_Alert);
        CharSequence charSequence = this.rationale_message;
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mMessage = charSequence;
        alertParams.mCancelable = false;
        String str = this.rationaleConfirmText;
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.gun0912.tedpermission.TedPermissionActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                TedPermissionActivity.this.startActivityForResult(intent, 30);
            }
        };
        alertParams.mNegativeButtonText = str;
        alertParams.mNegativeButtonListener = onClickListener;
        builder.create().show();
        this.isShownRationaleDialog = true;
    }

    private void setupFromSavedInstanceState(Bundle bundle) {
        int intExtra;
        if (bundle != null) {
            this.permissions = bundle.getStringArray(EXTRA_PERMISSIONS);
            this.rationaleTitle = bundle.getCharSequence(EXTRA_RATIONALE_TITLE);
            this.rationale_message = bundle.getCharSequence(EXTRA_RATIONALE_MESSAGE);
            this.denyTitle = bundle.getCharSequence(EXTRA_DENY_TITLE);
            this.denyMessage = bundle.getCharSequence(EXTRA_DENY_MESSAGE);
            this.packageName = bundle.getString(EXTRA_PACKAGE_NAME);
            this.hasSettingButton = bundle.getBoolean(EXTRA_SETTING_BUTTON, true);
            this.rationaleConfirmText = bundle.getString(EXTRA_RATIONALE_CONFIRM_TEXT);
            this.deniedCloseButtonText = bundle.getString(EXTRA_DENIED_DIALOG_CLOSE_TEXT);
            this.settingButtonText = bundle.getString(EXTRA_SETTING_BUTTON_TEXT);
            intExtra = bundle.getInt(EXTRA_SCREEN_ORIENTATION, -1);
        } else {
            Intent intent = getIntent();
            this.permissions = intent.getStringArrayExtra(EXTRA_PERMISSIONS);
            this.rationaleTitle = intent.getCharSequenceExtra(EXTRA_RATIONALE_TITLE);
            this.rationale_message = intent.getCharSequenceExtra(EXTRA_RATIONALE_MESSAGE);
            this.denyTitle = intent.getCharSequenceExtra(EXTRA_DENY_TITLE);
            this.denyMessage = intent.getCharSequenceExtra(EXTRA_DENY_MESSAGE);
            this.packageName = intent.getStringExtra(EXTRA_PACKAGE_NAME);
            this.hasSettingButton = intent.getBooleanExtra(EXTRA_SETTING_BUTTON, true);
            this.rationaleConfirmText = intent.getStringExtra(EXTRA_RATIONALE_CONFIRM_TEXT);
            this.deniedCloseButtonText = intent.getStringExtra(EXTRA_DENIED_DIALOG_CLOSE_TEXT);
            this.settingButtonText = intent.getStringExtra(EXTRA_SETTING_BUTTON_TEXT);
            intExtra = intent.getIntExtra(EXTRA_SCREEN_ORIENTATION, -1);
        }
        this.requestedOrientation = intExtra;
    }

    private void showRationaleDialog(final List<String> list) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this, R.style.Theme_AppCompat_Light_Dialog_Alert);
        CharSequence charSequence = this.rationaleTitle;
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mTitle = charSequence;
        alertParams.mMessage = this.rationale_message;
        alertParams.mCancelable = false;
        String str = this.rationaleConfirmText;
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.gun0912.tedpermission.TedPermissionActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                TedPermissionActivity.this.requestPermissions(list);
            }
        };
        alertParams.mNegativeButtonText = str;
        alertParams.mNegativeButtonListener = onClickListener;
        builder.create().show();
        this.isShownRationaleDialog = true;
    }

    public static void startActivity(Context context, Intent intent, PermissionListener permissionListener) {
        if (permissionListenerStack == null) {
            permissionListenerStack = new ArrayDeque();
        }
        permissionListenerStack.push(permissionListener);
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != 30) {
            if (i != 31) {
                if (i != 2000) {
                    super.onActivityResult(i, i2, intent);
                    return;
                } else {
                    checkPermissions(true);
                    return;
                }
            }
        } else if (!hasWindowPermission() && !TextUtils.isEmpty(this.denyMessage)) {
            showWindowPermissionDenyDialog();
            return;
        }
        checkPermissions(false);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        overridePendingTransition(0, 0);
        super.onCreate(bundle);
        getWindow().addFlags(16);
        setupFromSavedInstanceState(bundle);
        if (needWindowPermission()) {
            requestWindowPermission();
        } else {
            checkPermissions(false);
        }
        setRequestedOrientation(this.requestedOrientation);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        List<String> deniedPermissions = TedPermissionUtil.getDeniedPermissions(strArr);
        if (deniedPermissions.isEmpty()) {
            permissionResult(null);
        } else {
            showPermissionDenyDialog(deniedPermissions);
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putStringArray(EXTRA_PERMISSIONS, this.permissions);
        bundle.putCharSequence(EXTRA_RATIONALE_TITLE, this.rationaleTitle);
        bundle.putCharSequence(EXTRA_RATIONALE_MESSAGE, this.rationale_message);
        bundle.putCharSequence(EXTRA_DENY_TITLE, this.denyTitle);
        bundle.putCharSequence(EXTRA_DENY_MESSAGE, this.denyMessage);
        bundle.putString(EXTRA_PACKAGE_NAME, this.packageName);
        bundle.putBoolean(EXTRA_SETTING_BUTTON, this.hasSettingButton);
        bundle.putString(EXTRA_DENIED_DIALOG_CLOSE_TEXT, this.deniedCloseButtonText);
        bundle.putString(EXTRA_RATIONALE_CONFIRM_TEXT, this.rationaleConfirmText);
        bundle.putString(EXTRA_SETTING_BUTTON_TEXT, this.settingButtonText);
        super.onSaveInstanceState(bundle);
    }

    public void requestPermissions(List<String> list) {
        ActivityCompat.requestPermissions(10, this, (String[]) list.toArray(new String[list.size()]));
    }

    public boolean shouldShowRequestPermissionRationale(List<String> list) {
        if (list == null) {
            return false;
        }
        for (String str : list) {
            int i = ActivityCompat.$r8$clinit;
            if (!(Build.VERSION.SDK_INT >= 23 ? shouldShowRequestPermissionRationale(str) : false)) {
                return false;
            }
        }
        return true;
    }

    public void showPermissionDenyDialog(final List<String> list) {
        if (TextUtils.isEmpty(this.denyMessage)) {
            permissionResult(list);
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this, R.style.Theme_AppCompat_Light_Dialog_Alert);
        CharSequence charSequence = this.denyTitle;
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mTitle = charSequence;
        alertParams.mMessage = this.denyMessage;
        alertParams.mCancelable = false;
        String str = this.deniedCloseButtonText;
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.gun0912.tedpermission.TedPermissionActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                TedPermissionActivity.this.permissionResult(list);
            }
        };
        alertParams.mNegativeButtonText = str;
        alertParams.mNegativeButtonListener = onClickListener;
        if (this.hasSettingButton) {
            if (TextUtils.isEmpty(this.settingButtonText)) {
                this.settingButtonText = getString(R.string.tedpermission_setting);
            }
            String str2 = this.settingButtonText;
            DialogInterface.OnClickListener onClickListener2 = new DialogInterface.OnClickListener() { // from class: com.gun0912.tedpermission.TedPermissionActivity.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    TedPermissionUtil.startSettingActivityForResult(TedPermissionActivity.this);
                }
            };
            alertParams.mPositiveButtonText = str2;
            alertParams.mPositiveButtonListener = onClickListener2;
        }
        builder.create().show();
    }

    public void showWindowPermissionDenyDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this, R.style.Theme_AppCompat_Light_Dialog_Alert);
        CharSequence charSequence = this.denyMessage;
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mMessage = charSequence;
        alertParams.mCancelable = false;
        String str = this.deniedCloseButtonText;
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.gun0912.tedpermission.TedPermissionActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                TedPermissionActivity.this.checkPermissions(false);
            }
        };
        alertParams.mNegativeButtonText = str;
        alertParams.mNegativeButtonListener = onClickListener;
        if (this.hasSettingButton) {
            if (TextUtils.isEmpty(this.settingButtonText)) {
                this.settingButtonText = getString(R.string.tedpermission_setting);
            }
            String str2 = this.settingButtonText;
            DialogInterface.OnClickListener onClickListener2 = new DialogInterface.OnClickListener() { // from class: com.gun0912.tedpermission.TedPermissionActivity.6
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    TedPermissionActivity.this.startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.fromParts("package", TedPermissionActivity.this.packageName, null)), 31);
                }
            };
            alertParams.mPositiveButtonText = str2;
            alertParams.mPositiveButtonListener = onClickListener2;
        }
        builder.create().show();
    }
}
