package com.gun0912.tedpermission;

import com.gun0912.tedpermission.util.ObjectUtils;
import java.util.List;

/* loaded from: classes.dex */
public class TedPermissionResult {
    private List<String> deniedPermissions;
    private boolean granted;

    public TedPermissionResult(List<String> list) {
        this.granted = ObjectUtils.isEmpty(list);
        this.deniedPermissions = list;
    }

    public List<String> getDeniedPermissions() {
        return this.deniedPermissions;
    }

    public boolean isGranted() {
        return this.granted;
    }
}
