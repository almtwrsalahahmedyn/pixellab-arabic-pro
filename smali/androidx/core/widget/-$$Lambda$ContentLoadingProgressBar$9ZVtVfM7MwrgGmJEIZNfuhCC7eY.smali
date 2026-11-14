.class public final synthetic Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$9ZVtVfM7MwrgGmJEIZNfuhCC7eY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/core/widget/ContentLoadingProgressBar;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$9ZVtVfM7MwrgGmJEIZNfuhCC7eY;->f$0:Landroidx/core/widget/ContentLoadingProgressBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/16 v0, 0x8

    iget-object v1, p0, Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$9ZVtVfM7MwrgGmJEIZNfuhCC7eY;->f$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
