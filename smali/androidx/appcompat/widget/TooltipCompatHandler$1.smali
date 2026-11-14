.class public final Landroidx/appcompat/widget/TooltipCompatHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/TooltipCompatHandler;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/TooltipCompatHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler$1;->this$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler$1;->this$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TooltipCompatHandler;->show(Z)V

    return-void
.end method
