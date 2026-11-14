.class public final Landroidx/fragment/app/FragmentManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;
.implements Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;
.implements Landroidx/fragment/app/SpecialEffectsControllerFactory;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeight(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/core/provider/FontsContractCompat$FontInfo;

    iget p1, p1, Landroidx/core/provider/FontsContractCompat$FontInfo;->mWeight:I

    return p1
.end method

.method public isItalic(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroidx/core/provider/FontsContractCompat$FontInfo;

    iget-boolean p1, p1, Landroidx/core/provider/FontsContractCompat$FontInfo;->mItalic:Z

    return p1
.end method
