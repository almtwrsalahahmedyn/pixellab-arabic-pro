.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
.super Landroid/widget/PopupWindow;


# static fields
.field private static final short:[S


# instance fields
.field private currContext:Landroid/content/Context;

.field private final horPadding:I

.field private itemsContainer:Landroid/widget/LinearLayout;

.field lParamsSep:Landroid/widget/LinearLayout$LayoutParams;

.field lParamsText:Landroid/widget/LinearLayout$LayoutParams;

.field private largestChildWidth:I

.field private final maxWidth:I

.field private popupView:Landroid/widget/ScrollView;

.field private proItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final verPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x1f

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x56fs
        0x529s
        0x579s
        0x529s
        0x579s
        0x529s
        0x579s
        0x5abs
        0x3c1s
        0x5c4s
        0x5aes
        0x5a6s
        0x5afs
        0x5a4s
        0x5acs
        0x3ces
        0x5c9s
        0x5aas
        0x5c3s
        0x5aes
        0x5d8s
        0x5dfs
        0x5abs
        0x5a4s
        0x40fs
        0x419s
        0x41fs
        0x419s
        0x41fs
        0x419s
        0x41fs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 56

    move-object/from16 v6, p1

    move-object/from16 v5, p0

    invoke-direct {v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟ۢۤ۠ۦ(I)I

    move-result v0

    iput v0, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->horPadding:I

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟ۢۤ۠ۦ(I)I

    move-result v0

    iput v0, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->verPadding:I

    const/16 v0, 0x12c

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟ۢۤ۠ۦ(I)I

    move-result v0

    iput v0, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->maxWidth:I

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟ۢۤ۠ۦ(I)I

    move-result v0

    iput v0, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->largestChildWidth:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->proItems:Ljava/util/ArrayList;

    iput-object v6, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->currContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->popupView:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->ۤۧ۠۠(Ljava/lang/Object;I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->lParamsText:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟ۢۤ۠ۦ(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۣ۟ۢۨ۟(Ljava/lang/Object;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۥۥ۟ۤ(Ljava/lang/Object;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->۟ۤۨ۠۠(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۣ۟ۢۨ۟(Ljava/lang/Object;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۢۧۨۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۦۣ۟(Ljava/lang/Object;I)V

    invoke-static {v5, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->۟۟ۡۤۡ(Ljava/lang/Object;I)V

    const v0, 0x7f080201

    invoke-static {v6, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۣۢۤۤ(Ljava/lang/Object;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->۟ۡ۠ۡۢ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۣ۟ۧۡ۟(Ljava/lang/Object;Z)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟ۢۤ۠ۦ(I)I

    move-result v0

    invoke-direct {v6, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v6, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->lParamsSep:Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟ۢۤ۠ۦ(I)I

    move-result v0

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    return-void
.end method

.method private addSeparator(Z)V
    .locals 54

    move/from16 v4, p1

    move-object/from16 v3, p0

    new-instance v0, Landroid/view/View;

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟۟۠۠ۤ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static/range {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟ۢۦۣۡ()[S

    move-result-object v12

    const v15, 0x54c

    const v13, 0x0

    const v14, 0x7

    invoke-static/range {v12 .. v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۨۦۢۧ([SIII)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v2, v12

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۢۨۧۥ(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->ۡ۠ۢۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۥۥ۟ۤ(Ljava/lang/Object;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟ۥۦۢ۟(Ljava/lang/Object;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۣ۟ۨۡ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۥ۠ۦ۠(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->۟ۧ۟ۨۡ(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private createItem(ILjava/lang/Runnable;Z)Landroid/view/View;
    .locals 53

    move/from16 v5, p3

    move-object/from16 v4, p2

    move/from16 v3, p1

    move-object/from16 v2, p0

    new-instance v0, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟۟۠۠ۤ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11001d

    if-ne v3, v1, :cond_0

    invoke-static/range {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟ۢۦۣۡ()[S

    move-result-object v41

    const v44, 0x3ee

    const v42, 0x7

    const v43, 0x11

    invoke-static/range {v41 .. v44}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۨۦۢۧ([SIII)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v3, v41

    invoke-static {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->۟ۧۡۥۨ(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->۟۠ۥۡۧ(Ljava/lang/Object;I)V

    :goto_0
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu$1;

    invoke-direct {v3, v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;Ljava/lang/Runnable;)V

    invoke-static {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->۠۟ۦۤ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟ۥۣۨۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v5, :cond_1

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟۟۠۠ۤ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۥۧۥۢ(Ljava/lang/Object;I)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/-$$Lambda$CustomTextMenu$ms0pZ-9USjH-hv1hNba3IKEMi0k;

    invoke-direct {v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/-$$Lambda$CustomTextMenu$ms0pZ-9USjH-hv1hNba3IKEMi0k;-><init>(Landroid/widget/TextView;)V

    invoke-static {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->ۡۥۣۤ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->۠ۡۤ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟۟۠۠ۤ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08017d

    invoke-static {v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۣۢۤۤ(Ljava/lang/Object;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟۟۠۠ۤ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۣ۟ۢۨۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->۠ۡۤ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_1
    return-object v0
.end method

.method private defaultTextSettings(Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x2

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->maxWidth:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->horPadding:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->verPadding:I

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->currContext:Landroid/content/Context;

    const v1, 0x7f0801d6

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$createItem$0(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->۟ۦ۟ۢۤ(Ljava/lang/Object;)Z

    return-void
.end method

.method public static ۟۟۠۠ۤ(Ljava/lang/Object;)Landroid/content/Context;
    .locals 2

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۥۦۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->currContext:Landroid/content/Context;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟۟ۦۣۤ(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۨۤۢۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->horPadding:I

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۡۧۡ۠(Ljava/lang/Object;Z)V
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۥ۟ۦ۟()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addSeparator(Z)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۢۤ۠ۦ(I)I
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۨۤۢۨ()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۢۦۣۡ()[S
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۨۤۢۨ()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۢۨ۟(Ljava/lang/Object;)Landroid/widget/ScrollView;
    .locals 2

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۨۤۢۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->popupView:Landroid/widget/ScrollView;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۤۤۤۡ(Ljava/lang/Object;ILjava/lang/Object;Z)Landroid/view/View;
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۥۦۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    check-cast p2, Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->createItem(ILjava/lang/Runnable;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۥۣۨۥ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۥ۟ۦ۟()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->defaultTextSettings(Landroid/widget/TextView;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۥۦۢ۟(Ljava/lang/Object;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۥ۟ۦ۟()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->lParamsSep:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۢۢۥۧ(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۥۦۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->verPadding:I

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۤ۟ۢ۠(Ljava/lang/Object;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->۟ۦۢۦۢ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->lParamsText:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۥ۠۟ۨ(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۥۦۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->maxWidth:I

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۥ۠ۦ۠(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۨۤۢۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->proItems:Ljava/util/ArrayList;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۥۥ۟ۤ(Ljava/lang/Object;)Landroid/widget/LinearLayout;
    .locals 2

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->۟ۦۢۦۢ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->itemsContainer:Landroid/widget/LinearLayout;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۨۧۢۦ(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۥۦۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->largestChildWidth:I

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addItem(ILjava/lang/Runnable;)V
    .locals 52

    move-object/from16 v3, p2

    move/from16 v2, p1

    move-object/from16 v1, p0

    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->ۣ۟ۤ۠۟(Ljava/lang/Object;ILjava/lang/Object;Z)V

    return-void
.end method

.method public addItem(ILjava/lang/Runnable;Z)V
    .locals 52

    move/from16 v4, p3

    move-object/from16 v3, p2

    move/from16 v2, p1

    move-object/from16 v1, p0

    invoke-static {v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟ۤۤۤۡ(Ljava/lang/Object;ILjava/lang/Object;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۡۡۦۡ(Ljava/lang/Object;II)V

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۥ۠ۥ۠(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۨۧۢۦ(Ljava/lang/Object;)I

    move-result v0

    if-le v3, v0, :cond_0

    iput v3, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->largestChildWidth:I

    :cond_0
    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۥۥ۟ۤ(Ljava/lang/Object;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۤ۟ۢ۠(Ljava/lang/Object;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۣ۟ۨۡ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->۟ۡۧۡ۠(Ljava/lang/Object;Z)V

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۥ۠ۦ۠(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->۟ۧ۟ۨۡ(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public done()V
    .locals 55

    move-object/from16 v4, p0

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۥۥ۟ۤ(Ljava/lang/Object;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->ۦۦۥۡ(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->ۦۢۡۦ(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-nez v1, :cond_0

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۥۥ۟ۤ(Ljava/lang/Object;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->۟ۧۥۣۣ(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۨۧۢۦ(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۥ۠۟ۨ(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->ۧۡ۠ۦ(II)I

    move-result v0

    iput v0, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->largestChildWidth:I

    const/4 v0, 0x0

    :goto_0
    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۥۥ۟ۤ(Ljava/lang/Object;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->ۦۦۥۡ(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۥۥ۟ۤ(Ljava/lang/Object;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->ۦۢۡۦ(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->ۣۢۤ۟(Ljava/lang/Object;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۨۧۢۦ(Ljava/lang/Object;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->۠۠ۤۥ(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public hideFirstItem(Z)V
    .locals 55

    move/from16 v5, p1

    move-object/from16 v4, p0

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۥۥ۟ۤ(Ljava/lang/Object;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->ۦۢۡۦ(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz v5, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->۟ۦ۟ۦ۟(Ljava/lang/Object;I)V

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۥۥ۟ۤ(Ljava/lang/Object;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->ۦۦۥۡ(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_2

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۥۥ۟ۤ(Ljava/lang/Object;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->ۦۢۡۦ(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    if-eqz v5, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->۟ۦ۟ۦ۟(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method public toggleProItems(Z)V
    .locals 54

    move/from16 v4, p1

    move-object/from16 v3, p0

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->ۥ۠ۦ۠(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->۟ۤۤۥۢ(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->۟ۧۧ۟ۧ(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۧۥۤۢ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    :goto_1
    invoke-static {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->۟ۦ۟ۦ۟(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
