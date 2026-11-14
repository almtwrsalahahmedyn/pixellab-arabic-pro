.class public final Landroidx/appcompat/widget/SwitchCompat$1;
.super Landroid/util/Property;


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget p1, p1, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method
