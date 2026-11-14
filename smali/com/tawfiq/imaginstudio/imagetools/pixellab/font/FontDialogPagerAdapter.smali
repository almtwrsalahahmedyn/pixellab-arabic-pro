.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private final refToText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;->refToText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;->refToText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-static {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->newInstance(ILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const-string p1, "null"

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f11018e

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f1101c7

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f1101c5

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f110778

    goto :goto_0
.end method
