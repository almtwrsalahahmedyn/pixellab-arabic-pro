.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;
.super Ljava/lang/Object;
.source "ArabicTextEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Candidate"
.end annotation


# instance fields
.field public final insertBeforeIndex:I

.field public final score:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;->insertBeforeIndex:I

    .line 139
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;->score:I

    .line 140
    return-void
.end method
