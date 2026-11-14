.class public final Landroidx/appcompat/app/ToolbarActionBar$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/ToolbarActionBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/ToolbarActionBar$1;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar$1;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ToolbarActionBar;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4, v1}, Landroidx/appcompat/view/WindowCallbackWrapper;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v4, v3, v1}, Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_5
    throw v0
.end method
