.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public editInput:Landroid/widget/EditText;

.field public final group:Linfo/hoang8f/android/segmented/SegmentedGroup;

.field public final radioBtn:Landroid/widget/RadioButton;

.field public final tabClick:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;Landroid/widget/RadioButton;Linfo/hoang8f/android/segmented/SegmentedGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;->tabClick:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;->radioBtn:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;->group:Linfo/hoang8f/android/segmented/SegmentedGroup;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;->tabClick:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->folder:Ljava/io/File;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;->editInput:Landroid/widget/EditText;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;->radioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->opt:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->holder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    invoke-direct {p2, v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;Ljava/io/File;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;->radioBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    if-ne p2, v1, :cond_2

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->deleteRecursive(Ljava/io/File;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;->group:Linfo/hoang8f/android/segmented/SegmentedGroup;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;->radioBtn:Landroid/widget/RadioButton;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;->group:Linfo/hoang8f/android/segmented/SegmentedGroup;

    invoke-virtual {p2}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground()V

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->holder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    if-eqz p1, :cond_2

    const p2, 0x7f099999

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;->group:Linfo/hoang8f/android/segmented/SegmentedGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u062a\u0639\u062f\u064a\u0644 \u0623\u0648 \u062d\u0630\u0641 \u0627\u0644\u0645\u062c\u0644\u062f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;->tabClick:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->folder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$FolderLongClick;->editInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string p1, "\u062d\u0641\u0638 \u0627\u0644\u062a\u0639\u062f\u064a\u0644"

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p1, "\u062d\u0630\u0641 \u0627\u0644\u0645\u062c\u0644\u062f"

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p1, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method
