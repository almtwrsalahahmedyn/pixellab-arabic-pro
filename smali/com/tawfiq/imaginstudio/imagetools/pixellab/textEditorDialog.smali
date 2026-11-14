.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;
.super Landroid/app/AlertDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;
    }
.end annotation


# instance fields
.field editArea:Landroid/widget/EditText;

.field public mContext:Landroid/content/Context;

.field private final onTextChangedL:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;

.field up:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->up:Z

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->onTextChangedL:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0088

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0a027c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$1;

    invoke-direct {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a0003

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$2;

    invoke-direct {v3, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0004

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v4, 0x7f0a0006

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$3;

    invoke-direct {v5, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$6;

    invoke-direct {v5, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$6;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$4;

    invoke-direct {v5, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$5;

    invoke-direct {v5, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$5;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v5, "theme_prefs"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "app_color"

    const v0, -0xff8d8e

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :try_start_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->onTextChangedL:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;

    return-object p0
.end method


# virtual methods
.method public dpToPixels(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method
