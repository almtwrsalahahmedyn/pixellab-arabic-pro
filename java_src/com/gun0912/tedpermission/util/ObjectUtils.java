package com.gun0912.tedpermission.util;

import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ObjectUtils {
    public static boolean isEmpty(Object obj) {
        if (obj == null) {
            return true;
        }
        if ((obj instanceof String) && ((String) obj).trim().length() == 0) {
            return true;
        }
        return obj instanceof Map ? ((Map) obj).isEmpty() : obj instanceof List ? ((List) obj).isEmpty() : (obj instanceof Object[]) && ((Object[]) obj).length == 0;
    }
}
