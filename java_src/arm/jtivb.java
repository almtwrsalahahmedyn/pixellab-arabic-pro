package arm;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;

/* loaded from: classes.dex */
public class jtivb extends ContentProvider implements Runnable {
    private final String TAG = jtivb.class.getSimpleName();
    private String Signer = "AQAAA4YwggOCMIICaqADAgECAgQmmvJPMA0GCSqGSIb3DQEBDQUAMFsxCzAJBgNVBAYTAnllMQ0wCwYDVQQIEwRzYW5hMQ4wDAYDVQQHEwVzYW5hYTEPMA0GA1UECxMGVEFXRklRMQswCQYDVQQKEwJURzEPMA0GA1UEAxMGVEFXRklRMB4XDTI0MDUxNDE3MDQwOVoXDTQ5MDUwODE3MDQwOVowWzELMAkGA1UEBhMCeWUxDTALBgNVBAgTBHNhbmExDjAMBgNVBAcTBXNhbmFhMQ8wDQYDVQQLEwZUQVdGSVExCzAJBgNVBAoTAlRHMQ8wDQYDVQQDEwZUQVdGSVEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDQhpmJGS3eNNXKZOFlabVuld6aqTQU4fJEYdTtpBVqq58IeqM5tlfVimLLQzr8zdc4bjkRJ7qGjtzZkzDVwbxmUYOx1fKF84e2uKYBFQs0jsEFONmvEpOxE7fV0rzqezBoRBdS1qPDA8BTjNX3/msrERihbpv7+7DmDdB6lY6zSM4ku0d8bRwh2K0sYuKoe8bjWeSPOBSqOtq59LndjQPuGgfVGR6j2OiA49y23Ah3xqbIfz60xZJrUvJi3iZhPSN07/ws6pudVMFsvTIP/Nru2/6YDmLRvdYlHaR+hKZeF/egPONql9yaG/P7TAzA14ucMGA6ap0f2Mv32wPQngUFAgMBAAGjTjBMMB0GA1UdDgQWBBRj/dhQ9L4Wzn4aNJIDm1f7bKb3+zArBgNVHRAEJDAigA8yMDI0MDUxNDE3MDQwOVqBDzIwNDkwNTA4MTcwNDA5WjANBgkqhkiG9w0BAQ0FAAOCAQEAhwwOP/mFvj12IGM4kYswMQ+uVgAtntBUrxqMjlkwgLqUyo8bEt2wpy+YLUS3JnnbxaWmrZd+yduaXV+RBWsqfnLEl2NVx3AcED45MLwRi7x3ICIxhW2t9YHYx2Ijtd2oYNZnALZ7IxsXRysiQ7URKSOG9Ca/LEA6XC6izCa0U5+9kuAQ+8mkaBOcLJno89AW06PUfW55GbWxR1KHCvXAd50s9KedC5Av5jCxMWlrm2Sgbr4Q8RrRBJJ5RQ8iix+HnI4vGP+KBzVe90oeeRXGrSGfIU3cNzKc9XEfcuPrq3vG/9hQ4yEdgQ2J8ocM6g1xdSMnOhT8g7ASXwwOMrj/kg==";

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
