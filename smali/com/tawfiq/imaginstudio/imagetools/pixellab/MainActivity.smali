.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$OnHistoryListener;
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;
    }
.end annotation


# static fields
.field public static final BROWSE_QUOTES:I = 0xc

.field private static final EXITED_BY_USER:Ljava/lang/String; = "exitedByUser"

.field public static final GET_IMAGE_BG_GALLERY:I = 0xd

.field public static final GET_IMAGE_SHAPE_TEXTURE_GALLERY:I = 0x2d

.field public static final GET_IMAGE_TEXT_TEXTURE_GALLERY:I = 0x13

.field public static final GET_IMPORT_SHAPE_GALLERY:I = 0x14

.field public static final GET_IMPORT_SHAPE_GALLERY_EDIT:I = 0x15

.field public static final PERSISTED_STATE:Ljava/lang/String; = "persistedState"

.field static final REQUEST_IMAGE_CAPTURE:I = 0x10

.field public static helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

.field private static smContext:Landroid/content/Context;


# instance fields
.field addNewMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

.field public arrowPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

.field private autoSaveHandler:Landroid/os/Handler;

.field private autoSaveInterval:J

.field autoSaveRunnable:Ljava/lang/Runnable;

.field public bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

.field public bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

.field public colorPickerTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;

.field content:Landroid/widget/LinearLayout;

.field private currentAction:I

.field private currentProjectDir:Ljava/lang/String;

.field displayHeight:I

.field displayWidth:I

.field public drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

.field exitFScreen:Landroid/view/View;

.field private exitedByUser:Z

.field private fragmentTools:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

.field public gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

.field hiddenNonModal:Z

.field public history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

.field instanceState:Landroid/os/Bundle;

.field isFullscreen:Z

.field private layerHandleListener:Landroid/view/View$OnTouchListener;

.field layersHandle:Landroid/widget/ImageButton;

.field public layersHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;

.field layersLayout:Landroid/widget/LinearLayout;

.field private layersLayoutWidth:F

.field loadedContent:Z

.field private mContext:Landroid/content/Context;

.field mCurrentPhotoFile:Ljava/io/File;

.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field mainMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

.field private minimizedLayersForAction:Z

.field openedQuotes:Z

.field public perspectiveTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

.field previewContainer:Landroid/view/View;

.field previewPanel:Landroid/widget/RelativeLayout;

.field quickMultipleMenu:Landroid/widget/PopupWindow;

.field quickShapeMenu:Landroid/widget/PopupWindow;

.field quickTextMenu:Landroid/widget/PopupWindow;

.field public quoteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;

.field rsc:Landroid/content/res/Resources;

.field saveMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

.field public shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

.field public stripesEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;

.field public textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

.field textStylesMenu:Landroid/widget/PopupWindow;

.field tinydb:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

.field toolsPanel:Landroid/view/View;

.field topBar:Landroid/view/View;

.field public usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

.field public vignetteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;

.field workingArea:Landroid/widget/FrameLayout;

.field public zoomButton:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

.field public zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$OnHistoryListener;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toolsPanel:Landroid/view/View;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->displayWidth:I

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->displayHeight:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mFragments:Ljava/util/List;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->instanceState:Landroid/os/Bundle;

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->loadedContent:Z

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layerHandleListener:Landroid/view/View$OnTouchListener;

    const/high16 v2, 0x41200000    # 10.0f

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayoutWidth:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->exitedByUser:Z

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->currentProjectDir:Ljava/lang/String;

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->currentAction:I

    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveInterval:J

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$17;

    invoke-direct {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$17;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->openedQuotes:Z

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->isFullscreen:Z

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->hiddenNonModal:Z

    return-void
.end method

.method private aboutDialog()V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "misc/credit"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)F
    .locals 0

    iget p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayoutWidth:F

    return p0
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->minimizedLayersForAction:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doneLoadingContent()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->autoSave()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveInterval:J

    return-wide v0
.end method

