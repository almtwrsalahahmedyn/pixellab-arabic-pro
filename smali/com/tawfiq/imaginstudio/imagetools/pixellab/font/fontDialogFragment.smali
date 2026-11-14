.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;
.super Landroidx/fragment/app/DialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;
    }
.end annotation


# instance fields
.field fo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;

.field private previewFonts:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

.field private previewText:Ljava/lang/String;

.field private titleStrip:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

.field private view:Landroid/view/View;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->fo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->getResultingFonts()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object p0

    return-object p0
.end method

.method private getResultingFonts()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const v1, 0x7f0a025f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getFontsIds()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    return-object v0
.end method

.method private setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;

    invoke-direct {v1, p0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->previewFonts:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->previewText:Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const v0, 0x7f0a0152

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const v0, 0x7f0a0153

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->titleStrip:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const v0, 0x7f0a025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->previewFonts:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setFonts(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->previewText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-direct {v1, v2, v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->titleStrip:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->setDistributeEvenly(Z)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->titleStrip:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0d003a

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x400

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const p2, 0x7f0a025f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const p3, 0x7f0a0260

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setParentTouchInterceptor(Landroid/widget/ScrollView;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const p2, 0x7f0a0150

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const p3, 0x7f0a014f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$1;

    invoke-direct {p3, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$2;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;)V

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_all"

    const-string p3, "\'aalt\' 1, \'calt\' 1, \'clig\' 1, \'curs\' 1, \'dlig\' 1, \'fina\' 1, \'hlig\' 1, \'init\' 1, \'isol\' 1, \'jalt\' 1, \'kalt\' 1, \'liga\' 1, \'locl\' 1, \'mark\' 1, \'medi\' 1, \'mkmk\' 1, \'ccmp\' 1, \'rlig\' 1, \'salt\' 1, \'swsh\' 1, \'titl\' 1, \'ss01\' 1, \'ss02\' 1, \'ss03\' 1, \'ss04\' 1, \'ss05\' 1, \'ss06\' 1, \'ss07\' 1, \'ss08\' 1, \'ss09\' 1, \'ss10\' 1, \'ss11\' 1, \'ss12\' 1, \'ss13\' 1, \'ss14\' 1, \'ss15\' 1, \'ss16\' 1, \'ss17\' 1, \'ss18\' 1, \'ss19\' 1, \'ss20\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_reset"

    const-string p3, "normal"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_swsh"

    const-string p3, "\'swsh\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_calt"

    const-string p3, "\'calt\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_dlig"

    const-string p3, "\'dlig\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_jalt"

    const-string p3, "\'jalt\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_liga"

    const-string p3, "\'liga\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_aalt"

    const-string p3, "\'aalt\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_locl"

    const-string p3, "\'locl\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_salt"

    const-string p3, "\'salt\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_mark"

    const-string p3, "\'mark\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_mkmk"

    const-string p3, "\'mkmk\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ccmp"

    const-string p3, "\'ccmp\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_fina"

    const-string p3, "\'fina\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_medi"

    const-string p3, "\'medi\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_init"

    const-string p3, "\'init\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_rlig"

    const-string p3, "\'rlig\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_fwid"

    const-string p3, "\'fwid\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss01"

    const-string p3, "\'ss01\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss02"

    const-string p3, "\'ss02\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss03"

    const-string p3, "\'ss03\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss04"

    const-string p3, "\'ss04\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss05"

    const-string p3, "\'ss05\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss06"

    const-string p3, "\'ss06\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss07"

    const-string p3, "\'ss07\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss08"

    const-string p3, "\'ss08\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_clig"

    const-string p3, "\'clig\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_hlig"

    const-string p3, "\'hlig\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_kalt"

    const-string p3, "\'kalt\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_titl"

    const-string p3, "\'titl\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss09"

    const-string p3, "\'ss09\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss10"

    const-string p3, "\'ss10\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss11"

    const-string p3, "\'ss11\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss12"

    const-string p3, "\'ss12\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss13"

    const-string p3, "\'ss13\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss14"

    const-string p3, "\'ss14\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss15"

    const-string p3, "\'ss15\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss16"

    const-string p3, "\'ss16\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss17"

    const-string p3, "\'ss17\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss18"

    const-string p3, "\'ss18\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss19"

    const-string p3, "\'ss19\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const-string p2, "ot_ss20"

    const-string p3, "\'ss20\' 1"

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setupOtButton(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setInitParams(Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->previewText:Ljava/lang/String;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->previewFonts:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    return-void
.end method

.method public setInterface(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->fo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;

    return-void
.end method
