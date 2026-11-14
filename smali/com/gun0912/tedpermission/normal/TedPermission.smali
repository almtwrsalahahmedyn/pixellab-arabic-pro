.class public Lcom/gun0912/tedpermission/normal/TedPermission;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gun0912/tedpermission/normal/TedPermission$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TedPermission"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/gun0912/tedpermission/normal/TedPermission$Builder;
    .locals 1

    new-instance v0, Lcom/gun0912/tedpermission/normal/TedPermission$Builder;

    invoke-direct {v0}, Lcom/gun0912/tedpermission/normal/TedPermission$Builder;-><init>()V

    return-object v0
.end method
