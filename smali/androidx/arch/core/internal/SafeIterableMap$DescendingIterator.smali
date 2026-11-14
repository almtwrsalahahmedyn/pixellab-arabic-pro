.class public final Landroidx/arch/core/internal/SafeIterableMap$DescendingIterator;
.super Landroidx/arch/core/internal/SafeIterableMap$ListIterator;


# virtual methods
.method public final backward(Landroidx/arch/core/internal/SafeIterableMap$Entry;)Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .locals 0

    iget-object p1, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    return-object p1
.end method

.method public final forward(Landroidx/arch/core/internal/SafeIterableMap$Entry;)Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .locals 0

    iget-object p1, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    return-object p1
.end method
