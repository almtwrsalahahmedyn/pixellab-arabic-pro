.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->showExportDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$exporter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;->val$exporter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->packageName_whatsapp:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->packageName_twitter:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->packageName_tumblr:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->packageName_instagram:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->packageName_gplus:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->packageName_facebook:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->packageName_dropbox:Ljava/lang/String;

    :goto_0
    move-object v6, p1

    const/4 p1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-nez v0, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f1100fe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f1101aa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f110104

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84$1;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;->val$exporter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->widthVal:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->strToInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;->val$exporter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->heightVal:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->strToInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;->val$exporter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->getSelectedFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;->val$exporter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->exportImage(IILandroid/graphics/Bitmap$CompressFormat;Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;ZLjava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a022f
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
