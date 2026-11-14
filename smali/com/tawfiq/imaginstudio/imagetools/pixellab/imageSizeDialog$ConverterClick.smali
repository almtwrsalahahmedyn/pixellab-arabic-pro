.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;

.field public userPickedDpi:Z


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->userPickedDpi:Z

    return-void
.end method

.method private calcPix(Landroid/widget/EditText;ID)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    int-to-double v3, p2

    mul-double/2addr v1, v3

    div-double/2addr v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v1

    return v0

    :catch_0
    move-exception v1

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;

    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a180a

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/Spinner;

    const/4 v1, 0x5

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    :cond_0
    move v11, v1

    const/16 v1, 0x12c

    if-nez v11, :cond_1

    const/16 v1, 0x48

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v11, v2, :cond_2

    const/16 v1, 0x60

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v11, v2, :cond_3

    const/16 v1, 0x96

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v11, v2, :cond_4

    const/16 v1, 0xc8

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne v11, v2, :cond_5

    const/16 v1, 0xfa

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    if-ne v11, v2, :cond_6

    const/16 v1, 0x258

    :cond_6
    :goto_0
    move v12, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const v3, 0x7f0a1808

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide v1, 0x400451eb851eb852L    # 2.54

    goto :goto_1

    :cond_7
    const v3, 0x7f0a1807

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    const-wide v1, 0x3f9a020c49ba5e35L    # 0.0253984375

    :cond_8
    :goto_1
    move-wide v13, v1

    const v1, 0x7f0a02f6

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    const v1, 0x7f0a016b

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    const v1, 0x7f0a00ba

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    :cond_9
    invoke-direct {v8, v7, v12, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->calcPix(Landroid/widget/EditText;ID)I

    move-result v1

    invoke-direct {v8, v6, v12, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->calcPix(Landroid/widget/EditText;ID)I

    move-result v3

    if-eqz v2, :cond_15

    const/16 v4, 0x4650

    if-gt v1, v4, :cond_a

    if-le v3, v4, :cond_15

    :cond_a
    const/16 v5, 0x12c

    if-le v12, v5, :cond_b

    const/16 v12, 0x12c

    invoke-direct {v8, v7, v12, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->calcPix(Landroid/widget/EditText;ID)I

    move-result v1

    invoke-direct {v8, v6, v12, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->calcPix(Landroid/widget/EditText;ID)I

    move-result v3

    if-eqz v10, :cond_b

    const/4 v5, 0x5

    invoke-virtual {v10, v5}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_b
    if-gt v1, v4, :cond_c

    if-le v3, v4, :cond_15

    :cond_c
    const/16 v5, 0xfa

    if-le v12, v5, :cond_d

    const/16 v12, 0xfa

    invoke-direct {v8, v7, v12, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->calcPix(Landroid/widget/EditText;ID)I

    move-result v1

    invoke-direct {v8, v6, v12, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->calcPix(Landroid/widget/EditText;ID)I

    move-result v3

    if-eqz v10, :cond_d

    const/4 v5, 0x4

    invoke-virtual {v10, v5}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_d
    if-gt v1, v4, :cond_e

    if-le v3, v4, :cond_15

    :cond_e
    const/16 v5, 0xc8

    if-le v12, v5, :cond_f

    const/16 v12, 0xc8

    invoke-direct {v8, v7, v12, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->calcPix(Landroid/widget/EditText;ID)I

    move-result v1

    invoke-direct {v8, v6, v12, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->calcPix(Landroid/widget/EditText;ID)I

    move-result v3

    if-eqz v10, :cond_f

    const/4 v5, 0x3

    invoke-virtual {v10, v5}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_f
    if-gt v1, v4, :cond_10

    if-le v3, v4, :cond_15

    :cond_10
    const/16 v5, 0x96

    if-le v12, v5, :cond_11

    const/16 v12, 0x96

    invoke-direct {v8, v7, v12, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->calcPix(Landroid/widget/EditText;ID)I

    move-result v1

    invoke-direct {v8, v6, v12, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->calcPix(Landroid/widget/EditText;ID)I

    move-result v3

    if-eqz v10, :cond_11

    const/4 v5, 0x2

    invoke-virtual {v10, v5}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_11
    if-gt v1, v4, :cond_12

    if-le v3, v4, :cond_15

    :cond_12
    const/16 v5, 0x60

    if-le v12, v5, :cond_13

    const/16 v12, 0x60

    invoke-direct {v8, v7, v12, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->calcPix(Landroid/widget/EditText;ID)I

    move-result v1

    invoke-direct {v8, v6, v12, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->calcPix(Landroid/widget/EditText;ID)I

    move-result v3

    if-eqz v10, :cond_13

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_13
    if-gt v1, v4, :cond_14

    if-le v3, v4, :cond_15

    :cond_14
    const/16 v12, 0x48

    invoke-direct {v8, v7, v12, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->calcPix(Landroid/widget/EditText;ID)I

    move-result v1

    invoke-direct {v8, v6, v12, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->calcPix(Landroid/widget/EditText;ID)I

    move-result v3

    if-eqz v10, :cond_15

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_15
    const v4, 0x7f0a0180

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_16

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    const v1, 0x7f0a017f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_17

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;->userPickedDpi:Z

    const/4 v0, 0x0

    return v0
.end method
