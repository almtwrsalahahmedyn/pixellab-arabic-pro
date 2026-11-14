.class public Lcom/gun0912/tedpermission/normal/TedPermission$Builder;
.super Lcom/gun0912/tedpermission/PermissionBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gun0912/tedpermission/normal/TedPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gun0912/tedpermission/PermissionBuilder<",
        "Lcom/gun0912/tedpermission/normal/TedPermission$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/gun0912/tedpermission/PermissionBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public check()V
    .locals 0

    invoke-virtual {p0}, Lcom/gun0912/tedpermission/PermissionBuilder;->checkPermissions()V

    return-void
.end method
