.class public final Landroidx/core/view/ViewPropertyAnimatorCompat$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic val$listener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->val$listener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->val$listener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    check-cast p1, Landroidx/appcompat/app/WindowDecorActionBar$3;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar$3;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
