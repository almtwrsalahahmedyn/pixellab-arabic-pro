.class public Landroidx/activity/۟۠۠ۦۤ;
.super Ljava/lang/Object;


# static fields
.field public static ۣ۟ۢۢ۠:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method public static ۟۠۠ۧ۠(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟۠ۢۡۥ(Ljava/lang/Object;J)Landroid/animation/ValueAnimator;
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟۠ۥۨ(Ljava/lang/String;)Ljava/lang/String;
    .locals 59

    move-object/from16 v8, p0

    const/4 v0, 0x0

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۥۣۢۨ()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۥۣۢۨ()Ljava/lang/String;

    move-result-object v2

    move v1, v0

    :goto_0
    const/16 v4, 0xf

    if-lt v1, v4, :cond_0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-static {v8}, Landroidx/activity/۟ۨۧ;->ۥۥۤۥ(Ljava/lang/Object;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_1
    invoke-static {v8}, Landroidx/activity/۟ۨۧ;->ۥۥۤۥ(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_1

    invoke-static {v1}, Landroidx/activity/۟۠۠ۦۤ;->ۣۡ۟۠(Ljava/lang/Object;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v2}, Landroidx/activity/۟ۨۧ;->ۥۥۤۥ(Ljava/lang/Object;)I

    move-result v4

    :goto_2
    if-lt v0, v3, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v4, v3}, Landroidx/activity/۟ۨۧ;->۟ۡۡۡۦ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v1}, Landroidx/activity/۟ۨۧ;->ۡۧ۟ۦ(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/activity/۟ۨۧ;->۟ۡۡۡۦ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v3}, Landroidx/activity/۟ۨۧ;->۟ۥۤۦ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v4, v2}, Landroidx/activity/۟ۨۧ;->۟ۡۡۡۦ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->۟۠ۤ۟ۨ()D

    move-result-wide v4

    const/16 v6, 0xa

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    xor-int/2addr v4, v1

    invoke-static {v2, v4}, Landroidx/activity/۟ۨۧ;->۟۠ۢۨۨ(Ljava/lang/Object;I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v2}, Landroidx/activity/۟ۨۧ;->۟ۥۤۦ۠(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x2

    invoke-static {v8, v4}, Landroidx/activity/۟ۨۧ;->۠ۥۣۨ(Ljava/lang/Object;I)C

    move-result v4

    invoke-static {v3, v4}, Landroidx/activity/ۨۨۦۡ;->ۣۤۥۦ(Ljava/lang/Object;I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    const/4 v5, -0x1

    invoke-static {v8, v5}, Landroidx/activity/۟ۨۧ;->۠ۥۣۨ(Ljava/lang/Object;I)C

    move-result v5

    invoke-static {v3, v5}, Landroidx/activity/ۨۨۦۡ;->ۣۤۥۦ(Ljava/lang/Object;I)I

    move-result v5

    or-int/2addr v4, v5

    invoke-static {v1, v4}, Landroidx/activity/ۨۨۦۡ;->ۣۥ۟ۨ(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    aget-byte v5, v1, v0

    rem-int v6, v0, v4

    invoke-static {v2, v6}, Landroidx/activity/۟ۨۧ;->۠ۥۣۨ(Ljava/lang/Object;I)C

    move-result v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static ۟۠ۤ۟ۨ()D
    .locals 4

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۡۢۨ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/app/NotificationManager;

    check-cast p1, Landroid/app/NotificationChannel;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۢ۟ۢۤ(Ljava/lang/Object;)Landroid/util/DisplayMetrics;
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۢ۠۠ۥ(Ljava/lang/Object;)I
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۢۡۢ۟(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/SharedPreferences;
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۢۡۦ۟(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/util/DisplayMetrics;

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣ۟۟ۢۤ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/widget/LinearLayout;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣۣ۟ۤۥ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣ۟ۥ۟ۥ(Ljava/lang/Object;I)I
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۨۦۤ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/app/Notification$Builder;
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/app/Notification$Builder;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۨۧۨ()I
    .locals 2

    const v0, -0x1ac522

    const-string v1, "\u06e7\u06e0\u06e8"

    invoke-static {v1}, Landroidx/activity/ۨۨۦۡ;->ۣ۟ۧ۟ۦ(Ljava/lang/Object;)I

    move-result v1

    xor-int v0, v0, v1

    return v0
.end method

.method public static ۟ۤ۟ۦ۟()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۦۡۢۨ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/widget/FrameLayout;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۦۡۨ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ljava/lang/String;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۧۡ۟ۢ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۧۢۤ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۧۦۣ۠(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/widget/LinearLayout;

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۨۥ۠(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۨۧۧ(Ljava/lang/Object;)I
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۠ۨۥۥ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/widget/FrameLayout;

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۡۦۨ۠(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/widget/FrameLayout;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۡۨۦۡ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۢۡۤۢ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/view/View;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۢۡۥ۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۢۥۤ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/app/Dialog;

    check-cast p1, Landroid/view/View;

    invoke-virtual/range {p0 .. p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۢۦۣ۠(Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, [F

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۢۨۥۨ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۢۨۦ۠(Ljava/lang/Object;I)I
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۤۢ(Ljava/lang/Object;Ljava/lang/Object;J)Z
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/view/View;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۡ۟۠(Ljava/lang/Object;)[B
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۥۤۢ(Ljava/lang/Object;F)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣۣۧۢ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/view/View;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۤ۟۟(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۤۧ۠۟(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/os/Handler;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۤۧۨۥ(Ljava/lang/Object;)[Landroid/content/pm/Signature;
    .locals 2

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۥۡ۠ۥ([SIII)Ljava/lang/String;
    .locals 54

    move/from16 v6, p3

    move/from16 v5, p2

    move/from16 v4, p1

    move-object/from16 v3, p0

    new-array v1, v5, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    add-int v2, v4, v0

    aget-short v2, v3, v2

    xor-int/2addr v2, v6

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static ۥۣۢۨ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۥۣۥۢ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۥۥۡ(Ljava/lang/Object;)F
    .locals 2

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/util/DisplayMetrics;

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۥۦۨ۠(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/app/Dialog;

    check-cast p1, Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۦۧ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/animation/AnimatorSet;

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۧۡ۟ۤ(Ljava/lang/Object;Ljava/lang/Object;J)Z
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/os/Handler;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۧۢۦ۠(Ljava/lang/Object;F)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣۣۧۨ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۧۧۨ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۧۧۦۡ(Ljava/lang/Object;)Landroid/app/Notification;
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method
