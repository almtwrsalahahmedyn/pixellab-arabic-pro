.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;
.super Ljava/lang/Object;


# instance fields
.field path:Ljava/lang/String;

.field typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;->typeface:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method
