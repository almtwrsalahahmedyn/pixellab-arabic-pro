.class public final Landroidx/appcompat/app/ToolbarActionBar$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/ToolbarActionBar;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/ToolbarActionBar$2;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar$2;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v1, v0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget-object v1, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/16 v1, 0x6c

    if-eqz v3, :cond_2

    iget-object v0, v0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/WindowCallbackWrapper;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_2

    :cond_2
    iget-object v3, v0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, p1}, Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/WindowCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_3
    :goto_2
    return-void
.end method
