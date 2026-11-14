.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;
.super Landroid/app/AlertDialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;
    }
.end annotation


# instance fields
.field actualImSize:[I

.field actualImSizeCropped:[I

.field private aspectButtonsHolder:Landroid/widget/LinearLayout;

.field private cancelButton:Landroid/widget/ImageButton;

.field private circleButton:Landroid/widget/ImageButton;

.field cropListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;

.field private dialogLayout:Landroid/view/View;

.field private flipHButton:Landroid/widget/ImageButton;

.field private flipVButton:Landroid/widget/ImageButton;

.field private image:Landroid/graphics/Bitmap;

.field private imagePreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

.field private lParamsAspectButtons:Landroid/widget/LinearLayout$LayoutParams;

.field private lockButton:Landroid/widget/ImageButton;

.field private maximizeButton:Landroid/widget/ImageButton;

.field private okButton:Landroid/widget/ImageButton;

.field private rotateCCWButton:Landroid/widget/ImageButton;

.field private rotateCWButton:Landroid/widget/ImageButton;

.field private sizeIndicator:Landroid/widget/TextView;

.field useNewDims:Landroidx/appcompat/widget/AppCompatCheckBox;

.field zoomButton:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

.field private zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V
    .locals 13

    move-object v9, p0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x2

    new-array v0, v10, [I

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSizeCropped:[I

    const/4 v0, 0x0

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->cropListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0049

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a0110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    iput-object v11, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move/from16 v3, p6

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZLandroid/graphics/RectF;IZZZ)V

    invoke-virtual {v11, v12}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->rotateCWButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$4;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->rotateCCWButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$5;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$5;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->okButton:Landroid/widget/ImageButton;

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockButton:Landroid/widget/ImageButton;

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a0109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->circleButton:Landroid/widget/ImageButton;

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$6;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$6;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->circleButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$7;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$7;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->circleButton:Landroid/widget/ImageButton;

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a0108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->cancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$8;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$8;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a0107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->maximizeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$9;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$9;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a010a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipHButton:Landroid/widget/ImageButton;

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipVButton:Landroid/widget/ImageButton;

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipHButton:Landroid/widget/ImageButton;

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipVButton:Landroid/widget/ImageButton;

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipHButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$10;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$10;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipVButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$11;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$11;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->aspectButtonsHolder:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x28

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v2

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lParamsAspectButtons:Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    const/16 v0, 0x10

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    invoke-direct {p0, v3, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    invoke-direct {p0, v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    invoke-direct {p0, v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    invoke-direct {p0, v10, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    const/4 v0, 0x6

    invoke-direct {p0, v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->addAspect(II)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v2, 0x7f0a01b4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->sizeIndicator:Landroid/widget/TextView;

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/-$$Lambda$ImageCropperDialog$UTgSfoEs-AyPUjKKeKm6Q_objzM;

    invoke-direct {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/-$$Lambda$ImageCropperDialog$UTgSfoEs-AyPUjKKeKm6Q_objzM;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v2, 0x7f0a0113

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    iget-object v2, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->setChild(Landroid/view/View;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    iget-object v2, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->setZoomWidget(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v2, 0x7f0a0112

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->zoomButton:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    iget-object v2, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-virtual {v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->setNotifyOnChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->zoomButton:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$12;

    invoke-direct {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$12;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->setZoomListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    const v2, 0x7f0a0111

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->useNewDims:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-nez p9, :cond_0

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->sizeIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->useNewDims:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->okButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/-$$Lambda$ImageCropperDialog$0nG9TQR8qEXRUYyIc1qT4x2MQNw;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/-$$Lambda$ImageCropperDialog$0nG9TQR8qEXRUYyIc1qT4x2MQNw;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->image:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->circleButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipHButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->flipVButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    return-object p0
.end method

.method private addAspect(II)V
    .locals 2

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080173

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->aspectButtonsHolder:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lParamsAspectButtons:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$ImageCropperDialog(FFZ)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSize:[I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSizeCropped:[I

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    aget v3, v0, p3

    int-to-float v3, v3

    mul-float p1, p1, v3

    float-to-int p1, p1

    const/4 v3, 0x0

    aput p1, v1, v3

    div-float/2addr p2, v2

    const/4 p1, 0x1

    xor-int/2addr p3, p1

    aget p3, v0, p3

    int-to-float p3, p3

    mul-float p2, p2, p3

    float-to-int p2, p2

    aput p2, v1, p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->sizeIndicator:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSizeCropped:[I

    aget v0, v0, v3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSizeCropped:[I

    aget p1, v0, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$ImageCropperDialog(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->cropListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getCropBounds()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->cropListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getImageRotation()I

    move-result v2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    iget-boolean v3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->circularCrop:Z

    iget-boolean v4, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    iget-boolean v5, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->useNewDims:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSizeCropped:[I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;->cropDone(Landroid/graphics/RectF;IZZZ[I)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public loadImage(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;II)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v1

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSize:[I

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSize:[I

    aget v2, v1, v0

    aget v1, v1, v3

    invoke-static {v2, v1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result p2

    invoke-static {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getBitmapFromPath(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->image:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v1

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->assets:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->isAssetFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromAssets(Ljava/lang/String;Landroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSize:[I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->actualImSize:[I

    aget v4, v2, v0

    aget v2, v2, v3

    invoke-static {v4, v2, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result p2

    invoke-static {p1, v1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->loadBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Error loading image"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method

.method public lockAspect(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectX:I

    iget p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectY:I

    invoke-virtual {v0, v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->setAspectAndLock(II)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->lockAspect:Z

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method

.method public setAspectAndLock(II)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->imagePreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockButton:Landroid/widget/ImageButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setCircularSupported(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->circleButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setCropListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->cropListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;

    return-void
.end method
