.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;

.field final synthetic val$label:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

.field final synthetic val$shapeEvent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;->val$shapeEvent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;->val$label:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;->val$shapeEvent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;->val$label:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    invoke-interface {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;->onShapePicked(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
