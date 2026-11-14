.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;
.super Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;


# instance fields
.field public final mTwilightManager:Landroidx/appcompat/app/TwilightManager;

.field public final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/TwilightManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    return-void
.end method


# virtual methods
.method public final createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getApplyableNightMode()I
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    iget-object v2, v1, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    iget-wide v3, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v9, v3, v5

    if-lez v9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    iget-boolean v1, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    goto/16 :goto_8

    :cond_1
    iget-object v3, v1, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v4}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    iget-object v1, v1, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v4, :cond_2

    const-string v4, "network"

    :try_start_0
    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_2
    move-object v4, v5

    :goto_1
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v6}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "gps"

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v1

    goto :goto_2

    :catch_1
    nop

    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    cmp-long v1, v9, v11

    if-lez v1, :cond_5

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    :goto_3
    move-object v4, v5

    :cond_5
    if-eqz v4, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v1, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    if-nez v1, :cond_6

    new-instance v1, Landroidx/appcompat/app/TwilightCalculator;

    invoke-direct {v1}, Landroidx/appcompat/app/TwilightCalculator;-><init>()V

    sput-object v1, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    :cond_6
    sget-object v1, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    const-wide/32 v16, 0x5265c00

    sub-long v10, v5, v16

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    move-object v9, v1

    invoke-virtual/range {v9 .. v15}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    move-wide v10, v5

    invoke-virtual/range {v9 .. v15}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    iget v3, v1, Landroidx/appcompat/app/TwilightCalculator;->state:I

    if-ne v3, v8, :cond_7

    const/4 v7, 0x1

    :cond_7
    iget-wide v14, v1, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    iget-wide v12, v1, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    add-long v10, v5, v16

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    move-object v9, v1

    move-wide/from16 v18, v12

    move-wide/from16 v12, v16

    move-wide/from16 v16, v14

    move-wide v14, v3

    invoke-virtual/range {v9 .. v15}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(JDD)V

    iget-wide v3, v1, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    const-wide/16 v9, -0x1

    cmp-long v1, v16, v9

    if-eqz v1, :cond_b

    cmp-long v1, v18, v9

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    const-wide/16 v9, 0x0

    cmp-long v1, v5, v18

    if-lez v1, :cond_9

    add-long/2addr v3, v9

    goto :goto_4

    :cond_9
    cmp-long v1, v5, v16

    if-lez v1, :cond_a

    add-long v3, v18, v9

    goto :goto_4

    :cond_a
    add-long v3, v16, v9

    :goto_4
    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    goto :goto_6

    :cond_b
    :goto_5
    const-wide/32 v3, 0x2932e00

    add-long/2addr v3, v5

    :goto_6
    iput-boolean v7, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    iput-wide v3, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    goto :goto_7

    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_d

    const/16 v2, 0x16

    if-lt v1, v2, :cond_e

    :cond_d
    const/4 v7, 0x1

    :cond_e
    :goto_7
    move v1, v7

    :goto_8
    if-eqz v1, :cond_f

    const/4 v8, 0x2

    :cond_f
    return v8
.end method

.method public final onChange()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight(Z)Z

    return-void
.end method
