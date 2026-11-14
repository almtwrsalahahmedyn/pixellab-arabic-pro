.class public final Landroidx/core/view/ViewCompat$Api21Impl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public mLastInsets:Landroidx/core/view/WindowInsetsCompat;

.field public final synthetic val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/ViewCompat$Api21Impl$1;->val$v:Landroid/view/View;

    iput-object p2, p0, Landroidx/core/view/ViewCompat$Api21Impl$1;->val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/ViewCompat$Api21Impl$1;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    invoke-static {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Landroidx/core/view/ViewCompat$Api21Impl$1;->val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;

    const/16 v3, 0x1e

    if-ge v1, v3, :cond_1

    const v4, 0x7f0a025c

    iget-object v5, p0, Landroidx/core/view/ViewCompat$Api21Impl$1;->val$v:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v4, :cond_0

    invoke-interface {v4, v5, p2}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_0
    iget-object p2, p0, Landroidx/core/view/ViewCompat$Api21Impl$1;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0, p2}, Landroidx/core/view/WindowInsetsCompat;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {v2, p1, v0}, Landroidx/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_1
    iput-object v0, p0, Landroidx/core/view/ViewCompat$Api21Impl$1;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-interface {v2, p1, v0}, Landroidx/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p2

    if-lt v1, v3, :cond_2

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v0, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/ViewCompat$1;

    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
