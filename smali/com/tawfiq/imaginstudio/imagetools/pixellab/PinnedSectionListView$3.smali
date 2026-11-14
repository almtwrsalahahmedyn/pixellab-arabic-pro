.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->recreatePinnedShadow()V

    return-void
.end method
