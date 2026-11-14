.class public Lcom/signcheck/ۨ۠ۥ۟;
.super Ljava/lang/Object;


# static fields
.field public static ۣۨۢ:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method public static ۟۟ۢۡۦ(Ljava/lang/String;)Ljava/lang/String;
    .locals 59

    move-object/from16 v8, p0

    const/4 v0, 0x0

    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->ۥۥۨۧ()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->ۥۥۨۧ()Ljava/lang/String;

    move-result-object v2

    move v1, v0

    :goto_0
    const/16 v4, 0xf

    if-lt v1, v4, :cond_0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-static {v8}, Lcom/signcheck/ۨ۠ۥ۟;->ۢۤۡۨ(Ljava/lang/Object;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_1
    invoke-static {v8}, Lcom/signcheck/ۨ۠ۥ۟;->ۢۤۡۨ(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_1

    invoke-static {v1}, Lcom/signcheck/ۨ۠ۥ۟;->۟ۢۢۦۥ(Ljava/lang/Object;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v2}, Lcom/signcheck/ۨ۠ۥ۟;->ۢۤۡۨ(Ljava/lang/Object;)I

    move-result v4

    :goto_2
    if-lt v0, v3, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v4, v3}, Lcom/signcheck/۟ۢ۠۠ۡ;->۟ۢ۠ۧۥ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v1}, Lcom/signcheck/ۨ۠ۥ۟;->۠۟ۨۦ(I)Ljava/lang/String;

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

    xor-int/2addr v4, v1

    invoke-static {v2, v4}, Lcom/signcheck/ۨ۠ۥ۟;->۟ۦۨۡۤ(Ljava/lang/Object;I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۦۥۤۤ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x2

    invoke-static {v8, v4}, Lcom/signcheck/۟ۧ۟ۦۨ;->ۢۥ۠۟(Ljava/lang/Object;I)C

    move-result v4

    invoke-static {v3, v4}, Lcom/signcheck/ۢۢ;->ۨۨۨ(Ljava/lang/Object;I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    const/4 v5, -0x1

    invoke-static {v8, v5}, Lcom/signcheck/۟ۧ۟ۦۨ;->ۢۥ۠۟(Ljava/lang/Object;I)C

    move-result v5

    invoke-static {v3, v5}, Lcom/signcheck/ۢۢ;->ۨۨۨ(Ljava/lang/Object;I)I

    move-result v5

    or-int/2addr v4, v5

    invoke-static {v1, v4}, Lcom/signcheck/۟ۧ۟ۦۨ;->۟ۢۦۣۨ(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    aget-byte v5, v1, v0

    rem-int v6, v0, v4

    invoke-static {v2, v6}, Lcom/signcheck/۟ۧ۟ۦۨ;->ۢۥ۠۟(Ljava/lang/Object;I)C

    move-result v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static ۟۟ۤ۠ۡ(Ljava/lang/Object;)Ljava/util/Enumeration;
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/util/jar/JarFile;

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟۟ۦۡۡ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->۟۠ۡۢۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/util/jar/JarFile;

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->close()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟۠ۡۢۧ()I
    .locals 2

    const v0, 0x1aba0f

    const-string v1, "\u06e4\u06e1\u06e2"

    invoke-static {v1}, Lcom/signcheck/ۨ۠ۥ۟;->۟۠ۨۤۨ(Ljava/lang/Object;)I

    move-result v1

    xor-int v0, v0, v1

    return v0
.end method

.method public static ۟۠ۨۤۨ(Ljava/lang/Object;)I
    .locals 51

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public static ۟۠ۨۤۨ(Ljava/lang/String;)Ljava/lang/Class;
    .locals 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;^",
            "Ljava/lang/ClassNotFoundException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    move-object/from16 v4, p0

    move-object v0, v4

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static ۟۠ۨۤۨ([SIII)Ljava/lang/String;
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

.method public static ۟ۡۦۤ۠(Ljava/lang/Object;)[B
    .locals 1

    invoke-static {}, Lcom/signcheck/ۦ۟ۥۤ;->ۡۦۢۤ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۢۢۦۥ(Ljava/lang/Object;)[B
    .locals 1

    invoke-static {}, Lcom/signcheck/ۢۢ;->۟ۧۧۧ۟()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۤۡۡۦ(Ljava/lang/Object;)Ljava/security/MessageDigest;
    .locals 1

    invoke-static {}, Lcom/signcheck/ۢۢ;->۟ۧۧۧ۟()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۤۢۤۤ(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/signcheck/ۢۢ;->۟ۧۧۧ۟()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ljava/util/Enumeration;

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۦۨۡۤ(Ljava/lang/Object;I)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {}, Lcom/signcheck/ۦ۟ۥۤ;->ۡۦۢۤ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۧ۟ۤ(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۧۢ۟()I
    .locals 2

    invoke-static {}, Lcom/signcheck/ۦ۟ۥۤ;->ۡۦۢۤ()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۠۟ۨۦ(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/signcheck/ۢۢ;->۟ۧۧۧ۟()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۢۤۡۨ(Ljava/lang/Object;)I
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

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

.method public static ۢۨۧۧ(Ljava/lang/Object;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->۟۠ۡۢۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۤۦ۟ۦ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۤۧۨۨ(Ljava/lang/Object;)Ljava/lang/ThreadGroup;
    .locals 1

    invoke-static {}, Lcom/signcheck/ۢۢ;->۟ۧۧۧ۟()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ljava/lang/ThreadGroup;

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۥۥۨۧ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/signcheck/۟ۢ۠۠ۡ;->ۤۨۡۦ()I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۧۦۤ(I)V
    .locals 1

    return-void
.end method

.method public static ۧۦۦۢ([SIII)Ljava/lang/String;
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

.method public static ۧۧۢۤ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/signcheck/ۦ۟ۥۤ;->ۡۦۢۤ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۨ۠۠(Ljava/lang/Object;)Ljava/lang/ThreadGroup;
    .locals 1

    invoke-static {}, Lcom/signcheck/ۦ۟ۥۤ;->ۡۦۢۤ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۨۡۧ(Ljava/lang/Object;)[Ljava/security/cert/Certificate;
    .locals 1

    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->۟۠ۡۢۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/util/jar/JarEntry;

    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method
