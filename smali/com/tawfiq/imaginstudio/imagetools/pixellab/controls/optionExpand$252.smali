.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;
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

.field final synthetic val$old3dDepth:I

.field final synthetic val$old3dDepthColorAutomatic:Z

.field final synthetic val$old3dDepthColorFill:I

.field final synthetic val$old3dDepthDarken:I

.field final synthetic val$old3dDepthFillType:I

.field final synthetic val$old3dDepthGradientFill:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field final synthetic val$old3dEnabled:Z

.field final synthetic val$old3dStokeInclude:Z

.field final synthetic val$old3dViewType:I

.field final synthetic val$old3dXRot:I

.field final synthetic val$old3dYRot:I

.field final synthetic val$old3dZRot:I

.field final synthetic val$oldLightAngle:I

.field final synthetic val$oldLightingEnabled:Z

.field final synthetic val$oldLightingIntensity:I

.field final synthetic val$oldLightingShadow:I

.field final synthetic val$oldLightingSpecularHardness:I

.field final synthetic val$oldObliqueAngle:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIIZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;ZZIIIIIIII)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    move v1, p2

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dEnabled:Z

    move v1, p3

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dViewType:I

    move v1, p4

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepth:I

    move v1, p5

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthDarken:I

    move v1, p6

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dStokeInclude:Z

    move v1, p7

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthFillType:I

    move v1, p8

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthColorFill:I

    move-object v1, p9

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthGradientFill:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move v1, p10

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthColorAutomatic:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingEnabled:Z

    move v1, p12

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightAngle:I

    move v1, p13

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingIntensity:I

    move/from16 v1, p14

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingShadow:I

    move/from16 v1, p15

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingSpecularHardness:I

    move/from16 v1, p16

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldObliqueAngle:I

    move/from16 v1, p17

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dXRot:I

    move/from16 v1, p18

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dYRot:I

    move/from16 v1, p19

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dZRot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->freezeFullRedraw()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dEnabled:Z

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dEnabled(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dViewType:I

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dViewType(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepth:I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthDarken:I

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDQuality()I

    move-result v3

    iget-boolean v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dStokeInclude:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dDepth(IIIZ)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthFillType:I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthColorFill:I

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthGradientFill:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iget-boolean v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthColorAutomatic:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dDepthColor(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingEnabled:Z

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightAngle:I

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingIntensity:I

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingShadow:I

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingSpecularHardness:I

    invoke-virtual/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dLighting(ZIIII)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldObliqueAngle:I

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dObliqueAngle(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dXRot:I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dYRot:I

    invoke-virtual {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotate3d(II)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->UnFreezeFullRedraw()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dZRot:I

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotateText(I)V

    return-void
.end method
