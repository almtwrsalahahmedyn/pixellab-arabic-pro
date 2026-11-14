.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;
.super Ljava/lang/Object;


# static fields
.field public static final ITEM:I = 0x0

.field public static final SECTION:I = 0x1


# instance fields
.field public final category_name:Ljava/lang/String;

.field public deletable:Z

.field public final font_name:Ljava/lang/String;

.field public final font_path:Ljava/lang/String;

.field public listPosition:I

.field public sectionPosition:I

.field public final type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->type:I

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->font_name:Ljava/lang/String;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->category_name:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->deletable:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, ":\""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->font_name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
