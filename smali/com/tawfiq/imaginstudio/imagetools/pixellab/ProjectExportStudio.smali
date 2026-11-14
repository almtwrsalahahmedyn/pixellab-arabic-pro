.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;
.super Ljava/lang/Object;
.source "ProjectExportStudio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0

    .line 55
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->executeExport(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->showSuccessDialog(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addExportOptionToSaveMenu(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 6

    .line 1017
    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1020
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getContentView"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1021
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1022
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 1023
    check-cast v0, Landroid/view/ViewGroup;

    .line 1024
    nop

    .line 1025
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 1026
    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0

    .line 1027
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 1028
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0

    .line 1031
    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 1032
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1033
    const-string v2, "\ud83c\udfa8 \u062a\u0635\u062f\u064a\u0631 \u0627\u062d\u062a\u0631\u0627\u0641\u064a (PSD / \u0641\u064a\u0643\u062a\u0648\u0631 / XML)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    const-string v2, "#FAB852"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1035
    const/4 v2, 0x2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1036
    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1037
    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1039
    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$7;

    invoke-direct {v2, p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$7;-><init>(Ljava/lang/Object;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1050
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    :cond_3
    goto :goto_1

    .line 1053
    :catchall_0
    move-exception p0

    .line 1054
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1056
    :goto_1
    return-void

    .line 1017
    :cond_4
    :goto_2
    return-void
.end method

.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 122
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 123
    if-eqz v1, :cond_0

    .line 124
    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 125
    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 126
    const-string p1, "\ud83d\udccb \u062a\u0645 \u0646\u0633\u062e \u0627\u0644\u0643\u0648\u062f \u0625\u0644\u0649 \u0627\u0644\u062d\u0627\u0641\u0638\u0629 \u0628\u0646\u062c\u0627\u062d!"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    goto :goto_0

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u062e\u0637\u0623 \u0641\u064a \u0627\u0644\u0646\u0633\u062e: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 131
    :goto_0
    return-void
.end method

.method public static dp(Landroid/content/Context;I)I
    .locals 1

    .line 58
    if-nez p0, :cond_0

    return p1

    .line 59
    :cond_0
    int-to-float p1, p1

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 59
    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static executeExport(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 9

    .line 959
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 960
    const-string v0, "\u062c\u0627\u0631\u064a \u0627\u0644\u062a\u0635\u062f\u064a\u0631 \u0627\u0644\u0627\u062d\u062a\u0631\u0627\u0641\u064a..."

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u062c\u0627\u0631\u064a \u062a\u062c\u0647\u064a\u0632 \u0627\u0644\u0637\u0628\u0642\u0627\u062a \u0648\u062a\u062d\u0648\u064a\u0644 \u0645\u0644\u0641 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 962
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 963
    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 965
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/app/ProgressDialog;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 966
    return-void
.end method

.method public static exportToAndroidLayout(Landroid/app/Activity;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 739
    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->exportToAndroidLayoutString(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    .line 740
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 741
    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 742
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 743
    return-void
.end method

.method public static exportToAndroidLayoutString(Landroid/app/Activity;)Ljava/lang/String;
    .locals 22

    .line 677
    invoke-static/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->extractProjectData(Landroid/app/Activity;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;

    move-result-object v0

    .line 678
    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->width:I

    .line 679
    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->height:I

    .line 681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    const-string v4, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string v4, "<!-- Generated with PixelLab Pro Universal Layout Studio -->\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const-string v4, "<RelativeLayout xmlns:android=\"http://schemas.android.com/apk/res/android\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    const-string v4, "    android:layout_width=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "dp\"\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    const-string v1, "    android:layout_height=\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const-string v1, "    android:background=\"#FF1A1A1A\">\n\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    const/4 v2, 0x0

    :goto_0
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->layers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 690
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->layers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;

    .line 691
    add-int/lit8 v2, v2, 0x1

    .line 692
    iget v6, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->left:I

    int-to-float v6, v6

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 693
    iget v8, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->top:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 694
    iget v9, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->width:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 695
    iget v10, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->height:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 697
    iget-boolean v11, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->isText:Z

    const-string v12, "        android:rotation=\""

    const-string v13, "\" />\n\n"

    const-string v14, "%.2f"

    const-string v15, "        android:alpha=\""

    const/16 v16, 0x0

    const-string v7, "        android:layout_marginTop=\""

    const-string v1, "        android:layout_marginLeft=\""

    move-object/from16 v17, v0

    const-string v0, " -->\n"

    move/from16 v18, v10

    const-string v10, "\"\n"

    if-eqz v11, :cond_2

    iget-object v11, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textContent:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 698
    iget-object v9, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textContent:Ljava/lang/String;

    const-string v11, "\""

    move-object/from16 v19, v13

    const-string v13, "\\\""

    invoke-virtual {v9, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "\n"

    const-string v13, "\\n"

    invoke-virtual {v9, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 699
    nop

    .line 700
    iget v11, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textColor:I

    if-eqz v11, :cond_0

    .line 701
    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    const v11, 0xffffff

    move-object/from16 v20, v14

    iget v14, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textColor:I

    and-int/2addr v11, v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const-string v11, "#%06X"

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 700
    :cond_0
    move-object/from16 v20, v14

    const-string v11, "#FFFFFF"

    .line 703
    :goto_1
    iget v13, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textSize:F

    const/high16 v14, 0x40400000    # 3.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    const/16 v14, 0xa

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 705
    const-string v14, "    <!-- Text Layer: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 p0, v15

    iget-object v15, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    const-string v0, "    <TextView\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const-string v0, "        android:id=\"@+id/pl_text_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    const-string v0, "        android:layout_width=\"wrap_content\"\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const-string v0, "        android:layout_height=\"wrap_content\"\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const-string v0, "        android:text=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    const-string v0, "        android:textColor=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    const-string v0, "        android:textSize=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sp\"\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    iget v0, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->rotation:F

    cmpl-float v0, v0, v16

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->rotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    :cond_1
    move-object/from16 v11, p0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v5, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->opacity:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v13, v20

    invoke-static {v1, v13, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v14, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 697
    :cond_2
    move-object v11, v15

    move-object/from16 v21, v14

    move-object v14, v13

    move-object/from16 v13, v21

    .line 720
    const-string v15, "    <!-- Shape/Image Layer: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v19, v14

    iget-object v14, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->name:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const-string v0, "    <ImageView\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    const-string v0, "        android:id=\"@+id/pl_layer_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const-string v0, "        android:layout_width=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    const-string v0, "        android:layout_height=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v9, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    iget v0, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->rotation:F

    cmpl-float v0, v0, v16

    if-eqz v0, :cond_3

    .line 728
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->rotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_3
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v5, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->opacity:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v1, v13, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :goto_2
    move-object/from16 v0, v17

    goto/16 :goto_0

    .line 734
    :cond_4
    const-string v0, "</RelativeLayout>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static exportToAndroidVector(Landroid/app/Activity;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 667
    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->exportToAndroidVectorString(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    .line 668
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 669
    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 670
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 671
    return-void
.end method

.method public static exportToAndroidVectorString(Landroid/app/Activity;)Ljava/lang/String;
    .locals 11

    .line 622
    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->extractProjectData(Landroid/app/Activity;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;

    move-result-object p0

    .line 623
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->width:I

    .line 624
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->height:I

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    const-string v3, "<!-- Android Vector Drawable Export from PixelLab Pro -->\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const-string v3, "<vector xmlns:android=\"http://schemas.android.com/apk/res/android\"\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    const-string v3, "    android:width=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v0, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dp\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string v3, "    android:height=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v5, v1, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string v3, "    android:viewportWidth=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    const-string v3, "    android:viewportHeight=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\">\n\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const-string v3, "    <!-- Background Canvas -->\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v3, "    <path\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string v3, "        android:fillColor=\"#FF1A1A1A\"\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v3, "        android:pathData=\"M0,0 h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " v"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " h-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " z\" />\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->layers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 641
    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->layers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;

    .line 642
    const-string v7, "    <!-- Layer "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -->\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v7, "    <group\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string v7, "        android:translateX=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->left:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const-string v7, "        android:translateY=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->top:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    iget v7, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->rotation:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    .line 647
    const-string v7, "        android:pivotX=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->width:I

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    const-string v7, "        android:pivotY=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->height:I

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    const-string v7, "        android:rotation=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->rotation:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_0
    const-string v7, "        android:alpha=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->opacity:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v0

    const-string v10, "%.2f"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    nop

    .line 655
    iget-boolean v7, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->isText:Z

    if-eqz v7, :cond_1

    const-string v7, "#FFFFD54F"

    goto :goto_1

    :cond_1
    const-string v7, "#FF64B5F6"

    .line 656
    :goto_1
    const-string v8, "        <path\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const-string v8, "            android:fillColor=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string v7, "            android:pathData=\"M0,0 h"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v6, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->width:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " z\" />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const-string v6, "    </group>\n\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    goto/16 :goto_0

    .line 662
    :cond_2
    const-string p0, "</vector>\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static exportToPsd(Landroid/app/Activity;Ljava/io/File;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    invoke-static/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->extractProjectData(Landroid/app/Activity;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;

    move-result-object v0

    .line 287
    iget v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->width:I

    .line 288
    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->height:I

    .line 290
    new-instance v1, Ljava/io/FileOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 291
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/high16 v3, 0x10000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 292
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 295
    const-string v1, "8BPS"

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 296
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 297
    const/4 v2, 0x6

    new-array v2, v2, [B

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 298
    const/4 v2, 0x4

    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 299
    invoke-virtual {v9, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 300
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 301
    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 302
    const/4 v3, 0x3

    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 305
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 308
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 309
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 310
    const-string v5, "8BIM"

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 311
    const/16 v6, 0x3ed

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 312
    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 313
    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 314
    const/16 v6, 0x48

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 315
    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 316
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 317
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 318
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 319
    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 320
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 321
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 322
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 323
    array-length v4, v3

    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 324
    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 327
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 328
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 331
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 332
    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_0

    .line 333
    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;

    invoke-direct {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;-><init>()V

    .line 334
    const-string v12, "\u0627\u0644\u062e\u0644\u0641\u064a\u0629 (Background)"

    iput-object v12, v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->name:Ljava/lang/String;

    .line 335
    iput v10, v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->left:I

    .line 336
    iput v10, v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->top:I

    .line 337
    iput v7, v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->width:I

    .line 338
    iput v8, v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->height:I

    .line 339
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->opacity:F

    .line 340
    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->backgroundBitmap:Landroid/graphics/Bitmap;

    iput-object v12, v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->layerBitmap:Landroid/graphics/Bitmap;

    .line 341
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_0
    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->layers:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    .line 346
    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 349
    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_4

    .line 350
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;

    .line 351
    iget v13, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->top:I

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 352
    iget v14, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->left:I

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 353
    iget v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->height:I

    add-int/2addr v10, v13

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 354
    iget v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->width:I

    add-int/2addr v2, v14

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 355
    move-object/from16 v16, v0

    sub-int v0, v2, v14

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 356
    move-object/from16 v17, v9

    sub-int v9, v10, v13

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 358
    invoke-virtual {v4, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 359
    invoke-virtual {v4, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 360
    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 361
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 363
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 364
    mul-int v0, v0, v9

    const/4 v2, 0x2

    add-int/2addr v0, v2

    .line 365
    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 366
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 367
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 368
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 369
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 370
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 371
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 372
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 374
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 375
    const-string v0, "norm"

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 376
    iget v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->opacity:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 377
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 378
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 379
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 382
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 383
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 384
    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 385
    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 388
    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Layer "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v10, v12, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    :goto_1
    const-string v10, "ISO-8859-1"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 390
    array-length v10, v0

    const/16 v13, 0x1f

    if-le v10, v13, :cond_2

    .line 391
    new-array v10, v13, [B

    .line 392
    const/4 v14, 0x0

    invoke-static {v0, v14, v10, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    move-object v0, v10

    .line 395
    :cond_2
    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 396
    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 397
    array-length v0, v0

    add-int/2addr v0, v1

    .line 398
    const/4 v10, 0x4

    rem-int/2addr v0, v10

    rsub-int/lit8 v0, v0, 0x4

    rem-int/2addr v0, v10

    .line 399
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v0, :cond_3

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 401
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 402
    array-length v2, v0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 403
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 349
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    move-object/from16 v9, v17

    const/4 v2, 0x4

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 407
    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v17, v9

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v11, :cond_8

    .line 408
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;

    .line 409
    iget v5, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->top:I

    const/4 v9, 0x0

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 410
    iget v10, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->left:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 411
    iget v9, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->height:I

    add-int/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 412
    iget v12, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->width:I

    add-int/2addr v12, v10

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 413
    sub-int/2addr v12, v10

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 414
    sub-int/2addr v9, v5

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 415
    mul-int v9, v10, v5

    .line 417
    new-array v12, v9, [B

    .line 418
    new-array v13, v9, [B

    .line 419
    new-array v14, v9, [B

    .line 420
    new-array v15, v9, [B

    .line 422
    iget-object v1, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->layerBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->layerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 423
    new-array v1, v9, [I

    .line 424
    move-object/from16 v26, v6

    iget-object v6, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->layerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 425
    move/from16 v27, v11

    iget-object v11, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->layerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 426
    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 427
    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 428
    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->layerBitmap:Landroid/graphics/Bitmap;

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move/from16 v21, v10

    invoke-virtual/range {v18 .. v25}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 430
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v9, :cond_5

    .line 431
    aget v5, v1, v2

    .line 432
    ushr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v12, v2

    .line 433
    ushr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v13, v2

    .line 434
    ushr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v14, v2

    .line 435
    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v15, v2

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 437
    :cond_5
    const/4 v2, -0x1

    goto :goto_6

    .line 422
    :cond_6
    move-object/from16 v26, v6

    move/from16 v27, v11

    .line 438
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v9, :cond_7

    .line 439
    const/4 v2, -0x1

    aput-byte v2, v12, v1

    .line 440
    const/16 v5, -0x80

    aput-byte v5, v13, v1

    .line 441
    aput-byte v5, v14, v1

    .line 442
    aput-byte v5, v15, v1

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, -0x1

    .line 447
    :goto_6
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 448
    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->write([B)V

    .line 451
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 452
    invoke-virtual {v4, v13}, Ljava/io/DataOutputStream;->write([B)V

    .line 455
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 456
    invoke-virtual {v4, v14}, Ljava/io/DataOutputStream;->write([B)V

    .line 459
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 460
    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->write([B)V

    .line 407
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v26

    move/from16 v11, v27

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 463
    :cond_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 464
    array-length v1, v0

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_9

    .line 465
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 466
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    move-object v0, v1

    .line 471
    :cond_9
    array-length v1, v0

    const/4 v2, 0x4

    add-int/2addr v1, v2

    .line 472
    move-object/from16 v9, v17

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 473
    array-length v1, v0

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 474
    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 477
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 478
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 479
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 480
    move-object/from16 v2, v16

    iget-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->backgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 481
    iget-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->backgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 483
    :cond_a
    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->layers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;

    .line 484
    iget-object v5, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->layerBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_b

    iget-object v5, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->layerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_b

    .line 485
    iget-object v5, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->layerBitmap:Landroid/graphics/Bitmap;

    iget v6, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->left:I

    int-to-float v6, v6

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v5, v6, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 487
    :cond_b
    goto :goto_7

    .line 489
    :cond_c
    mul-int v11, v7, v8

    new-array v12, v11, [I

    .line 490
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move-object v2, v12

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 491
    new-array v1, v11, [B

    .line 492
    new-array v2, v11, [B

    .line 493
    new-array v3, v11, [B

    .line 494
    nop

    :goto_8
    if-ge v0, v11, :cond_d

    .line 495
    aget v4, v12, v0

    .line 496
    ushr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    .line 497
    ushr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    .line 498
    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 500
    :cond_d
    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 501
    invoke-virtual {v9, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 502
    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 504
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 505
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 506
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 507
    return-void
.end method

.method public static exportToSvg(Landroid/app/Activity;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 612
    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->exportToSvgString(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    .line 613
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 614
    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 615
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 616
    return-void
.end method

.method public static exportToSvgString(Landroid/app/Activity;)Ljava/lang/String;
    .locals 18

    .line 513
    invoke-static/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->extractProjectData(Landroid/app/Activity;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;

    move-result-object v0

    .line 514
    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->width:I

    .line 515
    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->height:I

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    const-string v4, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string v4, "<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v4, "viewBox=\"0 0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v4, "width=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" height=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\">\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->backgroundBitmap:Landroid/graphics/Bitmap;

    const-string v6, "\" xlink:href=\"data:image/png;base64,"

    const/4 v7, 0x2

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 525
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 526
    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->backgroundBitmap:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5a

    invoke-virtual {v8, v9, v10, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 527
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 528
    const-string v8, "  <image id=\"background\" x=\"0\" y=\"0\" width=\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 529
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    goto :goto_0

    .line 531
    :cond_0
    const-string v4, "  <rect id=\"background\" width=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 532
    const-string v2, "\" fill=\"#1A1A1A\" />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->layers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_c

    .line 537
    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->layers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;

    .line 538
    const-string v8, "  <!-- Layer "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->name:Ljava/lang/String;

    const-string v10, ""

    if-eqz v9, :cond_1

    iget-object v9, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->name:Ljava/lang/String;

    goto :goto_2

    :cond_1
    move-object v9, v10

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -->\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget-boolean v8, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->isText:Z

    const-string v9, " transform=\"rotate(%.1f, %.1f, %.1f)\""

    const-string v11, "\" y=\""

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/high16 v14, 0x40000000    # 2.0f

    const/4 v15, 0x1

    if-eqz v8, :cond_9

    iget-object v8, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textContent:Ljava/lang/String;

    if-eqz v8, :cond_9

    iget-object v8, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textContent:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 542
    iget v8, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textSize:F

    const/high16 v16, 0x41200000    # 10.0f

    cmpl-float v8, v8, v16

    if-lez v8, :cond_2

    iget v8, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textSize:F

    goto :goto_3

    :cond_2
    const/high16 v8, 0x42400000    # 48.0f

    .line 543
    :goto_3
    nop

    .line 544
    iget v7, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textColor:I

    if-eqz v7, :cond_3

    .line 545
    new-array v7, v15, [Ljava/lang/Object;

    const v16, 0xffffff

    iget v15, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textColor:I

    and-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v7, v1

    const-string v15, "#%06X"

    invoke-static {v15, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 544
    :cond_3
    const-string v7, "#FFFFFF"

    .line 548
    :goto_4
    nop

    .line 549
    iget v15, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->left:I

    int-to-float v15, v15

    iget v1, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->width:I

    int-to-float v1, v1

    div-float/2addr v1, v14

    add-float/2addr v15, v1

    .line 550
    iget v1, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textAlign:I

    if-ne v1, v13, :cond_4

    .line 551
    nop

    .line 552
    iget v1, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->left:I

    int-to-float v15, v1

    const-string v1, "start"

    goto :goto_5

    .line 553
    :cond_4
    iget v1, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textAlign:I

    const/4 v13, 0x5

    if-ne v1, v13, :cond_5

    .line 554
    nop

    .line 555
    iget v1, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->left:I

    iget v13, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->width:I

    add-int/2addr v1, v13

    int-to-float v15, v1

    const-string v1, "end"

    goto :goto_5

    .line 553
    :cond_5
    const-string v1, "middle"

    .line 558
    :goto_5
    nop

    .line 559
    iget v13, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->rotation:F

    cmpl-float v12, v13, v12

    if-eqz v12, :cond_6

    .line 560
    iget v10, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->left:I

    int-to-float v10, v10

    iget v12, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->width:I

    int-to-float v12, v12

    div-float/2addr v12, v14

    add-float/2addr v10, v12

    .line 561
    iget v12, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->top:I

    int-to-float v12, v12

    iget v13, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->height:I

    int-to-float v13, v13

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 562
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v17, v0

    iget v0, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->rotation:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v16, 0x0

    aput-object v0, v14, v16

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v10, 0x1

    aput-object v0, v14, v10

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v10, 0x2

    aput-object v0, v14, v10

    invoke-static {v13, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    .line 559
    :cond_6
    move-object/from16 v17, v0

    .line 565
    :goto_6
    iget-object v0, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textContent:Ljava/lang/String;

    const-string v9, "\n"

    const/4 v12, -0x1

    invoke-virtual {v0, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 566
    const-string v9, "  <text x=\""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const/16 v16, 0x0

    aput-object v13, v14, v16

    const-string v13, "%.1f"

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 567
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->top:I

    const v11, 0x3f666666    # 0.9f

    mul-float v11, v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v4, v11

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 568
    const-string v9, "\" font-size=\""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v12, v11

    invoke-static {v9, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 569
    const-string v8, "\" fill=\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 570
    const-string v7, "\" text-anchor=\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 571
    const-string v4, "\" direction=\"rtl\" xml:space=\"preserve\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 572
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ">\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const/4 v1, 0x0

    :goto_7
    array-length v4, v0

    if-ge v1, v4, :cond_8

    .line 575
    aget-object v4, v0, v1

    .line 576
    const-string v7, "&"

    const-string v8, "&amp;"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "<"

    const-string v8, "&lt;"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v7, ">"

    const-string v8, "&gt;"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 577
    const-string v7, "</tspan>\n"

    if-nez v1, :cond_7

    .line 578
    const-string v8, "    <tspan>"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 580
    :cond_7
    const-string v8, "    <tspan x=\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-static {v9, v13, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 581
    const-string v9, "\" dy=\"1.25em\">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 584
    :cond_8
    const-string v0, "  </text>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const/4 v7, 0x2

    const/4 v11, 0x0

    goto/16 :goto_a

    .line 540
    :cond_9
    move-object/from16 v17, v0

    .line 586
    iget-object v0, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->layerBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    iget-object v0, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->layerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 588
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 589
    iget-object v1, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->layerBitmap:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5f

    invoke-virtual {v1, v7, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 590
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 592
    nop

    .line 593
    iget v1, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->rotation:F

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_a

    .line 594
    iget v1, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->left:I

    int-to-float v1, v1

    iget v7, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v14

    add-float/2addr v1, v7

    .line 595
    iget v7, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->top:I

    int-to-float v7, v7

    iget v8, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->height:I

    int-to-float v8, v8

    div-float/2addr v8, v14

    add-float/2addr v7, v8

    .line 596
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    iget v12, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->rotation:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v10, v13

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v12, 0x1

    aput-object v1, v10, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v10, v7

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    .line 593
    :cond_a
    const/4 v7, 0x2

    .line 599
    :goto_9
    const-string v1, "  <image x=\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->left:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->top:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 600
    const-string v8, "\" width=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->width:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->height:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 601
    const-string v8, "\" opacity=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->opacity:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v9, v11

    const-string v4, "%.2f"

    invoke-static {v8, v4, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 602
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 603
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 586
    :cond_b
    const/4 v7, 0x2

    const/4 v11, 0x0

    .line 536
    :goto_a
    move-object/from16 v0, v17

    const/4 v1, 0x0

    goto/16 :goto_1

    .line 607
    :cond_c
    const-string v0, "</svg>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractProjectData(Landroid/app/Activity;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;
    .locals 13

    .line 162
    const-string v0, ""

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;

    invoke-direct {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;-><init>()V

    .line 164
    nop

    .line 165
    nop

    .line 169
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x500

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "usedImage"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 170
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 171
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 172
    if-eqz v5, :cond_0

    .line 173
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getWidth"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 174
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getHeight"

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 175
    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    :try_start_1
    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v4

    move v4, v6

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 172
    :cond_0
    const/16 v5, 0x500

    .line 178
    :goto_0
    goto :goto_2

    :catchall_1
    move-exception v5

    const/16 v6, 0x500

    :goto_1
    move v4, v6

    const/16 v5, 0x500

    .line 180
    :goto_2
    const/16 v6, 0x64

    :try_start_2
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->width:I

    .line 181
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->height:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 185
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "bg_layout"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 186
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 187
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 188
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_1

    .line 189
    iget v5, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->width:I

    iget v6, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->height:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 190
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 191
    iget v7, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->width:I

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 192
    iget v8, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->height:I

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 193
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 194
    invoke-virtual {v4, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 195
    iput-object v5, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->backgroundBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 197
    :catchall_2
    move-exception v4

    :cond_1
    :goto_3
    nop

    .line 200
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "textContain"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 201
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 202
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 204
    if-eqz p0, :cond_e

    .line 205
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    goto :goto_4

    :cond_2
    iget v4, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->width:I

    int-to-float v4, v4

    .line 206
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_5

    :cond_3
    iget v5, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->height:I

    int-to-float v5, v5

    .line 207
    :goto_5
    iget v6, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    .line 208
    iget v4, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    .line 210
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 211
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v5, :cond_e

    .line 212
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 213
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_10

    .line 214
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    if-lez v9, :cond_d

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v9

    if-gtz v9, :cond_5

    goto/16 :goto_10

    .line 216
    :cond_5
    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;

    invoke-direct {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;-><init>()V

    .line 217
    iput-object v8, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->view:Landroid/view/View;

    .line 218
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->left:I

    .line 219
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v4

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->top:I

    .line 220
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->width:I

    .line 221
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v4

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->height:I

    .line 222
    invoke-virtual {v8}, Landroid/view/View;->getRotation()F

    move-result v10

    iput v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->rotation:F

    .line 223
    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v10

    iput v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->opacity:F

    .line 226
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "TextComponent"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "TextObject"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_7

    .line 254
    :cond_6
    iput-boolean v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->isText:Z

    .line 255
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u0634\u0643\u0644 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->name:Ljava/lang/String;

    goto/16 :goto_d

    .line 227
    :cond_7
    :goto_7
    iput-boolean v2, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->isText:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 229
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "returnText"

    new-array v12, v3, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 230
    new-array v11, v3, [Ljava/lang/Object;

    invoke-virtual {v10, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textContent:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 237
    goto :goto_a

    .line 231
    :catchall_3
    move-exception v10

    .line 233
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getText"

    new-array v12, v3, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 234
    new-array v11, v3, [Ljava/lang/Object;

    invoke-virtual {v10, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 235
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_8
    move-object v10, v0

    :goto_8
    iput-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textContent:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_9

    .line 236
    :catchall_4
    move-exception v10

    :goto_9
    nop

    .line 238
    :goto_a
    :try_start_7
    iget-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textContent:Ljava/lang/String;

    if-nez v10, :cond_9

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textContent:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 241
    :cond_9
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getTextSize"

    new-array v12, v3, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 242
    new-array v11, v3, [Ljava/lang/Object;

    invoke-virtual {v10, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    mul-float v10, v10, v6

    iput v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textSize:F
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_b

    .line 243
    :catchall_5
    move-exception v10

    :goto_b
    nop

    .line 246
    :try_start_9
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getTextAlign"

    new-array v12, v3, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 247
    new-array v11, v3, [Ljava/lang/Object;

    invoke-virtual {v10, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textAlign:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_c

    .line 248
    :catchall_6
    move-exception v10

    :goto_c
    nop

    .line 250
    :try_start_a
    iget-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->textContent:Ljava/lang/String;

    const-string v11, "\n"

    const-string v12, " "

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 251
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x14

    if-le v11, v12, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 252
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u0646\u0635: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->name:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 253
    nop

    .line 260
    :goto_d
    :try_start_b
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 261
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 262
    invoke-virtual {v8, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 263
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v11, v6, v8

    if-nez v11, :cond_c

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_b

    goto :goto_e

    .line 268
    :cond_b
    iput-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->layerBitmap:Landroid/graphics/Bitmap;

    goto :goto_f

    .line 264
    :cond_c
    :goto_e
    iget v8, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->width:I

    iget v11, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->height:I

    invoke-static {v10, v8, v11, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 265
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 266
    iput-object v8, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$LayerItem;->layerBitmap:Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 267
    goto :goto_f

    .line 270
    :catchall_7
    move-exception v8

    :goto_f
    nop

    .line 272
    :try_start_c
    iget-object v8, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$CanvasProjectData;->layers:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 211
    :cond_d
    :goto_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 278
    :cond_e
    goto :goto_11

    .line 276
    :catchall_8
    move-exception p0

    .line 277
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 279
    :goto_11
    return-object v1
.end method

.method public static getExportDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .line 81
    nop

    .line 83
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/io/File;

    const-string v3, "PixelLab/Exports"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    .line 87
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "pixelLab/Exports"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 92
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    .line 93
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v0, "Exports"

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 96
    return-object v2
.end method

.method public static injectIntoExportDialog(Ljava/lang/Object;)V
    .locals 8

    .line 1062
    if-nez p0, :cond_0

    return-void

    .line 1064
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "dialogLayout"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1065
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1066
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1067
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1068
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 1069
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1070
    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    .line 1072
    const-string v4, "\ud83c\udfa8 \u062a\u0635\u062f\u064a\u0631 \u0627\u062d\u062a\u0631\u0627\u0641\u064a (PSD / \u0641\u064a\u0643\u062a\u0648\u0631 SVG / XML)"

    const-string v5, "#00838F"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    invoke-static {v0, v4, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->makeOptionBtn(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object v4

    .line 1073
    const/4 v5, 0x2

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v4, v5, v7}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1074
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1075
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1076
    const/16 v5, 0x2a

    invoke-static {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1077
    const/16 v5, 0xc

    invoke-static {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1078
    const/4 v5, 0x4

    invoke-static {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1079
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1081
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$8;

    invoke-direct {v0, p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$8;-><init>(Ljava/lang/Object;Landroid/app/Activity;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    :cond_1
    goto :goto_0

    .line 1097
    :catchall_0
    move-exception p0

    .line 1098
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1100
    :goto_0
    return-void
.end method

.method private static makeBg(IILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 64
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 65
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 66
    invoke-static {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 67
    return-object v0
.end method

.method private static makeExportCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 7

    .line 842
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 843
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 844
    const-string v2, "#1E2732"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->makeBg(IILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 845
    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v0, v4, v5, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 846
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 847
    invoke-static {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 848
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 851
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 853
    const/high16 p1, 0x41500000    # 13.0f

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 854
    const/4 p1, 0x0

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 855
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 857
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 858
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    const-string p2, "#90A4AE"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 860
    const/high16 p2, 0x41280000    # 10.5f

    invoke-virtual {p1, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 861
    const/4 p2, 0x3

    invoke-static {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result p2

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 862
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 864
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p4, p1, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->makeOptionBtn(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object p0

    .line 865
    invoke-virtual {p0, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 866
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 868
    return-object v0
.end method

.method private static makeOptionBtn(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Button;
    .locals 2

    .line 71
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 74
    const/4 p1, 0x2

    const/high16 p3, 0x41400000    # 12.0f

    invoke-virtual {v0, p1, p3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 75
    const/16 p1, 0x8

    invoke-static {p2, p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->makeBg(IILandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    const/16 p2, 0xc

    invoke-static {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p3, v1, p2, p0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 77
    return-object v0
.end method

.method public static shareFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .line 101
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    :try_start_1
    const-string p2, "androidx.core.content.FileProvider"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v2, "getUriForFile"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/io/File;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 106
    invoke-virtual {p2, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 107
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 108
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p2

    .line 110
    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 112
    :goto_0
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    const-string p2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0645\u0634\u0627\u0631\u0643\u0629 "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    goto :goto_1

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u062a\u0639\u0630\u0631 \u0645\u0634\u0627\u0631\u0643\u0629 \u0627\u0644\u0645\u0644\u0641: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 118
    :goto_1
    return-void
.end method

.method public static showExportStudioDialog(Landroid/app/Activity;)V
    .locals 14

    .line 749
    if-nez p0, :cond_0

    return-void

    .line 751
    :cond_0
    nop

    .line 752
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 755
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 756
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 757
    const-string v1, "#151D24"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 758
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 761
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 762
    const-string v2, "\ud83c\udfa8 \u0627\u0633\u062a\u0648\u062f\u064a\u0648 \u0627\u0644\u062a\u0635\u062f\u064a\u0631 \u0627\u0644\u0627\u062d\u062a\u0631\u0627\u0641\u064a (Pro Exporter)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 764
    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 765
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 766
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 767
    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v9, v9, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 768
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 770
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 771
    const-string v5, "\u0627\u062e\u062a\u0631 \u0627\u0644\u0635\u064a\u063a\u0629 \u0627\u0644\u0645\u0637\u0644\u0648\u0628\u0629 \u0644\u062a\u0635\u062f\u064a\u0631 \u0645\u0634\u0631\u0648\u0639\u0643 \u0645\u0639 \u0643\u0627\u0641\u0629 \u0627\u0644\u0637\u0628\u0642\u0627\u062a:"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    const-string v5, "#B0BEC5"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 773
    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 774
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 775
    invoke-static {p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v9, v9, v9, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 776
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 778
    new-instance v10, Landroid/widget/ScrollView;

    invoke-direct {v10, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 779
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 780
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 782
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 783
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 785
    new-array v13, v0, [Landroid/app/AlertDialog;

    .line 788
    const-string v1, "\ud83d\udcc4 Adobe Photoshop (.psd)"

    const-string v2, "\u062a\u0635\u062f\u064a\u0631 \u0643\u0627\u0645\u0644 \u0644\u0643\u0627\u0641\u0629 \u0627\u0644\u0637\u0628\u0642\u0627\u062a \u0648\u0627\u0644\u0646\u0635\u0648\u0635 \u0648\u0627\u0644\u0635\u0648\u0631 \u0641\u064a \u0645\u0644\u0641 PSD \u0645\u062a\u0639\u062f\u062f \u0627\u0644\u0637\u0628\u0642\u0627\u062a \u0645\u062a\u0648\u0627\u0641\u0642 100% \u0645\u0639 \u0627\u0644\u0641\u0648\u062a\u0648\u0634\u0648\u0628."

    const-string v3, "#1565C0"

    const-string v4, "\u062a\u0635\u062f\u064a\u0631 \u0641\u0648\u062a\u0648\u0634\u0648\u0628 PSD"

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$1;

    invoke-direct {v5, p0, v12, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$1;-><init>(Landroid/app/Activity;Ljava/lang/String;[Landroid/app/AlertDialog;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->makeExportCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 796
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 799
    const-string v1, "\ud83d\udcd0 Scalable Vector Graphics (.svg)"

    const-string v2, "\u0641\u064a\u0643\u062a\u0648\u0631 \u0646\u0627\u0642\u0644 \u0639\u0627\u0644\u064a \u0627\u0644\u062f\u0642\u0629 \u0628\u062f\u0648\u0646 \u0623\u064a \u0628\u0643\u0633\u0644\u0629\u060c \u0645\u0639 \u0646\u0635\u0648\u0635 \u0639\u0631\u0628\u064a\u0629 \u062d\u064a\u0629 \u0648\u0623\u0628\u0639\u0627\u062f \u062f\u0642\u064a\u0642\u0629 \u0644\u0640 Illustrator \u0648 Corel \u0648 Figma."

    const-string v3, "#E65100"

    const-string v4, "\u062a\u0635\u062f\u064a\u0631 \u0641\u064a\u0643\u062a\u0648\u0631 SVG"

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$2;

    invoke-direct {v5, p0, v12, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$2;-><init>(Landroid/app/Activity;Ljava/lang/String;[Landroid/app/AlertDialog;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->makeExportCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 807
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 810
    const-string v1, "\ud83d\udcf1 Android Vector Drawable (.xml)"

    const-string v2, "\u0643\u0648\u062f \u0641\u064a\u0643\u062a\u0648\u0631 XML \u062c\u0627\u0647\u0632 \u0644\u0644\u0627\u0633\u062a\u062e\u062f\u0627\u0645 \u0627\u0644\u0645\u0628\u0627\u0634\u0631 \u0641\u064a \u0645\u062c\u0644\u062f res/drawable \u062f\u0627\u062e\u0644 \u062a\u0637\u0628\u064a\u0642\u0627\u062a \u0623\u0646\u062f\u0631\u0648\u064a\u062f."

    const-string v3, "#2E7D32"

    const-string v4, "\u062a\u0635\u062f\u064a\u0631 Vector XML"

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$3;

    invoke-direct {v5, p0, v12, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$3;-><init>(Landroid/app/Activity;Ljava/lang/String;[Landroid/app/AlertDialog;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->makeExportCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 818
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 821
    const-string v1, "\ud83d\udcbb Android Layout Code (.xml)"

    const-string v2, "\u0643\u0648\u062f \u0648\u0627\u062c\u0647\u0629 RelativeLayout \u0643\u0627\u0645\u0644 \u0645\u0639 \u0639\u0646\u0627\u0635\u0631 TextView \u0648 ImageView \u0648\u0645\u0648\u0627\u0642\u0639\u0647\u0627 \u0648\u0625\u062d\u062f\u0627\u062b\u064a\u0627\u062a\u0647\u0627 \u0644\u0623\u0646\u062f\u0631\u0648\u064a\u062f \u0633\u062a\u0648\u062f\u064a\u0648."

    const-string v3, "#6A1B9A"

    const-string v4, "\u062a\u0635\u062f\u064a\u0631 Layout XML"

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$4;

    invoke-direct {v5, p0, v12, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$4;-><init>(Landroid/app/Activity;Ljava/lang/String;[Landroid/app/AlertDialog;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->makeExportCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 829
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 831
    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 832
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 834
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 835
    const-string v0, "\u0625\u063a\u0644\u0627\u0642"

    invoke-virtual {v6, v0, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 836
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 837
    aput-object v0, v13, v9

    .line 838
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 839
    return-void
.end method

.method private static showSuccessDialog(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 969
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 970
    const-string v1, "\u2705 \u062a\u0645 \u0627\u0644\u062a\u0635\u062f\u064a\u0631 \u0628\u0646\u062c\u0627\u062d!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 972
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 973
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 974
    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v3, v5, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 976
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 977
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u062a\u0645 \u062d\u0641\u0638 \u0627\u0644\u0645\u0644\u0641 \u0628\u0646\u062c\u0627\u062d \u0641\u064a \u0647\u0627\u062a\u0641\u0643:\n\ud83d\udcc2 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 979
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 980
    const/4 v5, 0x0

    invoke-static {p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v5, v5, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 981
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 984
    const-string v2, "#1E88E5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v4, "\ud83d\udce4 \u0645\u0634\u0627\u0631\u0643\u0629 \u0627\u0644\u0645\u0644\u0641 \u0627\u0644\u0622\u0646 (\u062a\u0644\u064a\u062c\u0631\u0627\u0645 / \u0648\u0627\u062a\u0633\u0627\u0628 / \u062f\u0631\u0627\u064a\u0641)"

    invoke-static {p0, v4, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->makeOptionBtn(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object v2

    .line 985
    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$5;

    invoke-direct {v4, p0, p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$5;-><init>(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 994
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 995
    const-string p1, "#43A047"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    const-string p3, "\ud83d\udccb \u0646\u0633\u062e \u0627\u0644\u0643\u0648\u062f \u0625\u0644\u0649 \u0627\u0644\u062d\u0627\u0641\u0638\u0629"

    invoke-static {p0, p3, p1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->makeOptionBtn(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object p1

    .line 996
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 997
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->dp(Landroid/content/Context;I)I

    move-result v2

    iput v2, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 998
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    new-instance p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$6;

    invoke-direct {p3, p0, p2, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$6;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1005
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1008
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1009
    const-string p0, "\u062a\u0645"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1010
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1011
    return-void
.end method
