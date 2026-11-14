.class public Lcom/smalihelper/iran/ۢۨۥۨ;
.super Ljava/lang/Object;


# static fields
.field public static ۟ۦۥۢۤ:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method public static ۟۟۟ۡۧ()I
    .locals 2

    const v0, -0x1ab286

    const-string v1, "\u06e2\u06e3\u06e3"

    invoke-static {v1}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۤۨۡ۟(Ljava/lang/Object;)I

    move-result v1

    xor-int v0, v0, v1

    return v0
.end method

.method public static ۟ۡۢۡۤ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۧۢۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/content/Context;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۤۡ۟ۤ(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۧۢۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۥۧۨۢ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۟ۧۡ;->۟ۧۤۧۢ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/widget/Button;

    check-cast p1, Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۦۥ۠۠(Ljava/lang/String;)Ljava/lang/String;
    .locals 59

    move-object/from16 v8, p0

    const/4 v1, 0x0

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟ۡۤۦۢ()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟ۡۤۦۢ()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    const/16 v4, 0xf

    if-lt v0, v4, :cond_0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-static {v8}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۣ۟ۢۤۧ(Ljava/lang/Object;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v0, v1

    :goto_1
    invoke-static {v8}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۣ۟ۢۤۧ(Ljava/lang/Object;)I

    move-result v5

    if-lt v0, v5, :cond_1

    invoke-static {v4}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۧۢ۟ۥ(Ljava/lang/Object;)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v2}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۣ۟ۢۤۧ(Ljava/lang/Object;)I

    move-result v4

    :goto_2
    if-gtz v3, :cond_2

    :goto_3
    array-length v2, v0

    if-lt v1, v2, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v4, v3}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟ۧۧۤۧ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟ۤۤ۟۠(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟ۧۧۤۧ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۦۥۣۣ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v4, v2}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟ۧۧۤۧ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۣ۟ۧ()D

    move-result-wide v4

    const/16 v6, 0xa

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    xor-int/2addr v4, v0

    invoke-static {v2, v4}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۣ۟ۤۡۢ(Ljava/lang/Object;I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۦۥۣۣ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v8, v0}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟۟ۧۧۡ(Ljava/lang/Object;I)C

    move-result v5

    invoke-static {v3, v5}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->۟ۤۥ۠ۦ(Ljava/lang/Object;I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    invoke-static {v8, v6}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟۟ۧۧۡ(Ljava/lang/Object;I)C

    move-result v6

    invoke-static {v3, v6}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->۟ۤۥ۠ۦ(Ljava/lang/Object;I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/smalihelper/iran/۟۟ۧۡ;->۟۠ۤۧۧ(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    aget-byte v6, v0, v5

    rem-int v7, v5, v4

    invoke-static {v2, v7}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟۟ۧۧۡ(Ljava/lang/Object;I)C

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟ۡۤۦۢ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۣ۟ۢۤۧ(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static ۟ۦۥۧۨ()I
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۧۨ۟۠()I

    move-result v0

    if-lez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۠۟ۧۨ([SIII)Ljava/lang/String;
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

.method public static ۠۠۠ۡ(Ljava/lang/Object;F)V
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۡۨ۟;->۟ۤۥۣۥ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣۧۤ۠(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۧۢۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    check-cast p1, Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۤ۠ۨۧ()Landroid/widget/ImageView$ScaleType;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۧۢۦ()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۧۨ۠ۥ(Ljava/lang/Object;)Landroid/app/AlertDialog;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۟ۧۡ;->۟ۧۤۧۢ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۨۦۣۧ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۧۨ۟۠()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method
