.class public final Landroidx/core/view/ContentInfoCompat$Builder;
.super Ljava/lang/Object;


# instance fields
.field public final mClip:Landroid/content/ClipData;

.field public mExtras:Landroid/os/Bundle;

.field public mFlags:I

.field public mLinkUri:Landroid/net/Uri;

.field public final mSource:I


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mClip:Landroid/content/ClipData;

    iput p2, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mSource:I

    return-void
.end method
