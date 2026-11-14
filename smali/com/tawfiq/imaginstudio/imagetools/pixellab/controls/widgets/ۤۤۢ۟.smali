.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;
.super Ljava/lang/Object;


# static fields
.field private static final short:[S

.field public static ۢۡۦۥ:I = -0x2d


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x2

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0xc21s
        0x60fs
    .end array-data
.end method

.method public static ۟۟ۡۤۡ(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۥۦۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣ۟ۡۡ۟()D
    .locals 4

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->۟ۦۢۦۢ()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۢ۠۟ۡ()[S
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۥ۟ۦ۟()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟۟ۢۦ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۥۦۧ()I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۢۨۥ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۥ۟ۦ۟()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣ۟ۧ۟ۧ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۥ۟ۦ۟()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۤۨ۠۠(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۥۦۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/widget/ScrollView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۦ۟ۦ۟(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->۟ۦۢۦۢ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۦۣۨ(Ljava/lang/Object;I)I
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۥ۟ۦ۟()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۧ۟ۨۡ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۥ۟ۦ۟()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۨۡ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۨۤۢۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/widget/LinearLayout;

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۠۟ۦۤ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۥۦۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣۢۤۤ(Ljava/lang/Object;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->۟ۦۢۦۢ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۥ۟ۦ۟()I
    .locals 2

    const v0, 0xdcd0

    const-string v1, "\u06e5\u06e0"

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->۟۟ۢۤۦ(Ljava/lang/Object;)I

    move-result v1

    xor-int v0, v0, v1

    return v0
.end method

.method public static ۦۣ۟(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->۟ۦۢۦۢ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۧۧ۟۟(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۨۤۢۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۨۦ۠ۢ(Ljava/lang/String;)Ljava/lang/String;
    .locals 59

    move-object/from16 v8, p0

    const/4 v1, 0x0

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۣ۟۟ۢۦ()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۣ۟۟ۢۦ()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    const/16 v4, 0xf

    if-lt v0, v4, :cond_1

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-static {v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۢۤۨۢ(Ljava/lang/Object;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v0, v1

    :goto_1
    invoke-static {v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۢۤۨۢ(Ljava/lang/Object;)I

    move-result v5

    if-lt v0, v5, :cond_2

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۢۧ۟ۦ(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-static/range {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->۟ۢ۠۟ۡ()[S

    move-result-object v36

    const v39, 0xc40

    const v37, 0x0

    const v38, 0x1

    invoke-static/range {v36 .. v39}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->۟ۥۧۤ۟([SIII)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    :cond_0
    :goto_2
    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۢۤۨۢ(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_3

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۢۤۨۢ(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۢۤۨۢ(Ljava/lang/Object;)I

    move-result v5

    move v0, v1

    :goto_3
    if-lt v0, v4, :cond_4

    :goto_4
    array-length v0, v3

    if-lt v1, v0, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v4, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۤۢۥۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۣ۟۠۠۟(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۤۢۥۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۣ۟ۧ۟ۧ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v4, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۤۢۥۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۣ۟ۡۡ۟()D

    move-result-wide v4

    const/16 v6, 0xa

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    xor-int/2addr v4, v0

    invoke-static {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->۟ۥ۟ۦۢ(Ljava/lang/Object;I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۣ۟ۧ۟ۧ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v8, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->ۣ۟۟ۨۥ(Ljava/lang/Object;I)C

    move-result v5

    invoke-static {v3, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->۟ۦۣۨ(Ljava/lang/Object;I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    invoke-static {v8, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->ۣ۟۟ۨۥ(Ljava/lang/Object;I)C

    move-result v6

    invoke-static {v3, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->۟ۦۣۨ(Ljava/lang/Object;I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->۟ۥۣ۟ۡ(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۣ۟۟ۢۦ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۢۤۨۢ(Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->۟ۢ۠۟ۡ()[S

    move-result-object v32

    const v35, 0x66e

    const v33, 0x1

    const v34, 0x1

    invoke-static/range {v32 .. v35}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۣۣۤ۟;->ۣ۟ۦۧ۟([SIII)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    goto/16 :goto_2

    :cond_4
    aget-byte v6, v3, v0

    rem-int v7, v0, v5

    invoke-static {v2, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/۟ۥۣۨۡ;->ۣ۟۟ۨۥ(Ljava/lang/Object;I)C

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۤۤۢ۟;->ۣ۟۟ۢۦ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ۨۨ۟ۨ;->ۢۤۨۢ(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    goto/16 :goto_4
.end method

.method public static ۨۦۢۧ([SIII)Ljava/lang/String;
    .locals 54

    move/from16 v6, p3

    move/from16 v5, p2

    move/from16 v4, p1

    move-object/from16 v3, p0

    new-array v1, v5, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    add-int v2, v4, v0

    aget-short v2, v3, v2

    xor-int/2addr v2, v6

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
