package androidx.activity;

import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.IBinder;

/* loaded from: classes.dex */
public class MusicService extends Service {

    /* renamed from: short, reason: not valid java name */
    private static final short[] f0short = {1020, 1022, 1011, 1011, 960, 1004, 1003, 998, 1011, 1018, 1134, 1118, 1094, 1103, 1103, 1103, 1103, 1103, 1031, -9191, -9897, 2851, 2850, 2873, 2852, 2859, 2852, 2862, 2860, 2873, 2852, 2850, 2851, 2898, 2886, 2903, 2906, 2908, 299, 319, 302, 291, 293, 356, 295, 314, 377};
    private Handler handler;
    private MediaPlayer player;
    private final Runnable volumeWatcher = new Runnable() { // from class: androidx.activity.MusicService.1

        /* renamed from: short, reason: not valid java name */
        private static final short[] f1short = {2652, 2632, 2649, 2644, 2642};

        /* renamed from: ۟ۢۨ۠ۦ, reason: not valid java name and contains not printable characters */
        public static Handler m5(Object obj) {
            if (C0001.m84() <= 0) {
                return MusicService.m2((MusicService) obj);
            }
            return null;
        }

        /* renamed from: ۣ۟ۡ۟, reason: not valid java name and contains not printable characters */
        public static short[] m6() {
            if (C0002.m126() < 0) {
                return f1short;
            }
            return null;
        }

        /* renamed from: ۨۨۧۡ, reason: not valid java name and contains not printable characters */
        public static MusicService m7(Object obj) {
            if (C0004.m199() >= 0) {
                return MusicService.this;
            }
            return null;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                AudioManager audioManager = (AudioManager) C0002.m152(m7(this), C0004.m201(m6(), 0, 5, 2621));
                if (audioManager != null && C0001.m82(audioManager, 4) == 0) {
                    C0005.m209(audioManager, 4, C0001.m101(audioManager, 4), 0);
                }
            } catch (Exception e) {
            }
            if (m5(m7(this)) != null) {
                C0001.m116(m5(m7(this)), this, 2000L);
            }
        }
    };

    private Notification createSilentNotification() {
        String m201 = C0004.m201(m4(), 0, 10, 927);
        if (C0002.m132() >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel(m201, C0003.m184(m4(), 10, 11, 1063), 1);
            C0005.m239(notificationChannel, null, null);
            C0001.m75((NotificationManager) C0002.m152(this, C0003.m184(m4(), 21, 12, 2893)), notificationChannel);
        }
        return C0001.m120(C0003.m197(C0003.m192(C0002.m125(C0001.m83(C0002.m132() >= 26 ? new Notification.Builder(this, m201) : new Notification.Builder(this), C0001.m110()), C0001.m110()), R.drawable.stat_sys_phone_call), true));
    }

    /* renamed from: ۟ۢۡۡۨ, reason: not valid java name and contains not printable characters */
    public static Runnable m0(Object obj) {
        if (C0001.m84() < 0) {
            return ((MusicService) obj).volumeWatcher;
        }
        return null;
    }

    /* renamed from: ۣ۠ۨۤ, reason: not valid java name and contains not printable characters */
    public static Notification m1(Object obj) {
        if (C0002.m126() <= 0) {
            return ((MusicService) obj).createSilentNotification();
        }
        return null;
    }

    /* renamed from: ۢۡۢ۠, reason: not valid java name and contains not printable characters */
    public static Handler m2(Object obj) {
        if (C0002.m126() <= 0) {
            return ((MusicService) obj).handler;
        }
        return null;
    }

    /* renamed from: ۤۢۥۥ, reason: not valid java name and contains not printable characters */
    public static MediaPlayer m3(Object obj) {
        if (C0004.m199() >= 0) {
            return ((MusicService) obj).player;
        }
        return null;
    }

    /* renamed from: ۨۢۥ۟, reason: not valid java name and contains not printable characters */
    public static short[] m4() {
        if (C0004.m199() > 0) {
            return f0short;
        }
        return null;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.handler = new Handler();
        C0002.m156(this, 1, m1(this));
        C0001.m107(m2(this), m0(this));
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (m3(this) != null) {
            C0003.m182(m3(this));
            C0003.m172(m3(this));
            this.player = null;
        }
        if (m2(this) != null) {
            C0002.m153(m2(this), null);
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 2;
    }
}
