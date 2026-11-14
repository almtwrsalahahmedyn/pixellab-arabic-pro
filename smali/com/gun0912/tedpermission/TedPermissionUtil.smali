.class public Lcom/gun0912/tedpermission/TedPermissionUtil;
.super Ljava/lang/Object;


# static fields
.field private static final PREFS_IS_FIRST_REQUEST:Ljava/lang/String; = "IS_FIRST_REQUEST"

.field private static final PREFS_NAME_PERMISSION:Ljava/lang/String; = "PREFS_NAME_PERMISSION"

.field public static final REQ_CODE_REQUEST_SETTING:I = 0x7d0

.field private static final context:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/gun0912/tedpermission/provider/TedPermissionProvider;->context:Landroid/content/Context;

    sput-object v0, Lcom/gun0912/tedpermission/TedPermissionUtil;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs canRequestPermission(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 7

    invoke-static {p1}, Lcom/gun0912/tedpermission/TedPermissionUtil;->isFirstRequest([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    sget v5, Landroidx/core/app/ActivityCompat;->$r8$clinit:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-static {v4}, Lcom/gun0912/tedpermission/TedPermissionUtil;->isDenied(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static varargs getDeniedPermissions([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/gun0912/tedpermission/TedPermissionUtil;->isDenied(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getPrefsNamePermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IS_FIRST_REQUEST_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gun0912/tedpermission/TedPermissionUtil;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    sget-object v0, Lcom/gun0912/tedpermission/TedPermissionUtil;->context:Landroid/content/Context;

    const-string v1, "PREFS_NAME_PERMISSION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isDenied(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/gun0912/tedpermission/TedPermissionUtil;->isGranted(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isFirstRequest(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/gun0912/tedpermission/TedPermissionUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/gun0912/tedpermission/TedPermissionUtil;->getPrefsNamePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isFirstRequest([Ljava/lang/String;)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/gun0912/tedpermission/TedPermissionUtil;->isFirstRequest(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isGranted(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p0, v0, :cond_0

    sget-object p0, Lcom/gun0912/tedpermission/TedPermissionUtil;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lcom/gun0912/tedpermission/TedPermissionUtil;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static varargs isGranted([Ljava/lang/String;)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/gun0912/tedpermission/TedPermissionUtil;->isDenied(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static setFirstRequest(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/gun0912/tedpermission/TedPermissionUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/gun0912/tedpermission/TedPermissionUtil;->getPrefsNamePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFirstRequest([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/gun0912/tedpermission/TedPermissionUtil;->setFirstRequest(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static startSettingActivityForResult(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0x7d0

    invoke-static {p0, v0}, Lcom/gun0912/tedpermission/TedPermissionUtil;->startSettingActivityForResult(Landroid/app/Activity;I)V

    return-void
.end method

.method public static startSettingActivityForResult(Landroid/app/Activity;I)V
    .locals 1

    invoke-static {}, Lcom/gun0912/tedpermission/TedPermissionUtil;->getSettingIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static startSettingActivityForResult(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const/16 v0, 0x7d0

    invoke-static {p0, v0}, Lcom/gun0912/tedpermission/TedPermissionUtil;->startSettingActivityForResult(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public static startSettingActivityForResult(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    invoke-static {}, Lcom/gun0912/tedpermission/TedPermissionUtil;->getSettingIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
