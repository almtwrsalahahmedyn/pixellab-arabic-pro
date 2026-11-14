.class public Lcom/signcheck/۟ۧ۟ۦۨ;
.super Ljava/lang/Object;


# static fields
.field public static ۟ۥ۠ۨ۠:I = 0x4b


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method public static ۟۟ۥۡۧ(Ljava/lang/Object;)[B
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/content/pm/Signature;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۡۨ۟(Ljava/lang/Object;)[B
    .locals 1

    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->۟۠ۡۢۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/security/cert/Certificate;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۢۢ۟(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۢۦۣۨ(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Lcom/signcheck/ۦ۟ۥۤ;->ۡۦۢۤ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣ۟۟ۡ۟(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/signcheck/ۦ۟ۥۤ;->ۡۦۢۤ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ljava/lang/Throwable;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣ۟ۤۤۧ(J)V
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۤۨۦ۟([SIII)Ljava/lang/String;
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

.method public static ۟ۦۣ۠۟(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/signcheck/ۢۢ;->۟ۧۧۧ۟()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ljava/security/MessageDigest;

    check-cast p1, [B

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۦۣ۠ۦ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/signcheck/ۦ۟ۥۤ;->ۡۦۢۤ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۧ۟ۡۥ(Ljava/lang/String;)Ljava/lang/String;
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

    if-lt v0, v4, :cond_0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-static {v8}, Lcom/signcheck/ۨ۠ۥ۟;->ۢۤۡۨ(Ljava/lang/Object;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v0, v1

    :goto_1
    invoke-static {v8}, Lcom/signcheck/ۨ۠ۥ۟;->ۢۤۡۨ(Ljava/lang/Object;)I

    move-result v5

    if-lt v0, v5, :cond_1

    invoke-static {v4}, Lcom/signcheck/ۨ۠ۥ۟;->۟ۢۢۦۥ(Ljava/lang/Object;)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v2}, Lcom/signcheck/ۨ۠ۥ۟;->ۢۤۡۨ(Ljava/lang/Object;)I

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

    :cond_1
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

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    aget-byte v6, v0, v5

    rem-int v7, v5, v4

    invoke-static {v2, v7}, Lcom/signcheck/۟ۧ۟ۦۨ;->ۢۥ۠۟(Ljava/lang/Object;I)C

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->ۥۥۨۧ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/signcheck/ۨ۠ۥ۟;->ۢۤۡۨ(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static ۠ۧۥۢ(Ljava/lang/Object;)I
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/lang/ThreadGroup;

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۢۥ۠۟(Ljava/lang/Object;I)C
    .locals 1

    invoke-static {}, Lcom/signcheck/ۦ۟ۥۤ;->ۡۦۢۤ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۥ۠۟(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->۟۠ۡۢۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۥ۠ۧ()Landroid/os/Looper;
    .locals 2

    invoke-static {}, Lcom/signcheck/ۢۢ;->۟ۧۧۧ۟()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۦۢۧۨ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/util/jar/JarEntry;

    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۦۨۥۥ(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/signcheck/ۦ۟ۥۤ;->ۡۦۢۤ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۧۤۥ۠(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/signcheck/ۢۢ;->۟ۧۧۧ۟()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ljava/util/Enumeration;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۧۥۤۦ(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    invoke-static {}, Lcom/signcheck/ۦ۟ۥۤ;->ۡۦۢۤ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۧۨ۟ۤ()I
    .locals 2

    const v0, 0xdc40

    const-string v1, "\u06e0\u06e3"

    invoke-static {v1}, Lcom/signcheck/ۨ۠ۥ۟;->۟۠ۨۤۨ(Ljava/lang/Object;)I

    move-result v1

    xor-int v0, v0, v1

    return v0
.end method
