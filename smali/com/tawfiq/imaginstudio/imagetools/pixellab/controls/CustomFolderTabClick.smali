.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static currentFolderPath:Ljava/lang/String;

.field public static currentTabListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;


# instance fields
.field public final folder:Ljava/io/File;

.field public final holder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

.field public final opt:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->opt:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->holder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->folder:Ljava/io/File;

    return-void
.end method

.method public static deleteRecursive(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->deleteRecursive(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static loadSavedTabs(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Linfo/hoang8f/android/segmented/SegmentedGroup;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;)V
    .locals 9

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/PixelLab/Stickers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v5, 0x18

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/RadioButton;->setTextSize(IF)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;

    invoke-direct {v5, p0, p2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;

    invoke-direct {v6, v5, v4, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;Landroid/widget/RadioButton;Linfo/hoang8f/android/segmented/SegmentedGroup;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v4}, Linfo/hoang8f/android/segmented/SegmentedGroup;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    sput-object p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->currentTabListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->folder:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->currentFolderPath:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->holder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    if-eqz v0, :cond_6

    const v1, 0x7f099999

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->holder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_1
    new-instance v8, Landroid/widget/HorizontalScrollView;

    invoke-direct {v8, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setId(I)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "+ \u0625\u0636\u0627\u0641\u0629"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const-string v2, "#e91e63"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x46

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$AddImageClick;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->opt:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->folder:Ljava/io/File;

    invoke-direct {v3, v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$AddImageClick;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Ljava/io/File;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->folder:Ljava/io/File;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->folder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v5, 0x5

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x37

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    int-to-float v7, v7

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x4

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomStickerItemClick;

    iget-object v10, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->opt:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-direct {v7, v10, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomStickerItemClick;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$ImageLongClick;

    invoke-direct {v4, p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$ImageLongClick;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;Ljava/io/File;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v9, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v8, v9}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->holder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    return-void
.end method
