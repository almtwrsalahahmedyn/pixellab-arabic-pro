.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$firstOut:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic val$isPop:Z

.field public final synthetic val$lastIn:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic val$lastInViews:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$lastIn:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$firstOut:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iput-boolean p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$isPop:Z

    iput-object p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$lastInViews:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$lastIn:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$firstOut:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v1, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$lastInViews:Landroidx/collection/ArrayMap;

    iget-boolean v3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$isPop:Z

    invoke-static {v0, v1, v3, v2}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;)V

    return-void
.end method
