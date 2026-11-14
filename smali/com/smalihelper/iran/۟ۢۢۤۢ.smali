.class public Lcom/smalihelper/iran/۟ۢۢۤۢ;
.super Ljava/lang/Object;


# static fields
.field private static final short:[S

.field public static ۣ۟ۧۤ۠:I = -0x50


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x2

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smalihelper/iran/۟ۢۢۤۢ;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x213s
        0x8f5s
    .end array-data
.end method

.method public static ۟۟ۧۤۦ(Ljava/lang/Object;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۧۨ۟۠()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟۟ۧۧۡ(Ljava/lang/Object;I)C
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۟ۧۡ;->۟ۧۤۧۢ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟۟ۧۧۢ(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۧۢۦ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۡۤۦۢ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۡۨ۟;->۟ۤۥۣۥ()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۢۤۧ(Ljava/lang/Object;)I
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۧۢۦ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۢۨۧ(Ljava/lang/Object;Z)V
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۡۨ۟;->۟ۤۥۣۥ()I

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣ۟ۤۡۢ(Ljava/lang/Object;I)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۧۨ۟۠()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۤ۟ۢ()[S
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۧۨ۟۠()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/smalihelper/iran/۟ۢۢۤۢ;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۤۤ۟۠(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۧۨ۟۠()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۧۡ۟(Ljava/lang/Object;Ljava/lang/Object;)Landroid/app/AlertDialog$Builder;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۡۨ۟;->۟ۤۥۣۥ()I

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Landroid/app/AlertDialog$Builder;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۧۧۤۧ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۧۢۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/lang/StringBuffer;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۠ۥۢۥ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۡۨ۟;->۟ۤۥۣۥ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/content/res/AssetManager;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۡۦۧۢ(Ljava/lang/Object;)I
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۟ۧۡ;->۟ۧۤۧۢ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۢۦۡ۠([SIII)Ljava/lang/String;
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

.method public static ۢۧۦۤ(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۧۢۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۤۤ۟۠(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۧۨ۟۠()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۤۨ۟ۤ(Ljava/lang/String;)Ljava/lang/String;
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

    if-lt v0, v4, :cond_1

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-static {v8}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۣ۟ۢۤۧ(Ljava/lang/Object;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v0, v1

    :goto_1
    invoke-static {v8}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۣ۟ۢۤۧ(Ljava/lang/Object;)I

    move-result v5

    if-lt v0, v5, :cond_2

    invoke-static {v4}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۧۢ۟ۥ(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-static/range {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟ۤ۟ۢ()[S

    move-result-object v44

    const v47, 0x272

    const v45, 0x0

    const v46, 0x1

    invoke-static/range {v44 .. v47}, Lcom/smalihelper/iran/۟۟ۧۡ;->ۣ۟ۢ۠ۦ([SIII)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    :cond_0
    :goto_2
    invoke-static {v0}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۣ۟ۢۤۧ(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_3

    invoke-static {v0}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۣ۟ۢۤۧ(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v2}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۣ۟ۢۤۧ(Ljava/lang/Object;)I

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

    :cond_2
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

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟ۡۤۦۢ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۣ۟ۢۤۧ(Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟ۤ۟ۢ()[S

    move-result-object v36

    const v39, 0x894

    const v37, 0x1

    const v38, 0x1

    invoke-static/range {v36 .. v39}, Lcom/smalihelper/iran/۟۟ۧۡ;->ۣ۟ۢ۠ۦ([SIII)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    goto/16 :goto_2

    :cond_4
    aget-byte v6, v3, v0

    rem-int v7, v0, v5

    invoke-static {v2, v7}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟۟ۧۧۡ(Ljava/lang/Object;I)C

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->۟ۡۤۦۢ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۣ۟ۢۤۧ(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    goto/16 :goto_4
.end method

.method public static ۦۥۣۣ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۧۢۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۧۢ۟ۥ(Ljava/lang/Object;)[B
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۡۨ۟;->۟ۤۥۣۥ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۧۢۦ()I
    .locals 2

    const v0, 0x1aa718

    const-string v1, "\u06df\u06e0\u06e8"

    invoke-static {v1}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۤۨۡ۟(Ljava/lang/Object;)I

    move-result v1

    xor-int v0, v0, v1

    return v0
.end method

.method public static ۣۨۢۡ(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۟ۧۡ;->۟ۧۤۧۢ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۨۥۢۢ(Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۧۢۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۨۦۡۤ(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۧۨ۟۠()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method
