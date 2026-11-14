package com.gun0912.tedpermission.normal;

import com.gun0912.tedpermission.PermissionBuilder;

/* loaded from: classes.dex */
public class TedPermission {
    public static final String TAG = "TedPermission";

    /* loaded from: classes.dex */
    public static class Builder extends PermissionBuilder<Builder> {
        public void check() {
            checkPermissions();
        }
    }

    public static Builder create() {
        return new Builder();
    }
}
