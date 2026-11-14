.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
.super Landroidx/fragment/app/Fragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field bgButton:Landroid/widget/ImageButton;

.field bgtab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;

.field buttonArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field effectsButton:Landroid/widget/ImageButton;

.field pageAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TabsAdapter;

.field pager:Landroidx/viewpager/widget/ViewPager;

.field selectedColor:I

.field shapeButton:Landroid/widget/ImageButton;

.field shapestab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;

.field textButton:Landroid/widget/ImageButton;

.field texttab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;

.field themesButton:Landroid/widget/ImageButton;

.field themesTab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;

.field unselectedColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "#FFFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->unselectedColor:I

    const-string v0, "#FFFF3FFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->selectedColor:I

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->getTextContainer()Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    return-object p0
.end method

.method private getFragments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;

    invoke-direct {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;-><init>()V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->texttab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;

    invoke-direct {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;-><init>()V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapestab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    invoke-direct {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;-><init>()V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesTab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;

    invoke-direct {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;-><init>()V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgtab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesTab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->texttab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapestab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgtab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/EffectsTab;

    invoke-direct {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/EffectsTab;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getTextContainer()Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private initTabsLogic(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->textButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->effectsButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public getTab()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getTextStylesButtonRegion()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->texttab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;->getTextStylesButtonRegion()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public informBgTypeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgtab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;->toggleCropButton(Z)V

    :cond_0
    return-void
.end method

.method public informPresetsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesTab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->updateCustomProjectsVisibility()V

    :cond_0
    return-void
.end method

.method public informShapeSelectionChanged(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapestab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;->togglePanels(ZI)V

    :cond_0
    return-void
.end method

.method public informTextSelectionChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->texttab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;->togglePanels(Z)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "currTab"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    const v0, 0x7f0d003e

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->getFragments()Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TabsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TabsAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pageAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TabsAdapter;

    const p2, 0x7f0a02f2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pageAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TabsAdapter;

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    const p2, 0x7f0a0287

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesButton:Landroid/widget/ImageButton;

    const p2, 0x7f0a0263

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->textButton:Landroid/widget/ImageButton;

    const p2, 0x7f0a022a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapeButton:Landroid/widget/ImageButton;

    const p2, 0x7f0a00d8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgButton:Landroid/widget/ImageButton;

    const p2, 0x7f0a0128

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->effectsButton:Landroid/widget/ImageButton;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->textButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapeButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->effectsButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->initTabsLogic(Landroid/view/View;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->underLineTab(Landroid/widget/ImageButton;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string p3, "theme_prefs"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "app_color"

    const v0, -0xff8d8e

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesButton:Landroid/widget/ImageButton;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesButton:Landroid/widget/ImageButton;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->textButton:Landroid/widget/ImageButton;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapeButton:Landroid/widget/ImageButton;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgButton:Landroid/widget/ImageButton;

    if-eqz p3, :cond_4

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->effectsButton:Landroid/widget/ImageButton;

    if-eqz p3, :cond_5

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    return-object p1
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public underLineTab(Landroid/widget/ImageButton;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->selectedColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->unselectedColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->textButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->selectedColor:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->unselectedColor:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->selectedColor:I

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->unselectedColor:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->selectedColor:I

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->unselectedColor:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->effectsButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->selectedColor:I

    goto :goto_4

    :cond_4
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->unselectedColor:I

    :goto_4
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    return-void
.end method
