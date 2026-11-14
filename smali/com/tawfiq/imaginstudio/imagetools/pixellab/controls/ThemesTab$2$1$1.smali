.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;->doInUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "presets/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;->val$preset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->loadPresetFromAsset(Ljava/lang/String;)V

    return-void
.end method
