.class public Lcom/TG/ۣۦۧۧ;
.super Ljava/lang/Object;


# static fields
.field public static ۡۤۢۨ:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method public static ۟۟ۢۤۥ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/TG/ۥۧۢۥ;->۟ۢۥۦۦ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ljava/lang/Throwable;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣ۟۠ۧ۠(Ljava/lang/Object;)[Landroid/content/pm/Signature;
    .locals 1

    invoke-static {}, Lcom/TG/ۣۥۢۡ;->۟ۦۡۤۡ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۡ۠ۤ(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    invoke-static {}, Lcom/TG/ۣۥۢۡ;->۟ۦۡۤۡ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۣ۟ۤۨ()Ljava/lang/Thread;
    .locals 2

    invoke-static {}, Lcom/TG/ۣۦۧۧ;->۟ۤۡ۟ۦ()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۨۦ()D
    .locals 4

    invoke-static {}, Lcom/TG/۟ۢۦۨ۠;->۟ۥۥۡۥ()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۤۡ۟ۦ()I
    .locals 2

    const v0, 0x1ac5a5

    const-string v1, "\u06e7\u06e6\u06df"

    invoke-static {v1}, Lcom/TG/ۥۧۢۥ;->ۣۣ۟ۢۡ(Ljava/lang/Object;)I

    move-result v1

    xor-int v0, v0, v1

    return v0
.end method

.method public static ۣ۟ۤۡۢ([SIII)Ljava/lang/String;
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

.method public static ۟ۥۣۣۨ(Ljava/lang/Object;)I
    .locals 1

    invoke-static {}, Lcom/TG/ۥۧۢۥ;->۟ۢۥۦۦ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Ljava/lang/ThreadGroup;

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۦۢۡ۟(Ljava/lang/Object;)[B
    .locals 1

    invoke-static {}, Lcom/TG/ۣۦۧۧ;->۟ۤۡ۟ۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۦۨۢ۠(Ljava/lang/String;)Ljava/lang/String;
    .locals 59

    move-object/from16 v8, p0

    const/4 v1, 0x0

    invoke-static {}, Lcom/TG/۟ۢۦۨ۠;->ۥۣۢۨ()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/TG/۟ۢۦۨ۠;->ۥۣۢۨ()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    const/16 v4, 0xf

    if-lt v0, v4, :cond_1

    :cond_0
    invoke-static {v3}, Lcom/TG/۟ۢۦۨ۠;->ۣ۟ۡ۟۠(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-static {v8}, Lcom/TG/۟ۢۦۨ۠;->ۣ۟ۡ۟۠(Ljava/lang/Object;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v0, v1

    :goto_1
    invoke-static {v8}, Lcom/TG/۟ۢۦۨ۠;->ۣ۟ۡ۟۠(Ljava/lang/Object;)I

    move-result v5

    if-lt v0, v5, :cond_2

    invoke-static {v4}, Lcom/TG/ۣۥۢۡ;->۟ۥۣۨۤ(Ljava/lang/Object;)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v2}, Lcom/TG/۟ۢۦۨ۠;->ۣ۟ۡ۟۠(Ljava/lang/Object;)I

    move-result v4

    :goto_2
    if-lt v1, v3, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v4, v3}, Lcom/TG/ۣۦۧۧ;->ۢۥ۟ۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lcom/TG/ۣۥۢۡ;->ۢۧۧ۟(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/TG/ۣۦۧۧ;->ۢۥ۟ۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/TG/۟ۢۦۨ۠;->ۤ۠ۨۤ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v4, v2}, Lcom/TG/ۣۦۧۧ;->ۢۥ۟ۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/TG/ۣۦۧۧ;->ۣ۟ۨۦ()D

    move-result-wide v4

    const/16 v6, 0xa

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    xor-int/2addr v4, v0

    invoke-static {v2, v4}, Lcom/TG/ۣۥۢۡ;->ۧۨۡ(Ljava/lang/Object;I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/TG/۟ۢۦۨ۠;->ۤ۠ۨۤ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v8, v0}, Lcom/TG/۟ۢۦۨ۠;->ۤ۟۟ۦ(Ljava/lang/Object;I)C

    move-result v5

    invoke-static {v3, v5}, Lcom/TG/۟ۢۦۨ۠;->۟ۢ۟ۤۥ(Ljava/lang/Object;I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    invoke-static {v8, v6}, Lcom/TG/۟ۢۦۨ۠;->ۤ۟۟ۦ(Ljava/lang/Object;I)C

    move-result v6

    invoke-static {v3, v6}, Lcom/TG/۟ۢۦۨ۠;->۟ۢ۟ۤۥ(Ljava/lang/Object;I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/TG/ۦۥۥۧ;->ۣۧۧۢ(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    aget-byte v5, v0, v1

    rem-int v6, v1, v4

    invoke-static {v2, v6}, Lcom/TG/۟ۢۦۨ۠;->ۤ۟۟ۦ(Ljava/lang/Object;I)C

    move-result v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static ۢۥ۟ۡ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {}, Lcom/TG/ۥۧۢۥ;->۟ۢۥۦۦ()I

    move-result v0

    if-gez v0, :cond_0

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

.method public static ۤۧۦۤ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/PackageInfo;
    .locals 1

    invoke-static {}, Lcom/TG/۟ۢۦۨ۠;->۟ۥۥۡۥ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/content/pm/PackageManager;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۦ۠ۥۤ(Ljava/lang/Object;)Ljava/security/MessageDigest;
    .locals 1

    invoke-static {}, Lcom/TG/ۣۦۧۧ;->۟ۤۡ۟ۦ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۦۤ۠(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/TG/۟ۢۦۨ۠;->۟ۥۥۡۥ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method
