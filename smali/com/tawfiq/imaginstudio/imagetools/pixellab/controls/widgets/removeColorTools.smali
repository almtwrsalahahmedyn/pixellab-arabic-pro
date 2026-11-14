.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;
    }
.end annotation


# instance fields
.field currColor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

.field currIndex:I

.field private listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d007c

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->toggleNumberView(Z)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const p2, 0x7f0a01f1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$1;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setOnColorNotifyChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton$colorChangeNotify;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01f3

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$3;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01f0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$4;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01f5

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$5;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$5;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01f2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$6;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$6;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01f4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$7;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$7;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;

    return-object p0
.end method


# virtual methods
.method public getCurrIndex()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    return v0
.end method

.method public modifyCurrentColor(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;",
            ">;I)V"
        }
    .end annotation

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    iput p2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->c:I

    :cond_0
    return-void
.end method

.method public modifyCurrentTolerance(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;",
            ">;I)V"
        }
    .end annotation

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    iput p2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->t:I

    :cond_0
    return-void
.end method

.method public setCurrColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getDisplayColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setDisplayColor(I)V

    :cond_0
    return-void
.end method

.method public setCurrIndex(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;",
            ">;I)V"
        }
    .end annotation

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currIndex:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    if-eqz v0, :cond_0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setNumberToView(I)V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    iget p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->c:I

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->setCurrColor(I)V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;

    return-void
.end method
