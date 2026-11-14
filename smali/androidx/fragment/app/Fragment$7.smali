.class public final Landroidx/fragment/app/Fragment$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic val$registry:Landroidx/activity/result/ActivityResultRegistry;


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResultRegistry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/Fragment$7;->val$registry:Landroidx/activity/result/ActivityResultRegistry;

    return-void
.end method


# virtual methods
.method public final apply()Landroidx/activity/result/ActivityResultRegistry;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment$7;->val$registry:Landroidx/activity/result/ActivityResultRegistry;

    return-object v0
.end method
