.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$OldEmbossAmbient:I

.field final synthetic val$OldEmbossBevel:I

.field final synthetic val$OldEmbossEnabled:Ljava/lang/Boolean;

.field final synthetic val$OldEmbossHardness:I

.field final synthetic val$OldEmbossIncludeStroke:Z

.field final synthetic val$OldEmbossIntensity:I

.field final synthetic val$OldEmbossLightAngle:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Ljava/lang/Boolean;IIIIIZ)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossEnabled:Ljava/lang/Boolean;

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossLightAngle:I

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossIntensity:I

    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossAmbient:I

    iput p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossHardness:I

    iput p7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossBevel:I

    iput-boolean p8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossIncludeStroke:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossLightAngle:I

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossIntensity:I

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossAmbient:I

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossHardness:I

    iget v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossBevel:I

    invoke-virtual/range {v1 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEmboss(ZIIIII)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;->val$OldEmbossIncludeStroke:Z

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEmbossIncludeStroke(Z)V

    return-void
.end method
