.class public final Landroidx/core/view/ViewCompat$2;
.super Landroidx/core/view/ViewCompat$AccessibilityViewProperty;


# virtual methods
.method public final frameworkGet(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->isScreenReaderFocusable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
