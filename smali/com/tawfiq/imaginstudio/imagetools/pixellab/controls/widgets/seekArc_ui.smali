.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;
.super Landroid/widget/LinearLayout;


# instance fields
.field arc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d002c

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0218

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->arc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setProgress(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->arc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setmProgressShow(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->arc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setOnSeekArcChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->arc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setTouchInSide(Z)V

    return-void
.end method


# virtual methods
.method public ignoreInterceptTouchFor(Landroid/widget/ScrollView;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->arc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setIgnoreTouchFor(Landroid/widget/ScrollView;)V

    return-void
.end method
