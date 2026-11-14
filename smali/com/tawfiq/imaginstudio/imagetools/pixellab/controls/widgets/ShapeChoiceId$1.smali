.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->val$context:Landroid/content/Context;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;)V

    invoke-direct {p1, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
