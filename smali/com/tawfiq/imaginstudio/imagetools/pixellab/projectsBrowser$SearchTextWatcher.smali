.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$SearchTextWatcher;
.super Ljava/lang/Object;
.source "projectsBrowser.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$SearchTextWatcher;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 3
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$SearchTextWatcher;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->adapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$SearchTextWatcher;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->adapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    return-void
.end method
