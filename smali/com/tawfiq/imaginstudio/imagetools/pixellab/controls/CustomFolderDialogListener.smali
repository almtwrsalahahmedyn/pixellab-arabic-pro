.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderDialogListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final clickOwner:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$AddFolderDialogClick;

.field final context:Landroid/content/Context;

.field final input:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$AddFolderDialogClick;Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderDialogListener;->clickOwner:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$AddFolderDialogClick;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderDialogListener;->input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderDialogListener;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderDialogListener;->input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/PixelLab/Stickers/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderDialogListener;->clickOwner:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$AddFolderDialogClick;

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$AddFolderDialogClick;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$AddFolderDialogClick;->val$presetsHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    iget-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v3, :cond_1

    const v4, 0x7f0a021c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Linfo/hoang8f/android/segmented/SegmentedGroup;

    if-eqz v3, :cond_1

    new-instance v4, Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderDialogListener;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/RadioButton;->setTextSize(IF)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setGravity(I)V

    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Linfo/hoang8f/android/segmented/SegmentedGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground()V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;

    invoke-direct {v3, v2, v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;Ljava/io/File;)V

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->onClick(Landroid/view/View;)V

    :cond_1
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderDialogListener;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u062a\u0645 \u0625\u0646\u0634\u0627\u0621: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method
