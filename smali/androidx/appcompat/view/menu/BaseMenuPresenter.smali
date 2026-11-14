.class public abstract Landroidx/appcompat/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# instance fields
.field public mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public mContext:Landroid/content/Context;

.field public mItemLayoutRes:I

.field public mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public mMenuLayoutRes:I

.field public mMenuView:Landroidx/appcompat/view/menu/MenuView;

.field public mSystemContext:Landroid/content/Context;

.field public mSystemInflater:Landroid/view/LayoutInflater;


# virtual methods
.method public final collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-void
.end method
