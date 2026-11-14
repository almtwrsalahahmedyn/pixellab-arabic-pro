.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
.super Ljava/lang/Object;


# instance fields
.field public background:I

.field public createdPanelView:Landroid/view/View;

.field public decorView:Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;

.field public featureId:I

.field public frozenActionViewState:Landroid/os/Bundle;

.field public gravity:I

.field public isHandled:Z

.field public isOpen:Z

.field public isPrepared:Z

.field public listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

.field public listPresenterContext:Landroidx/appcompat/view/ContextThemeWrapper;

.field public menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public refreshDecorView:Z

.field public refreshMenuContent:Z

.field public shownPanelView:Landroid/view/View;

.field public windowAnimations:I


# virtual methods
.method public final hasPanelItems()Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->shownPanelView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuPresenter;->getAdapter()Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
