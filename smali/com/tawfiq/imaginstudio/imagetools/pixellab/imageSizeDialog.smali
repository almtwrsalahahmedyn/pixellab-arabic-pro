.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;
.super Landroid/app/AlertDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;
    }
.end annotation


# instance fields
.field aspectX:I

.field aspectY:I

.field currHeight:I

.field currWidth:I

.field dialogLayout:Landroid/view/View;

.field private final edit_image_height:Landroid/widget/EditText;

.field private final edit_image_width:Landroid/widget/EditText;

.field keepCropSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field preset_spinner:Landroid/widget/Spinner;

.field private final text_aspect_info:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;

    const/4 v1, 0x1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectX:I

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectY:I

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$4;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d004a

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;

    const p5, 0x104000a

    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p5, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p5, 0x1040000

    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const p5, 0x7f0a00b3

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->preset_spinner:Landroid/widget/Spinner;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const p5, 0x7f0a017e

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->text_aspect_info:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const p5, 0x7f0a0180

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_width:Landroid/widget/EditText;

    iget-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const v0, 0x7f0a017f

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/EditText;

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_height:Landroid/widget/EditText;

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectX:I

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectY:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->updateAspect()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->updateTextFieldsVal()V

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->preset_spinner:Landroid/widget/Spinner;

    new-instance p4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$1;

    invoke-direct {p4, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;)V

    invoke-virtual {p3, p4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$2;

    invoke-direct {p3, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$3;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;)V

    invoke-virtual {p5, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a018f

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->keepCropSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a0190

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$ConverterClick;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const v2, 0x7f0a180a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const v2, 0x7f0a1800

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->applyPreset(I)V

    return-void
.end method

.method private applyPreset(I)V
    .locals 3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    packed-switch p1, :pswitch_data_0

    move p1, v0

    move v2, v1

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x5dc

    const/16 v2, 0x1f4

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x848

    const/16 v2, 0x4a8

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x3d5

    const/16 v2, 0x16b

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x500

    const/16 v2, 0x2d0

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xa00

    const/16 v2, 0x5a0

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x400

    const/16 v2, 0x400

    :goto_0
    if-ne p1, v0, :cond_0

    if-eq v2, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->setSize(II)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static asFraction(JJ)[I
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->gcm(JJ)J

    move-result-wide v0

    div-long/2addr p0, v0

    long-to-int p1, p0

    div-long/2addr p2, v0

    long-to-int p0, p2

    filled-new-array {p1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static gcm(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    rem-long/2addr p0, p2

    invoke-static {p2, p3, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->gcm(JJ)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public commitValue(Landroid/text/Editable;)I
    .locals 1

    const/16 v0, 0x64

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_width:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_height:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_height:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_width:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->updateAspect()V

    return-void
.end method

.method public updateAspect()V
    .locals 4

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    int-to-long v0, v0

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->asFraction(JJ)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectX:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectY:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->text_aspect_info:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateTextFieldsVal()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_width:Landroid/widget/EditText;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_height:Landroid/widget/EditText;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_height:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_width:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
