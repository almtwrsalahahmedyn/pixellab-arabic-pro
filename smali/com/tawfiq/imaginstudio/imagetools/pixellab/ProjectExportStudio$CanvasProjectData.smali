.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;
.super Ljava/lang/Object;
.source "ProjectExportStudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CanvasProjectData"
.end annotation


# instance fields
.field public backgroundBitmap:Landroid/graphics/Bitmap;

.field public backgroundColor:I

.field public height:I

.field public layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;",
            ">;"
        }
    .end annotation
.end field

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->backgroundColor:I

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->layers:Ljava/util/List;

    return-void
.end method
