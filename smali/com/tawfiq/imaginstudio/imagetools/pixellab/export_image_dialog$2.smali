.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;-><init>(Landroid/content/Context;IIZIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

.field final synthetic val$aspectX:I

.field final synthetic val$aspectY:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;II)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectX:I

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 p1, 0x8

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    const/16 p3, 0x1388

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    const/16 p3, 0xfa0

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    const/16 p3, 0xbb8

    goto :goto_0

    :pswitch_3
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    const/16 p3, 0x7d0

    goto :goto_0

    :pswitch_4
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    const/16 p3, 0x3e8

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->customDims:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :pswitch_6
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    sget p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->DIM_PRESET_DEFAULT:I

    :goto_0
    iget p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectX:I

    iget p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectY:I

    invoke-static {p2, p3, p4, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;III)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->customDims:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
