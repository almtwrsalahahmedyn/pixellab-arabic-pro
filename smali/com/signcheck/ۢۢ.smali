.class public Lcom/signcheck/ۢۢ;
.super Ljava/lang/Object;


# static fields
.field private static final short:[S

.field public static ۣۣۡۡ:I = 0x34


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x2

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/signcheck/ۢۢ;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x320s
        0x3a1s
    .end array-data
.end method

.method public static ۟۟۟ۥۢ()D
    .locals 4

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۡۦۣۤ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۢۥ۟ۤ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/signcheck/ۦ۟ۥۤ;->ۡۦۢۤ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣ۟ۢۥۥ()[S
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/signcheck/ۢۢ;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۤۤۡۧ(Ljava/lang/Object;)Landroid/content/pm/SigningInfo;
    .locals 2

    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->۟۠ۡۢۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۥۥۣۨ(I)V
    .locals 1

    return-void
.end method

.method public static ۟ۥۦۡۢ()Ljava/lang/Thread;
    .locals 2

    invoke-static {}, Lcom/signcheck/ۦ۟ۥۤ;->ۡۦۢۤ()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۦۧۡۨ(Ljava/lang/String;)Ljava/lang/String;
    .locals 59

    move-object/from16 v8, p0

    const/4 v1, 0x0

    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->ۥۥۨۧ()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->ۥۥۨۧ()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    const/16 v4, 0xf

    if-lt v0, v4, :cond_1

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-static {v8}, Lcom/signcheck/ۨ۠ۥ۟;->ۢۤۡۨ(Ljava/lang/Object;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v0, v1

    :goto_1
    invoke-static {v8}, Lcom/signcheck/ۨ۠ۥ۟;->ۢۤۡۨ(Ljava/lang/Object;)I

    move-result v5

    if-lt v0, v5, :cond_2

    invoke-static {v4}, Lcom/signcheck/ۨ۠ۥ۟;->۟ۢۢۦۥ(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-static/range {}, Lcom/signcheck/ۢۢ;->ۣ۟ۢۥۥ()[S

    move-result-object v43

    const v46, 0x341

    const v44, 0x0

    const v45, 0x1

    invoke-static/range {v43 .. v46}, Lcom/signcheck/۟ۢ۠۠ۡ;->۟۟۟([SIII)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    :cond_0
    :goto_2
    invoke-static {v0}, Lcom/signcheck/ۨ۠ۥ۟;->ۢۤۡۨ(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_3

    invoke-static {v0}, Lcom/signcheck/ۨ۠ۥ۟;->ۢۤۡۨ(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v2}, Lcom/signcheck/ۨ۠ۥ۟;->ۢۤۡۨ(Ljava/lang/Object;)I

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

    invoke-static {v4, v3}, Lcom/signcheck/۟ۢ۠۠ۡ;->۟ۢ۠ۧۥ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lcom/signcheck/ۨ۠ۥ۟;->۠۟ۨۦ(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/signcheck/۟ۢ۠۠ۡ;->۟ۢ۠ۧۥ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۦۥۤۤ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v4, v2}, Lcom/signcheck/۟ۢ۠۠ۡ;->۟ۢ۠ۧۥ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/signcheck/ۢۢ;->۟۟۟ۥۢ()D

    move-result-wide v4

    const/16 v6, 0xa

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    xor-int/2addr v4, v0

    invoke-static {v2, v4}, Lcom/signcheck/ۨ۠ۥ۟;->۟ۦۨۡۤ(Ljava/lang/Object;I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۦۥۤۤ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v8, v0}, Lcom/signcheck/۟ۧ۟ۦۨ;->ۢۥ۠۟(Ljava/lang/Object;I)C

    move-result v5

    invoke-static {v3, v5}, Lcom/signcheck/ۢۢ;->ۨۨۨ(Ljava/lang/Object;I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    invoke-static {v8, v6}, Lcom/signcheck/۟ۧ۟ۦۨ;->ۢۥ۠۟(Ljava/lang/Object;I)C

    move-result v6

    invoke-static {v3, v6}, Lcom/signcheck/ۢۢ;->ۨۨۨ(Ljava/lang/Object;I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/signcheck/۟ۧ۟ۦۨ;->۟ۢۦۣۨ(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->ۥۥۨۧ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/signcheck/ۨ۠ۥ۟;->ۢۤۡۨ(Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {}, Lcom/signcheck/ۢۢ;->ۣ۟ۢۥۥ()[S

    move-result-object v21

    const v24, 0x3c0

    const v22, 0x1

    const v23, 0x1

    invoke-static/range {v21 .. v24}, Lcom/signcheck/۟ۧ۟ۦۨ;->۟ۤۨۦ۟([SIII)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    goto/16 :goto_2

    :cond_4
    aget-byte v6, v3, v0

    rem-int v7, v0, v5

    invoke-static {v2, v7}, Lcom/signcheck/۟ۧ۟ۦۨ;->ۢۥ۠۟(Ljava/lang/Object;I)C

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->ۥۥۨۧ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/signcheck/ۨ۠ۥ۟;->ۢۤۡۨ(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    goto/16 :goto_4
.end method

.method public static ۟ۧۧۧ۟()I
    .locals 2

    const v0, -0x1aae8a

    const-string v1, "\u06e1\u06e1\u06e5"

    invoke-static {v1}, Lcom/signcheck/ۨ۠ۥ۟;->۟۠ۨۤۨ(Ljava/lang/Object;)I

    move-result v1

    xor-int v0, v0, v1

    return v0
.end method

.method public static ۡۦ۠ۡ(Ljava/lang/Object;Ljava/lang/Object;II)I
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/io/InputStream;

    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۤۥ([SIII)Ljava/lang/String;
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

.method public static ۣۨۤ۠(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .locals 1

    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->۟۠ۡۢۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/lang/ThreadGroup;

    check-cast p1, [Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۤۦ۠ۥ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۨۥۥ۟(Ljava/lang/Object;)[Landroid/content/pm/Signature;
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۨۨۨ(Ljava/lang/Object;I)I
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method
