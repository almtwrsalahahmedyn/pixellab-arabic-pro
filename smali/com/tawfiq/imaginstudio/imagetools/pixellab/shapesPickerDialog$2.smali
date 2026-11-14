.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$2;
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


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