.method public static synthetic access$1600(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->removeObject()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->promptSaveProject()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->takeCameraImage()V

    return-void
.end method

.method public static synthetic access$201(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public static synthetic access$2100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->setProgressMessage(Landroid/app/ProgressDialog;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->dismissExportDialog(Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->dismissProgressDialog(Landroid/app/ProgressDialog;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->clearHistory()V

    return-void
.end method

.method public static synthetic access$2600(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrentAsPresetOverwrite(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->currentProjectDir:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->aboutDialog()V

    return-void
.end method

.method public static synthetic access$3000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$301(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public static synthetic access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toggleFullscreen()V

    return-void
.end method

.method public static synthetic access$500(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->deleteCurrObject()V

    return-void
.end method

.method public static synthetic access$600(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->fragmentTools:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->applyBlankPreset()V

    return-void
.end method

.method public static synthetic access$800(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->handleImageReceiveFromOtherApp(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->applyDefaultPreset()V

    return-void
.end method

.method private applyBlankPreset()V
    .locals 1

    const-string v0, "presets/z.blank"

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->loadPresetFromAsset(Ljava/lang/String;)V

    return-void
.end method

.method private applyDefaultPreset()V
    .locals 5

    const-string v0, "presets/0 \u0645\u0633\u0627\u062d\u0629 \u0639\u0645\u0644"

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->loadPresetFromAsset(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->exitedByUser:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/pixelLab/autosave"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getAvailableAutosaves()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1100a5

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f11018f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$20;

    invoke-direct {v3, p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$20;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x1040013

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private arrayToStr([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    const-string v3, "-"

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private askPositionGrid()V
    .locals 10

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080229

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->getCurrentMarkerPosition()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v3, 0x7f1100c7

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x2

    move-object v3, v9

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x64

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I

    move-result v2

    invoke-virtual {v9, v6, v2, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$46;

    invoke-direct {v1, p0, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$46;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$47;

    invoke-direct {v1, p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$47;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private askResetGrid()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$45;

    invoke-direct {v3, p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$45;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Landroid/widget/LinearLayout;)V

    const v0, 0x104000a

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private autoSave()V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/pixelLab/autosave"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/pixelLab/autosave/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$16;

    invoke-direct {v4, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$16;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    array-length v7, v4

    add-int/lit16 v7, v7, -0x3e8

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-lez v7, :cond_1

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    new-instance v9, Ljava/io/File;

    aget-object v10, v4, v8

    invoke-direct {v9, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/data.plab"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->putStateInBundle(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->putUiStateInBundle(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->putNoMediaHere(Ljava/io/File;)V

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_2

    :catch_0
    nop

    :goto_2
    if-nez v6, :cond_3

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z

    goto :goto_3

    :cond_3
    const-string v0, "valid"

    invoke-static {v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->putEmptyFileHere(Ljava/io/File;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private clearHistory()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->clearHistory()I

    return-void
.end method

.method private createImageFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CAMERA_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mCurrentPhotoFile:Ljava/io/File;

    return-object v2
.end method

.method private deleteCurrObject()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110155

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1100aa

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$22;

    invoke-direct {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$22;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method private dismissExportDialog(Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private dismissProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private doneLoadingContent()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->instanceState:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->loadedContent:Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->tinydb:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

    const-string v1, "exitedByUser"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private doneSomething()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->hasHistory()Z

    move-result v0

    return v0
.end method

.method private expandOptionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const v2, 0x7f010018

    iput v2, v1, Landroidx/fragment/app/FragmentTransaction;->mEnterAnim:I

    const v2, 0x7f010019

    iput v2, v1, Landroidx/fragment/app/FragmentTransaction;->mExitAnim:I

    const v2, 0x7f01001b

    iput v2, v1, Landroidx/fragment/app/FragmentTransaction;->mPopEnterAnim:I

    const v2, 0x7f01001c

    iput v2, v1, Landroidx/fragment/app/FragmentTransaction;->mPopExitAnim:I

    const-string v2, "option_expand"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doneEditing()V

    :cond_0
    const-string v3, "fragment_tools"

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->hide(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)V

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->newInstance(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    move-result-object p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mFragments:Ljava/util/List;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const p2, 0x7f0a028e

    invoke-virtual {v1, p2, p1, v2}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    iget-boolean p1, v1, Landroidx/fragment/app/FragmentTransaction;->mAllowAddToBackStack:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, v1, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    const/4 p2, 0x0

    iput-object p2, v1, Landroidx/fragment/app/FragmentTransaction;->mName:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v1, p1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->minimizeLayers()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDate(J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p2, p2, p1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "persistedState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v3, v2, [B

    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    new-instance v0, Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-object p1
.end method

.method private handleImageReceiveFromOtherApp(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 10

    const-string v0, "android.intent.action.EDIT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "android.intent.extra.STREAM"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    :goto_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    invoke-virtual {v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setAspectAndLock(II)V

    :cond_3
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$19;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$19;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setCropListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;)V

    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1100fb

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method private print(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static processImportUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pdf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_2

    const-string v3, "pdf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->renderPdfUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    move-object v1, p0

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private promptSaveProject()V
    .locals 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0072

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/pixelLab/presets/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$31;

    invoke-direct {v5, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$31;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090003

    invoke-direct {v5, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$32;

    invoke-direct {v4, p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$32;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private putUiStateInBundle(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const-string v1, "bgType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I

    move-result v0

    const-string v1, "bgWidth"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I

    move-result v0

    const-string v1, "bgHeight"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrColor()I

    move-result v0

    const-string v1, "bgColor"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getActualWidth()I

    move-result v0

    const-string v1, "bgActualWidth"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getActualHeight()I

    move-result v0

    const-string v1, "bgActualHeight"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    const-string v1, "bgPhotoForcedDim"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getRotation()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isCircular()Z

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipH()Z

    move-result v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipV()Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->makeBundle(Landroid/graphics/RectF;IZZZ)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bgPhotoCrop"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bgPhotoSrc"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "bgPhotoV2"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bgGradientV2"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getRotation()I

    move-result v0

    const-string v2, "bgRotation"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "effectVignetteEnabled"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getVignetteColor()I

    move-result v0

    const-string v3, "effectVignetteColor"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getVignetteColorAlpha()I

    move-result v0

    const-string v3, "effectVignetteAlpha"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "effectNoiseEnabled"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;->getNumberToRepeat()I

    move-result v0

    const-string v3, "effectNoiseVal2"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;->getEffectAlpha()I

    move-result v0

    const-string v3, "effectNoiseAlpha"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string v0, "effectStripesEnabled"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getEffectAlpha()I

    move-result v0

    const-string v1, "effectStripesAlpha"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getNumberToRepeat()I

    move-result v0

    const-string v1, "effectStripesVal2"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getBrightness()I

    move-result v0

    const-string v1, "effectBrightnessVal"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getContrast()I

    move-result v0

    const-string v1, "effectContrastVal"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getHue()I

    move-result v0

    const-string v1, "effectHueVal"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getSaturation()I

    move-result v0

    const-string v1, "effectSaturationVal"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment_tools"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->getTab()I

    move-result v2

    :cond_3
    const-string v0, "currTab"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getBlurRadius()I

    move-result v0

    const-string v1, "effectBlurVal"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method private recycleFragments()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private removeObject()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeCurrentObject()V

    return-void
.end method

.method public static renderPdfUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {v1, v0}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v4, v5}, Landroid/graphics/pdf/PdfRenderer$Page;->render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    invoke-virtual {v1}, Landroid/graphics/pdf/PdfRenderer;->close()V

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    const-string v0, "pdf_converted"

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getCacheFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private saveCurrentAsPresetOverwrite(Ljava/lang/String;)V
    .locals 7

    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/pixelLab/presets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "data.plab"

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->putStateInBundle(Landroid/os/Bundle;)V

    invoke-direct {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->putUiStateInBundle(Landroid/os/Bundle;)V

    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11017d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Landroid/os/Bundle;Ljava/lang/String;Ljava/io/File;Landroid/app/ProgressDialog;)V

    invoke-static {v6}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V

    return-void
.end method

.method private saveState(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->deleteAppFiles()V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const-string p1, "persistedState"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    return-void
.end method

.method private setProgressMessage(Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private showCropForCurrentShape()V
    .locals 13

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getImageSource()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v4

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBitmapPortion(Z)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBitmapInRotation()I

    move-result v6

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isBitmapCircularCrop()Z

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isFlipHor()Z

    move-result v9

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isFlipVer()Z

    move-result v10

    const/4 v11, 0x0

    move-object v2, v12

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$41;

    invoke-direct {v0, p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$41;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;I)V

    invoke-virtual {v12, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setCropListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;)V

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private startAutoSave()V
    .locals 4

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stopAutoSave()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveInterval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopAutoSave()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private takeCameraImage()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->createImageFile()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "com.tawfiq.imaginstudio.imagetools.pixellab.fileprovider"

    invoke-static {p0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_0

    const-string v2, ""

    invoke-static {v2, v1}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_1
    const v0, 0x7f1100f8

    goto :goto_1

    :cond_2
    const v0, 0x7f1100f7

    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private toggleFullscreen()V
    .locals 8

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->isFullscreen:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-virtual {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->resetZoom(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toolsPanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toolsPanel:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toolsPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toolsPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->setZoomLevel(F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->isFullscreen:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->isFullscreen:Z

    return-void
.end method

.method private toggleQuickActions(Z)V
    .locals 11

    const v0, 0x7f0a01e8

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01e7

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01e6

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a01e5

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-wide/16 v4, 0x96

    const-wide/16 v6, 0xfa

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public static trimCache()V
    .locals 13

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->smContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/pixelLab/presets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->smContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/pixelLab/textstyles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->smContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/pixelLab/.cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->smContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/pixelLab/autosave"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$43;

    invoke-direct {v6, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$43;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    array-length v7, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v3, v8

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$44;

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$44;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    :goto_1
    if-ge v6, v3, :cond_1

    aget-object v4, v0, v6

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public actionButtonClicked(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/UndoOperation;->undo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    goto :goto_3

    :sswitch_1
    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/UndoOperation;->redo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    goto :goto_3

    :sswitch_2
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->showExportDialog()V

    goto :goto_3

    :sswitch_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doneSomething()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->currentProjectDir:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->hideFirstItem(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    goto :goto_2

    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quoteOpened()V

    goto :goto_3

    :sswitch_5
    const-string v1, "theme_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "app_color"

    const v3, -0xff8d8e

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-direct {v2, p0, v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;-><init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;)V

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->show()V

    goto :goto_3

    :sswitch_6
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    goto :goto_2

    :sswitch_7
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toggleLayers()V

    goto :goto_3

    :sswitch_8
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->toggle()V

    goto :goto_3

    :sswitch_9
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0030 -> :sswitch_9
        0x7f0a003e -> :sswitch_8
        0x7f0a0040 -> :sswitch_7
        0x7f0a0041 -> :sswitch_6
        0x7f0a0056 -> :sswitch_4
        0x7f0a0058 -> :sswitch_3
        0x7f0a005b -> :sswitch_2
        0x7f0a005d -> :sswitch_0
        0x7f0a02fe -> :sswitch_1
        0x7f0a180b -> :sswitch_5
    .end sparse-switch
.end method

.method public activityResultLogic(IILandroid/content/Intent;)V
    .locals 20

    move-object/from16 v10, p0

    move/from16 v0, p1

    const/16 v1, 0xc

    const/4 v2, 0x1

    move/from16 v3, p2

    if-eq v3, v1, :cond_0

    move-object/from16 v4, p3

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$35;

    move-object/from16 v4, p3

    invoke-direct {v1, v10, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$35;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Landroid/content/Intent;)V

    iget-object v5, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget v5, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f11003f

    invoke-virtual {v10, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f11018c

    invoke-virtual {v10, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$36;

    invoke-direct {v6, v10, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$36;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/Runnable;)V

    const v7, 0x1040013

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f1100dc

    invoke-virtual {v10, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$37;

    invoke-direct {v7, v10, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$37;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    invoke-virtual {v10, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(I)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/16 v1, 0xd

    if-eq v0, v1, :cond_9

    const/16 v1, 0x10

    if-eq v0, v1, :cond_7

    const/16 v1, 0x2d

    const/4 v11, 0x0

    if-eq v0, v1, :cond_5

    const/high16 v1, 0x3f400000    # 0.75f

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object v0

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v3

    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v1, v3

    int-to-float v1, v1

    aget v3, v0, v11

    int-to-float v3, v3

    div-float v3, v1, v3

    aget v4, v0, v2

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v3, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrShapeState(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    iget-object v3, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    sget v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_GALLERY:I

    const/4 v6, 0x1

    aget v7, v0, v11

    int-to-float v7, v7

    mul-float v7, v7, v1

    float-to-int v7, v7

    aget v0, v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->editCurrShape(ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZII)V

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->showCropForCurrentShape()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    invoke-virtual {v5, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    invoke-virtual {v14, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V

    :try_start_1
    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object v0

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v3

    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    int-to-float v3, v3

    aget v4, v0, v11

    int-to-float v4, v4

    div-float v4, v3, v4

    aget v8, v0, v2

    int-to-float v8, v8

    div-float/2addr v3, v8

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v12, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    sget v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_GALLERY:I

    const/4 v15, 0x1

    int-to-float v4, v7

    const/high16 v8, 0x41a00000    # 20.0f

    mul-float v16, v4, v8

    mul-float v17, v4, v8

    aget v4, v0, v11

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v4, v4

    aget v0, v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    move/from16 v18, v4

    move/from16 v19, v0

    invoke-virtual/range {v12 .. v19}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->addNewShape(ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFFFF)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    goto/16 :goto_5

    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    invoke-virtual {v14, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V

    :try_start_2
    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object v0

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v3

    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v1, v3

    int-to-float v1, v1

    aget v3, v0, v11

    int-to-float v3, v3

    div-float v3, v1, v3

    aget v4, v0, v2

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v12, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    sget v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_GALLERY:I

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget v3, v0, v11

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    int-to-float v3, v3

    aget v0, v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    move/from16 v18, v3

    move/from16 v19, v0

    invoke-virtual/range {v12 .. v19}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->addNewShape(ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFFFF)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :cond_5
    :pswitch_2
    const/16 v1, 0x13

    if-ne v0, v1, :cond_6

    const/4 v12, 0x1

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v2, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-direct {v3, v0, v0, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V

    invoke-virtual {v14, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setCircularSupported(Z)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;

    invoke-direct {v0, v10, v12, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;ZLjava/lang/String;)V

    invoke-virtual {v14, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setCropListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;)V

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_5

    :cond_7
    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    invoke-virtual {v2, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I

    move-result v0

    iget-object v1, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setAspectAndLock(II)V

    :cond_8
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$40;

    invoke-direct {v0, v10, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$40;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    invoke-virtual {v2, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I

    move-result v0

    iget-object v1, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setAspectAndLock(II)V

    :cond_a
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$39;

    invoke-direct {v0, v10, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$39;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v12, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setCropListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;)V

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    :catch_1
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addClickListenersTo(Landroid/view/ViewGroup;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;

    invoke-direct {v2, p0, p2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->setActionEvent(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public applyStyle(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/data.plab"

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->assetJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->fileJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->fixAbsolute:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;

    invoke-virtual {p0, p2, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doOpOnBundleRes(Landroid/os/Bundle;Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrTextState(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyBundle(Landroid/os/Bundle;ZZ)V

    :cond_1
    return-void
.end method

.method public assetJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [C

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object v0, v1

    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object v1
.end method

.method public checkPermissionsAndDo(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/Runnable;)V

    :try_start_0
    new-instance p1, Lcom/gun0912/tedpermission/normal/TedPermission;

    invoke-direct {p1}, Lcom/gun0912/tedpermission/normal/TedPermission;-><init>()V

    invoke-static {}, Lcom/gun0912/tedpermission/normal/TedPermission;->create()Lcom/gun0912/tedpermission/normal/TedPermission$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gun0912/tedpermission/PermissionBuilder;->setPermissionListener(Lcom/gun0912/tedpermission/PermissionListener;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    check-cast p1, Lcom/gun0912/tedpermission/normal/TedPermission$Builder;

    const v0, 0x7f1100e3

    invoke-virtual {p1, v0}, Lcom/gun0912/tedpermission/PermissionBuilder;->setDeniedMessage(I)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    check-cast p1, Lcom/gun0912/tedpermission/normal/TedPermission$Builder;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gun0912/tedpermission/PermissionBuilder;->setPermissions([Ljava/lang/String;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    check-cast p1, Lcom/gun0912/tedpermission/normal/TedPermission$Builder;

    invoke-virtual {p1}, Lcom/gun0912/tedpermission/normal/TedPermission$Builder;->check()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public cleanMemory()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public clickedQuickEditLayers(Landroid/view/View;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Landroid/graphics/Rect;)V
    .locals 5

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getMenuOffsetForLocation(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)[I

    move-result-object v0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    aget v4, v0, v2

    aget v0, v0, v1

    invoke-virtual {v3, p1, v2, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getMenuOffsetForLocation(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)[I

    move-result-object p2

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    aget v0, p2, v2

    aget p2, p2, v1

    invoke-virtual {p3, p1, v2, v0, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_1
    return-void
.end method

.method public copyDirectory(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Cannot create dir "

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_6

    new-instance v1, Ljava/io/File;

    aget-object v3, v0, v2

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->copyDirectory(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_3
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_6
    return-object p2
.end method

.method public countChange(I)V
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateUndoButtonEnabled(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->hasRedo()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateRedoButtonEnabled(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method public createAddNewMenu()V
    .locals 4

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$63;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$63;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f110022

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$64;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$64;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f110023

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$65;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$65;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f110021

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$66;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$66;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f1101b7

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$67;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$67;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f110020

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$68;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$68;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f11001f

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->done()V

    const-string v1, "theme_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "app_color"

    const v3, -0xff8d8e

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public createMainMenu()V
    .locals 4

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$69;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$69;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f110037

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$70;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$70;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f11011c

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$71;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$71;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f110036

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$72;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$72;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f11002c

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$73;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$73;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f11012e

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$75;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$75;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f11003c

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$76;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$76;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f110150

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$77;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$77;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f110153

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$78;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$78;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f11001d

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$79;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$79;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f11002b

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->done()V

    const-string v1, "theme_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "app_color"

    const v3, -0xff8d8e

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public createSaveMenu()V
    .locals 4

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$60;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$60;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f1101a0

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$61;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$61;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f110034

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$62;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$62;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    const v2, 0x7f1101a1

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->done()V

    invoke-static {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->addExportOptionToSaveMenu(Landroid/app/Activity;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->hideFirstItem(Z)V

    const-string v1, "theme_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "app_color"

    const v3, -0xff8d8e

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public deleteAppFiles()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->fileList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public doActionFor(I)V
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->unspecified:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V

    return-void
.end method

.method public doActionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    .locals 1

    const/16 v0, 0x46

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V

    return-void
.end method

.method public doActionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    iput v11, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->currentAction:I

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->bg:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v12, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrBgState()V

    :cond_0
    const/16 v0, 0x4d

    const/4 v14, 0x0

    if-ne v11, v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->openAutoSaveDialog()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x4b

    if-ne v11, v0, :cond_2

    invoke-virtual {v10, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->showProjectBrowser(Z)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x4c

    if-ne v11, v0, :cond_3

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$23;

    invoke-direct {v0, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$23;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->checkPermissionsAndDo(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->multiple:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const/4 v15, 0x1

    if-ne v12, v0, :cond_6

    const/16 v0, 0x47

    if-ne v11, v0, :cond_4

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->hideLockObjects(Ljava/util/ArrayList;Z)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x48

    if-ne v11, v0, :cond_5

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0, v13, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->hideLockObjects(Ljava/util/ArrayList;Z)V

    goto :goto_1

    :cond_5
    invoke-direct/range {p0 .. p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V

    :goto_1
    const v0, 0x7f0a019a

    invoke-virtual {v10, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_6
    const/16 v9, 0x14

    const/16 v8, 0xd

    const/16 v7, 0x15

    const/16 v6, -0x52

    const/16 v5, -0x54

    const/16 v4, -0x3c

    const/16 v3, 0xc

    if-ne v11, v15, :cond_7

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget-object v1, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getContrastColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->addNewText(I)Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const/16 v0, 0x28

    if-eq v11, v0, :cond_19

    const/16 v0, 0x29

    if-eq v11, v0, :cond_19

    const/16 v0, 0x2a

    if-eq v11, v0, :cond_19

    const/16 v0, 0x35

    if-eq v11, v0, :cond_19

    const/16 v0, 0x36

    if-eq v11, v0, :cond_19

    const/16 v0, 0x37

    if-eq v11, v0, :cond_19

    const/16 v0, 0x38

    if-ne v11, v0, :cond_8

    goto/16 :goto_8

    :cond_8
    const/16 v0, 0x27

    if-ne v11, v0, :cond_9

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotate90()V

    invoke-virtual {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V

    goto/16 :goto_2

    :cond_9
    const/16 v0, 0x42

    if-ne v11, v0, :cond_b

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v16

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion(Z)Landroid/graphics/RectF;

    move-result-object v17

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getRotation()I

    move-result v18

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isCircular()Z

    move-result v19

    const/16 v20, 0x1

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipH()Z

    move-result v21

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipV()Z

    move-result v22

    const/16 v23, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v14, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    invoke-direct/range {v0 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    if-eqz v0, :cond_a

    invoke-virtual {v14, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockAspect(Z)V

    :cond_a
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$24;

    invoke-direct {v0, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$24;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v14, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setCropListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;)V

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    :cond_b
    const/16 v0, 0x21

    if-eq v11, v0, :cond_19

    const/16 v0, 0x2b

    if-ne v11, v0, :cond_c

    goto/16 :goto_8

    :cond_c
    const/16 v0, 0x3a

    if-ne v11, v0, :cond_d

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setAsColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V

    :goto_2
    const/16 v0, 0x15

    const/16 v1, 0xc

    const/16 v2, 0x14

    const/16 v3, -0x52

    const/16 v4, -0x54

    const/16 v5, -0x3c

    const/16 v6, 0xd

    goto/16 :goto_a

    :cond_d
    const/16 v0, 0x1f

    const/16 v6, 0xd

    if-ne v11, v0, :cond_e

    invoke-virtual {v10, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->pickGalleryImage(I)V

    goto :goto_5

    :cond_e
    const/16 v0, 0x41

    if-ne v11, v0, :cond_11

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getActualWidth()I

    move-result v0

    iget-object v1, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getActualHeight()I

    move-result v1

    iget-object v2, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-boolean v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    if-nez v3, :cond_f

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I

    move-result v0

    iget-object v1, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I

    move-result v1

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->DIM_PRESET_DEFAULT:I

    mul-int v2, v2, v0

    int-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->DIM_PRESET_DEFAULT:I

    mul-int v3, v3, v1

    int-to-float v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    float-to-int v0, v3

    move v4, v0

    move v3, v2

    goto :goto_3

    :cond_f
    move v3, v0

    move v4, v1

    :goto_3
    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getUsedBitmapBg()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    goto :goto_4

    :cond_10
    const/4 v2, 0x0

    :goto_4
    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$25;

    invoke-direct {v5, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$25;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_5

    :cond_11
    const/16 v0, 0x20

    if-ne v11, v0, :cond_12

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$26;

    invoke-direct {v0, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$26;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->checkPermissionsAndDo(Ljava/lang/Runnable;)V

    :goto_5
    const/16 v0, 0x15

    const/16 v1, 0xc

    goto :goto_6

    :cond_12
    const/4 v0, 0x2

    if-ne v11, v0, :cond_13

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-direct {v0, v10, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xc

    invoke-virtual {v10, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quoteOpened()V

    const/16 v0, 0x15

    goto :goto_6

    :cond_13
    const/16 v0, 0x15

    const/16 v1, 0xc

    if-ne v11, v0, :cond_14

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    const-string v3, "misc/empty"

    invoke-virtual {v2, v3, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setAssetsPath(Ljava/lang/String;Z)V

    iget-object v3, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    sget v17, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v4, 0x3c

    invoke-virtual {v10, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v10, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v16, v3

    move-object/from16 v18, v2

    move/from16 v22, v5

    move/from16 v23, v4

    invoke-virtual/range {v16 .. v23}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->addNewShape(ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFFFF)Ljava/lang/String;

    invoke-direct/range {p0 .. p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V

    :goto_6
    const/16 v2, 0x14

    goto :goto_7

    :cond_14
    const/16 v2, 0x1d

    if-ne v11, v2, :cond_15

    const/16 v2, 0x14

    invoke-virtual {v10, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->pickGalleryImage(I)V

    goto :goto_7

    :cond_15
    const/16 v2, 0x5e

    if-ne v11, v2, :cond_16

    invoke-virtual {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->showStickerSearchDialog()V

    :goto_7
    const/16 v3, -0x52

    const/16 v4, -0x54

    const/16 v5, -0x3c

    goto :goto_a

    :cond_16
    const/16 v2, 0x14

    const/16 v3, -0x1e

    if-eq v11, v3, :cond_17

    const/16 v3, -0x52

    const/16 v4, -0x54

    if-eq v11, v3, :cond_18

    const/16 v5, -0x3c

    if-eq v11, v4, :cond_1a

    if-ne v11, v5, :cond_1b

    goto :goto_9

    :cond_17
    const/16 v3, -0x52

    const/16 v4, -0x54

    :cond_18
    const/16 v5, -0x3c

    goto :goto_9

    :cond_19
    :goto_8
    const/16 v0, 0x15

    const/16 v1, 0xc

    const/16 v2, 0x14

    const/16 v3, -0x52

    const/16 v4, -0x54

    const/16 v5, -0x3c

    const/16 v6, 0xd

    :cond_1a
    :goto_9
    invoke-direct/range {p0 .. p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V

    :cond_1b
    :goto_a
    iget-object v7, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget v8, v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    const/16 v9, 0x25

    const/16 v14, 0x24

    const/4 v15, -0x1

    if-eq v8, v15, :cond_2c

    const/16 v6, 0x26

    if-eq v11, v6, :cond_2b

    const/16 v6, 0x19

    if-eq v11, v6, :cond_2b

    const/16 v6, 0x2e

    if-eq v11, v6, :cond_2b

    const/16 v6, 0x3f

    if-eq v11, v6, :cond_2b

    const/16 v6, 0x3d

    if-eq v11, v6, :cond_2b

    const/16 v6, 0x1b

    if-eq v11, v6, :cond_2b

    const/16 v6, 0x3e

    if-eq v11, v6, :cond_2b

    const/16 v6, 0x23

    if-eq v11, v6, :cond_2b

    const/16 v6, 0x34

    if-eq v11, v6, :cond_2b

    const/16 v6, 0x55

    if-eq v11, v6, :cond_2b

    if-eq v11, v14, :cond_2b

    const/16 v6, 0x39

    if-eq v11, v6, :cond_2b

    const/16 v6, 0x5b

    if-eq v11, v6, :cond_2b

    const/16 v6, 0x3b

    if-eq v11, v6, :cond_2b

    if-eq v11, v9, :cond_2b

    const/16 v6, -0x53

    if-eq v11, v6, :cond_2b

    const/16 v6, 0x5d

    if-eq v11, v6, :cond_2b

    const/16 v6, 0x63

    if-eq v11, v6, :cond_2b

    const/16 v6, 0x16

    if-ne v11, v6, :cond_1c

    iget-object v7, v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I

    move-result v7

    sget v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    if-ne v7, v8, :cond_1c

    goto/16 :goto_b

    :cond_1c
    const/16 v7, 0x33

    if-ne v11, v7, :cond_1d

    goto/16 :goto_b

    :cond_1d
    if-ne v11, v6, :cond_1e

    iget-object v6, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget-object v7, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    iget v6, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I

    move-result v6

    sget v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_GALLERY:I

    if-ne v6, v7, :cond_1e

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->pickGalleryImage(I)V

    goto/16 :goto_c

    :cond_1e
    const/16 v0, -0x58

    if-ne v11, v0, :cond_1f

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I

    move-result v0

    sget v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_BEZIER:I

    if-ne v0, v6, :cond_1f

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iget-object v4, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prepareEdit(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    invoke-direct {v10, v3, v12, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V

    goto/16 :goto_c

    :cond_1f
    const/16 v0, -0x5a

    if-ne v11, v0, :cond_20

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I

    move-result v0

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_ARROW:I

    if-ne v0, v3, :cond_20

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v3, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->prepareEdit(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    invoke-direct {v10, v4, v12, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V

    goto/16 :goto_c

    :cond_20
    const/16 v0, -0x59

    if-ne v11, v0, :cond_21

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I

    move-result v0

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_SHAPE:I

    if-ne v0, v3, :cond_21

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v3, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->prepareEdit(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    invoke-direct {v10, v5, v12, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V

    goto :goto_c

    :cond_21
    const/16 v0, 0x43

    if-ne v11, v0, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->showCropForCurrentShape()V

    goto :goto_c

    :cond_22
    const/16 v0, 0x17

    if-ne v11, v0, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->removeObject()V

    goto :goto_c

    :cond_23
    const/16 v0, 0x18

    if-ne v11, v0, :cond_24

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->copyCurrentShape()V

    goto :goto_c

    :cond_24
    const/16 v0, 0x1c

    if-ne v11, v0, :cond_25

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->moveCurrShapeToFront()V

    goto :goto_c

    :cond_25
    const/16 v0, 0x2d

    if-ne v11, v0, :cond_26

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->moveCurrShapeToBack()V

    goto :goto_c

    :cond_26
    const/16 v0, 0x62

    if-ne v11, v0, :cond_27

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiBgRemover;->removeBg(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    goto :goto_c

    :cond_27
    const/16 v0, 0x61

    if-ne v11, v0, :cond_28

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer;->enhance(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    goto :goto_c

    :cond_28
    const/16 v0, 0x60

    if-ne v11, v0, :cond_29

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter;->splitToLayers(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    goto :goto_c

    :cond_29
    const/16 v0, 0x5f

    if-ne v11, v0, :cond_2a

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiObjectSplitter;->splitObjects(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    goto :goto_c

    :cond_2a
    const/16 v0, 0x51

    if-ne v11, v0, :cond_2c

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object v3, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBmpPathMasks()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    move-result-object v3

    iget-object v4, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getCurrBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$27;

    invoke-direct {v5, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$27;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-direct {v0, v10, v3, v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;Landroid/graphics/Bitmap;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_c

    :cond_2b
    :goto_b
    invoke-direct/range {p0 .. p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V

    :cond_2c
    :goto_c
    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    if-eq v3, v15, :cond_37

    const/4 v4, 0x3

    if-ne v11, v4, :cond_2d

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$28;

    invoke-direct {v2, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$28;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-direct {v1, v10, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_e

    :cond_2d
    if-nez v11, :cond_2e

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->removeObject()V

    goto/16 :goto_e

    :cond_2e
    const/16 v3, 0x8

    if-ne v11, v3, :cond_2f

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;-><init>()V

    iget-object v1, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getFonts()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setInitParams(Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$29;

    invoke-direct {v1, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$29;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setInterface(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "item_font_dialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_2f
    const/16 v3, 0xe

    if-ne v11, v3, :cond_30

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->copyCurrentText()V

    goto/16 :goto_e

    :cond_30
    const/16 v3, 0x1a

    if-ne v11, v3, :cond_31

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->moveCurrTextToFront()V

    goto/16 :goto_e

    :cond_31
    const/16 v3, 0x2c

    if-ne v11, v3, :cond_32

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->moveCurrTextToBack()V

    goto/16 :goto_e

    :cond_32
    const/4 v0, 0x5

    if-eq v11, v0, :cond_36

    const/4 v0, 0x6

    if-eq v11, v0, :cond_36

    const/4 v0, 0x4

    if-eq v11, v0, :cond_36

    const/16 v0, 0x77

    if-eq v11, v0, :cond_36

    const/16 v0, 0x31

    if-eq v11, v0, :cond_36

    const/16 v0, 0x32

    if-eq v11, v0, :cond_36

    const/4 v0, 0x7

    if-eq v11, v0, :cond_36

    const/16 v0, 0x9

    if-eq v11, v0, :cond_36

    const/16 v0, 0xa

    if-eq v11, v0, :cond_36

    if-eq v11, v2, :cond_36

    const/16 v0, 0xb

    if-eq v11, v0, :cond_36

    if-eq v11, v1, :cond_36

    const/16 v0, 0xd

    if-eq v11, v0, :cond_36

    const/16 v0, 0x2f

    if-eq v11, v0, :cond_36

    const/16 v0, 0x5c

    if-eq v11, v0, :cond_36

    const/16 v0, 0x30

    if-eq v11, v0, :cond_36

    const/16 v0, 0x40

    if-eq v11, v0, :cond_36

    const/16 v0, 0xf

    if-eq v11, v0, :cond_36

    const/16 v0, -0x10

    if-eq v11, v0, :cond_36

    const/16 v0, 0x11

    if-eq v11, v0, :cond_36

    const/16 v0, 0x12

    if-eq v11, v0, :cond_36

    const/16 v0, 0x13

    if-eq v11, v0, :cond_36

    const/16 v0, 0x56

    if-eq v11, v0, :cond_36

    const/16 v0, 0x5b

    if-eq v11, v0, :cond_36

    if-eq v11, v14, :cond_36

    if-ne v11, v9, :cond_33

    goto :goto_d

    :cond_33
    const/16 v0, 0x4e

    if-ne v11, v0, :cond_34

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_37

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getTextStylesButtonRegion()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getMenuOffsetForLocation(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)[I

    move-result-object v0

    iget-object v1, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;

    iget-object v2, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v0, v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_e

    :cond_34
    const/16 v0, 0x50

    if-ne v11, v0, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrentTextAsStyle()V

    goto :goto_e

    :cond_35
    const/16 v0, 0x4f

    if-ne v11, v0, :cond_37

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$30;

    invoke-direct {v1, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$30;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-direct {v0, v10, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_e

    :cond_36
    :goto_d
    invoke-direct/range {p0 .. p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V

    :cond_37
    :goto_e
    if-gez v11, :cond_38

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toggleNonModalControls(Z)V

    :cond_38
    return-void
.end method

.method public doOpOnBundleRes(Landroid/os/Bundle;Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;)Landroid/os/Bundle;
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "/pixelLab/autosave/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doOpOnBundleRes(Landroid/os/Bundle;Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;)Landroid/os/Bundle;

    goto :goto_0

    :cond_3
    const-string v2, "imgSrcPath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "textsIntervalsFont"

    if-nez v3, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "res"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->persist:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;

    if-ne p3, v2, :cond_5

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v6, "imgSrcSourceType"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_5
    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->fixAbsolute:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;

    if-ne p3, v2, :cond_6

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->fixAbsolute:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;

    if-ne p3, v2, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->persist:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;

    if-ne p3, v2, :cond_2

    const-string v2, "fonts"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->persist:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;

    if-ne p3, v3, :cond_9

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->copyDirectory(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    return-object p1
.end method

.method public doPickGalleryImage(I)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    const-string v2, "application/pdf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "Select Pictures or PDF"

    goto :goto_0

    :cond_0
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Select Picture"

    :goto_0
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public doneEditing()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getSelectedComponent()Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getSelectedComponent()Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->clearListeners()V

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->clearMe()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->clearMe()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->clearMe()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->clearMe()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->disable()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->colorPickerTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->disable()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v2, "fragment_tools"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/BackStackRecord;->show(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)V

    :cond_1
    const-string v2, "option_expand"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->recycleFragments()V

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->minimizedLayersForAction:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->maximizeLayers()V

    :cond_3
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->hiddenNonModal:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toggleNonModalControls(Z)V

    :cond_4
    return-void
.end method

.method public donePressed()V
    .locals 0

    return-void
.end method

.method public dpToPixels(I)I
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

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

.method public enableLayers(Z)V
    .locals 2

    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0a0196

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0197

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0199

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a180e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a019a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0801d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;

    const/high16 v0, -0x40800000    # -1.0f

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayoutWidth:F

    mul-float v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setX(F)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->enable()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->maximizeLayers()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->hideLayers()V

    :goto_0
    return-void
.end method

.method public exportImage(IILandroid/graphics/Bitmap$CompressFormat;Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;ZLjava/lang/String;)V
    .locals 13

    move-object v11, p0

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v0

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v9, p1

    int-to-float v3, v9

    int-to-float v0, v0

    div-float/2addr v3, v0

    move v10, p2

    int-to-float v4, v10

    int-to-float v1, v1

    div-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v5, v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->setRenderMode(ZF)V

    mul-float v0, v0, v3

    float-to-int v0, v0

    mul-float v1, v1, v3

    float-to-int v1, v1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    goto :goto_0

    :catchall_0
    nop

    move-object v6, v5

    :goto_0
    const/4 v0, 0x0

    if-nez v6, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110102

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-virtual {p0, v0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->setRenderMode(ZF)V

    iget-object v1, v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V

    iget-object v0, v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->redrawAll()V

    return-void

    :cond_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11012b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;

    move-object v0, v12

    move-object v1, p0

    move-object v4, v6

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move v9, p1

    move v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Landroid/graphics/Canvas;Landroid/app/ProgressDialog;Landroid/graphics/Bitmap;Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;Landroid/graphics/Bitmap$CompressFormat;ZLjava/lang/String;II)V

    invoke-static {v12}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V

    return-void
.end method

.method public fileJsonToBundle(Ljava/io/FileInputStream;)Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [C

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object v1, v0

    :goto_2
    :try_start_3
    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object v0
.end method

.method public fileJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->fileJsonToBundle(Ljava/io/FileInputStream;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public fontApplied()V
    .locals 0

    return-void
.end method

.method public getAvailableAutosaves()[Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/pixelLab/autosave"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$21;

    invoke-direct {v2, p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$21;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " |  , Android "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Screen : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeightFromMenu(Landroid/widget/PopupWindow;)I
    .locals 3

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method public getMenuOffsetForLocation(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)[I
    .locals 5

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getHeightFromMenu(Landroid/widget/PopupWindow;)I

    move-result p1

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int v3, v2, p1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x1

    if-gt v3, v1, :cond_1

    aput v2, v0, v4

    goto :goto_0

    :cond_1
    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    aput p2, v0, v4

    :goto_0
    return-object v0
.end method

.method public getTextStylesButtonRegion()Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment_tools"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->getTextStylesButtonRegion()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public gridOptionsClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    iget-boolean v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snapEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->setSnap(Z)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    iget-boolean v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->toggleSelection(Z)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->askResetGrid()V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remMarker()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->askPositionGrid()V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->addVertical()V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->addHorizontal()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a015f
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public gridSelectionToggled(Z)V
    .locals 2

    const v0, 0x7f0a0165

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0166

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public gridSnapToggled(Z)V
    .locals 1

    const v0, 0x7f0a0167

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public gridToggled(Z)V
    .locals 1

    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0a0161

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hasBitmapBg()Z
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideLayers()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayoutWidth:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$51;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$51;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public isOptionExpandOpen()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v1, "option_expand"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public layersSelectClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a019a

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->toggleSelectionMode()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->isSelectionMode()Z

    move-result p1

    const v0, 0x7f0a0199

    const v3, 0x7f0a0197

    const v4, 0x7f0a0196

    const v5, 0x7f0a180e

    if-eqz p1, :cond_0

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const v0, 0x7f0801ce

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const v0, 0x7f0801d1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getSelectedReferences()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v3, 0x1

    const v4, 0x7f0a0196

    if-ne v1, v4, :cond_2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->startGrouping()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeObjectsByReferences(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->endGrouping()V

    return-void

    :cond_2
    const v4, 0x7f0a0197

    if-ne v1, v4, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;

    aget v4, v0, v2

    aget v0, v0, v3

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getHeightFromMenu(Landroid/widget/PopupWindow;)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v1, p1, v2, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    :cond_3
    const v4, 0x7f0a0199

    if-ne v1, v4, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v3, :cond_4

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100a5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f11013b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$81;

    invoke-direct {v1, p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$81;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/util/ArrayList;)V

    const v0, 0x1040013

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_4
    const p1, 0x7f11013c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    return-void

    :cond_5
    const v4, 0x7f0a180e

    if-ne v1, v4, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_7

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectByReference(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->unmergeCurrentShape()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f0a019a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const-string p1, "\u062a\u0645 \u0641\u0635\u0644 \u0627\u0644\u0637\u0628\u0642\u0627\u062a \u0628\u0646\u062c\u0627\u062d"

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p1, "\u0647\u0630\u0647 \u0627\u0644\u0637\u0628\u0642\u0629 \u0644\u064a\u0633\u062a \u0645\u062f\u0645\u062c\u0629"

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string p1, "\u064a\u0631\u062c\u0649 \u062a\u062d\u062f\u064a\u062f \u0637\u0628\u0642\u0629 \u0645\u062f\u0645\u062c\u0629 \u0648\u0627\u062d\u062f\u0629 \u0641\u0642\u0637 \u0644\u0644\u0641\u0635\u0644"

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110146

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_9
    return-void
.end method

.method public loadPresetFromAsset(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$53;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$53;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doneSomething()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110155

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1100a9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$54;

    invoke-direct {v2, p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$54;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public loadPresetFromFile(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doneSomething()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f110155

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f1100a9

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x1040013

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$56;

    invoke-direct {v1, p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$56;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x1040009

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public loadQuickMenus()V
    .locals 8

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->createMainMenu()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->createAddNewMenu()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->createSaveMenu()V

    const-string v0, "theme_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_color"

    const v2, -0xff8d8e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0079

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->addClickListenersTo(Landroid/view/ViewGroup;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080201

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f0d0078

    invoke-virtual {v0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {p0, v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->addClickListenersTo(Landroid/view/ViewGroup;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V

    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f0d0077

    invoke-virtual {v0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->multiple:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {p0, v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->addClickListenersTo(Landroid/view/ViewGroup;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V

    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f0d0089

    invoke-virtual {v0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {p0, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->addClickListenersTo(Landroid/view/ViewGroup;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public maximizeLayers()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->minimizedLayersForAction:Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public minimizeLayers()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayoutWidth:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersHandle:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->minimizedLayersForAction:Z

    :cond_0
    return-void
.end method

.method public msg(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public msg(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public objectTouch()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mCurrentPhotoFile:Ljava/io/File;

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$42;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$42;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x1040013

    const/4 v2, 0x0

    const v3, 0x1040009

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->currentAction:I

    if-gez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f110155

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f1100a8

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$2;

    invoke-direct {v4, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_2

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f110107

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f1100a5

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_2
    return-void
.end method

.method public onColorSelected(I)V
    .locals 3

    const-string v0, "theme_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_color"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->recreate()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    new-instance v0, Lcom/smalihelper/iran/CustomAlertDialog;

    invoke-direct {v0, p0}, Lcom/smalihelper/iran/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/smalihelper/iran/CustomAlertDialog;->showAlertDialog()V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->deleteAppFiles()V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v1, "currPath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mCurrentPhotoFile:Ljava/io/File;

    :cond_0
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->tinydb:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

    const-string v2, "exitedByUser"

    invoke-virtual {v1, v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->exitedByUser:Z

    if-eqz p1, :cond_2

    const-string v1, "invalidBundle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->instanceState:Landroid/os/Bundle;

    goto :goto_2

    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->exitedByUser:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$5;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->rsc:Landroid/content/res/Resources;

    const v1, 0x7f0d001e

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v1, 0x7f0a028e

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toolsPanel:Landroid/view/View;

    const v2, 0x7f0a01a6

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;

    const-string v3, "theme_prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "app_color"

    const v5, -0xff8d8e

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toolsPanel:Landroid/view/View;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    const v4, 0x7f0a0287

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    const v2, 0x7f0a013d

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$7;

    invoke-direct {v3, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$7;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a01e5

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f0a01e6

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06001b

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$8;

    invoke-direct {v4, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$8;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->loadQuickMenus()V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$9;

    invoke-direct {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$9;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0102

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->content:Landroid/widget/LinearLayout;

    const v2, 0x7f0a02f9

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    const v2, 0x7f0a01dc

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->previewPanel:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a01db

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->previewContainer:Landroid/view/View;

    const v2, 0x7f0a00db

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;-><init>(III)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v4, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->setUsedImage(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    const v2, 0x7f0a02fd

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->setChild(Landroid/view/View;)V

    :cond_7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateUndoButtonEnabled(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateRedoButtonEnabled(Ljava/lang/Boolean;)V

    const v2, 0x7f0a02fc

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->zoomButton:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-virtual {v4, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->setNotifyOnChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->zoomButton:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$10;

    invoke-direct {v4, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$10;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->setZoomListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-direct {v2, v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;-><init>(Landroid/widget/FrameLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;)V

    sput-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    const v4, 0x7f0a0194

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->setLayerHolderScroll(Landroid/widget/ScrollView;)V

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->setTextContain(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;)V

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->setBgLayout(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;)V

    const v2, 0x7f0a0193

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->setButtonsListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->setLayersListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;)V

    const v2, 0x7f0a0195

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0198

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersHandle:Landroid/widget/ImageButton;

    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layerHandleListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0700a1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayoutWidth:F

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-virtual {v4, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->addListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$OnZoomListener;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->setControlsListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v2, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->setGridPanel(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, -0x1000000

    const/16 v7, 0xa

    invoke-direct {v2, v5, v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->colorPickerTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->disable()V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->colorPickerTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->disable()V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->colorPickerTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a01b5

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;

    const v2, 0x7f0a0248

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v3, v2}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-direct {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;-><init>()V

    iput-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->fragmentTools:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(I)V

    if-eqz p1, :cond_9

    const-string v5, "currTab"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->fragmentTools:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-virtual {p1, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "fragment_tools"

    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    const-string v5, "option_expand"

    invoke-virtual {v2, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    if-eqz v4, :cond_a

    invoke-virtual {v3, v4}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v3, v2}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    :cond_b
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->fragmentTools:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-virtual {v3, v1, v2, p1}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v3, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$11;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$11;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage$OnChangeListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->setSelectionListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->content:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$12;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$12;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/-$$Lambda$SvX9U4d_phw5x7rJ__J-4xz32CY;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/-$$Lambda$SvX9U4d_phw5x7rJ__J-4xz32CY;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->checkPermissionsAndDo(Ljava/lang/Runnable;)V

    iput-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->smContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/TG/tg;->TG(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/signcheck/check;->SignCheck(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stopAutoSave()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const p1, 0x7f0a0041

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->hiddenNonModal:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onObjectZChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stopAutoSave()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-static {p0}, Landroidx/activity/sbotGuard;->check(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->startAutoSave()V

    invoke-static {p0}, Lcom/TG/tg;->TG(Landroid/content/Context;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->instanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->loadedContent:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->putStateInBundle(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->putUiStateInBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->mCurrentPhotoFile:Ljava/io/File;

    const-string v2, "currPath"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->saveToBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "historyUndo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    const-string v2, "invalidBundle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveState(Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onShapeCreate(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addObjectCreation(Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V

    return-void
.end method

.method public onShapeDelete(Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addObjectDeletion(Landroid/os/Bundle;ILjava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V

    return-void
.end method

.method public onShapeGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    invoke-virtual {v0, p1, v1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V

    return-void
.end method

.method public onShapeSelectionChanged(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->fragmentTools:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->informShapeSelectionChanged(ZI)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doneEditing()V

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toggleQuickActions(Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->startAutoSave()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stopAutoSave()V

    return-void
.end method

.method public onTextCreate(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addObjectCreation(Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V

    return-void
.end method

.method public onTextDelete(Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addObjectDeletion(Landroid/os/Bundle;ILjava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V

    return-void
.end method

.method public onTextDoubleTap()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(I)V

    return-void
.end method

.method public onTextGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    invoke-virtual {v0, p1, v1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V

    return-void
.end method

.method public onTextSelectionChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->fragmentTools:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->informTextSelectionChanged(Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doneEditing()V

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toggleQuickActions(Z)V

    return-void
.end method

.method public openAutoSaveDialog()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/pixelLab/autosave"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$48;

    invoke-direct {v2, p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$48;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-direct {p0, v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->getDate(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f110080

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$49;

    invoke-direct {v4, p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$49;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    :goto_1
    const v0, 0x7f110144

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    return-void
.end method

.method public optionExpandCancelAction()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "option_expand"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->doCancelAction()V

    :cond_0
    return-void
.end method

.method public pickGalleryImage(I)V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$34;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$34;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;I)V

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->checkPermissionsAndDo(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pickNewTexture(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x2d

    goto :goto_0

    :cond_0
    const/16 p1, 0x13

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->pickGalleryImage(I)V

    return-void
.end method

.method public presetsChanged()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment_tools"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->informPresetsChanged()V

    :cond_0
    return-void
.end method

.method public putStateInBundle(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->bundleObjects(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getSelectedReference()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectsSelectedReference"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public quoteOpened()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->openedQuotes:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->openedQuotes:Z

    return-void
.end method

.method public recreatePreview(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    const-string v1, "objectsBundle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "objectsIds"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->recreateObjects(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    const-string v0, "objectsSelectedReference"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const-string p1, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectByReference(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V

    goto :goto_1

    :cond_1
    const-string v0, "shapesSelectedId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "textsSelectedId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V

    :goto_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    if-ne v0, v1, :cond_4

    iget p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    if-eq p1, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x1

    :goto_3
    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toggleQuickActions(Z)V

    return-void
.end method

.method public recreatePreviewBg(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_5

    const-string v2, "bgType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v2, "bgWidth"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v2, "bgHeight"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v2, -0x1

    const-string v4, "bgColor"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v2, "bgGradientV2"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v4, "bgGradientType"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const v4, -0x333334

    const-string v5, "bgGradientStart"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const v5, -0xbbbbbc

    const-string v7, "bgGradientEnd"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    move-object v7, v2

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    move-object v7, v3

    :goto_0
    const-string v2, "bgRotation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    const-string v2, "bgPhotoV2"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    const-string v2, "bgPhotoPath"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v11, v14

    invoke-virtual/range {v4 .. v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setOptions(Ljava/lang/String;ILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;IIII)V

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    const-string v2, "bgPhotoSrc"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Landroid/os/Bundle;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;

    const-string v4, "bgPhotoCrop"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;-><init>(Landroid/os/Bundle;)V

    const-string v4, "bgPhotoForcedDim"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    const-string v4, "bgActualWidth"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v4, "bgActualHeight"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->getPortion()Landroid/graphics/RectF;

    move-result-object v15

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->isCircular()Z

    move-result v16

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->isFlipH()Z

    move-result v17

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->isFlipV()Z

    move-result v18

    invoke-virtual/range {v4 .. v18}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setOptions(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;IIIIIZILandroid/graphics/RectF;ZZZ)V

    :goto_1
    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    const/high16 v4, -0x1000000

    const-string v5, "effectVignetteColor"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->setVignetteColor(I)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    const/16 v4, 0xaa

    const-string v5, "effectVignetteAlpha"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->setVignetteAlpha(I)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;

    const/4 v4, 0x7

    const-string v5, "effectNoiseVal2"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;->setNumberToRepeat(I)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;

    const/16 v4, 0x32

    const-string v5, "effectNoiseAlpha"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;->setEffectAlpha(I)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    const/16 v4, 0x5a

    const-string v5, "effectStripesAlpha"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->setEffectAlpha(I)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    const/16 v4, 0xa

    const-string v5, "effectStripesVal2"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->setNumberToRepeat(I)V

    const-string v2, "effectVignetteEnabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "effectNoiseEnabled"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "effectStripesEnabled"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    const/16 v7, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    if-eqz v5, :cond_4

    const/4 v7, 0x0

    :cond_4
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    const-string v2, "effectBrightnessVal"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "effectContrastVal"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "effectHueVal"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move-object v7, v1

    const-string v6, "effectSaturationVal"

    invoke-virtual {v7, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v1, v2, v4, v6, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->setEffectsNoUpdate(IIII)V

    const-string v1, "effectBlurVal"

    invoke-virtual {v7, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->setBlurRadius(I)V

    :cond_5
    return-void
.end method

.method public removePreset(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "deleted"

    invoke-static {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->putEmptyFileHere(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public saveAPreview()Landroid/graphics/Bitmap;
    .locals 5

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->safetyCheck()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v0

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float v2, v3, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public saveCurrBgState()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->putUiStateInBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->bg_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V

    return-void
.end method

.method public saveCurrShapeState(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public saveCurrTextState(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public saveCurrentAsPreset(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/pixelLab/presets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100a5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f110186

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$58;

    invoke-direct {v1, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$58;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrentAsPresetOverwrite(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public saveCurrentTextAsStyle()V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1100a5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1101a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33;

    invoke-direct {v2, p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V

    const v0, 0x1040013

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public saveJson(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/pixelLab/presets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/data.plab"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/res"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance p2, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/pixelLab/presets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->putNoMediaHere(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->persist:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;

    invoke-virtual {p0, p1, p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doOpOnBundleRes(Landroid/os/Bundle;Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Ljava/io/FileWriter;

    invoke-direct {p2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public saveStatesForReferences(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->startGrouping()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getObjectByRef(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->endGrouping()V

    return-void
.end method

.method public saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "imported"

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getCacheFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {v3, v2}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v6, v7}, Landroid/graphics/pdf/PdfRenderer$Page;->render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V

    invoke-virtual {v4}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    invoke-virtual {v3}, Landroid/graphics/pdf/PdfRenderer;->close()V

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v5, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x800

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    :cond_3
    return-object v2
.end method

.method public setBgFillOptions(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setFillOptionsNoUpdate(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V

    return-void
.end method

.method public setRenderMode(ZF)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->setRenderMode(ZF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->setRenderMode(ZF)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->cleanMemory()V

    return-void
.end method

.method public setScreenContent(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "projectDir"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->currentProjectDir:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->recreatePreviewBg(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->previewPanel:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->previewPanel:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :cond_2
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    float-to-int v1, v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->displayHeight:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->displayWidth:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$50;

    invoke-direct {v1, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$50;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUsedImage(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->shouldUnloadBitmap:Z

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->setUsedImage(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;)V

    return-void
.end method

.method public showExportDialog()V
    .locals 9

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I

    move-result v3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-boolean v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getActualWidth()I

    move-result v5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getActualHeight()I

    move-result v6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->hasTransparency()Z

    move-result v7

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;-><init>(Landroid/content/Context;IIZIIZ)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$82;

    invoke-direct {v0, p0, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$82;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;)V

    invoke-virtual {v8, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->setOnGalleryButtonClicked(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$83;

    invoke-direct {v0, p0, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$83;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;)V

    invoke-virtual {v8, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->setOnShareButtonClicked(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;

    invoke-direct {v0, p0, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$84;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;)V

    invoke-virtual {v8, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->setOnSocialMediaShare(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showProjectBrowser(Z)V
    .locals 3

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$59;

    invoke-direct {v2, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$59;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Z)V

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;-><init>(Landroid/content/Context;ZLandroidx/fragment/app/FragmentManager;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showStickerSearchDialog()V
    .locals 4

    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener;->resumeIfAvailable(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0628\u062d\u062b \u0639\u0646 \u0627\u0644\u0645\u0644\u0635\u0642\u0627\u062a \u0648\u0627\u0644\u0645\u0644\u062d\u0642\u0627\u062a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0627\u0643\u062a\u0628 \u0627\u0633\u0645 \u0627\u0644\u0645\u0644\u062d\u0642 (\u0645\u062b\u0627\u0644: \u0645\u0637\u0631\u060c \u0633\u062d\u0627\u0628\u060c \u0625\u0636\u0627\u0621\u0629)..."

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u0628\u062d\u062b"

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener;

    invoke-direct {v3, p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const-string v0, "requestCode"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public toggleLayers()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->enableLayers(Z)V

    return-void
.end method

.method public toggleNonModalControls(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toggleNonModalControls_r(ZLandroid/view/View;)V

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->hiddenNonModal:Z

    return-void
.end method

.method public toggleNonModalControls_r(ZLandroid/view/View;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0a0292

    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0a02fc

    if-eq v0, v2, :cond_4

    check-cast p2, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->toggleNonModalControls_r(ZLandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0a003e

    if-eq v0, v3, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public undoAddLastHistory()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->undoAddLastStep()V

    return-void
.end method

.method public updateBackground()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->previewContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrastColorIsDark()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#212121"

    goto :goto_0

    :cond_0
    const-string v1, "#fafafa"

    :goto_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public updateBackground(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->willResize:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->setScreenContent(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V

    return-void
.end method

.method public updateRedoButtonEnabled(Ljava/lang/Boolean;)V
    .locals 4

    const v0, 0x7f0a02fe

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public updateUndoButtonEnabled(Ljava/lang/Boolean;)V
    .locals 4

    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
