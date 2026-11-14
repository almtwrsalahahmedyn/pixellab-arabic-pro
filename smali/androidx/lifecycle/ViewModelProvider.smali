.class public final Landroidx/lifecycle/ViewModelProvider;
.super Ljava/lang/Object;


# instance fields
.field public final mFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field public final mViewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/lifecycle/ViewModelProvider;->mFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    iput-object p1, p0, Landroidx/lifecycle/ViewModelProvider;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/ViewModelProvider;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelStore;->get(Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Landroidx/lifecycle/ViewModelProvider;->mFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-eqz v3, :cond_0

    instance-of p1, v4, Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;

    if-eqz p1, :cond_2

    check-cast v4, Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;

    invoke-virtual {v4, v2}, Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;->onRequery(Landroidx/lifecycle/ViewModel;)V

    goto :goto_1

    :cond_0
    instance-of v2, v4, Landroidx/lifecycle/ViewModelProvider$KeyedFactory;

    if-eqz v2, :cond_1

    check-cast v4, Landroidx/lifecycle/ViewModelProvider$KeyedFactory;

    invoke-virtual {v4, p1, v0}, Landroidx/lifecycle/ViewModelProvider$KeyedFactory;->create(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {v4, p1}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    :goto_0
    move-object v2, p1

    iget-object p1, v1, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/lifecycle/ViewModel;->onCleared()V

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
