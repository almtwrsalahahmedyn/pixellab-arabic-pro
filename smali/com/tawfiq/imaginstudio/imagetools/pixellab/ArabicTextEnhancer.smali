.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;
.super Ljava/lang/Object;
.source "ArabicTextEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;
    }
.end annotation


# static fields
.field public static final ACTION_JUSTIFY_LINES:I = 0x77

.field public static final ALEF_VARIANTS:Ljava/lang/String; = "\u0627\u0623\u0625\u0622\u0671"

.field public static final DUAL_JOINING:Ljava/lang/String; = "\u0628\u062a\u062b\u062c\u062d\u062e\u0633\u0634\u0635\u0636\u0637\u0638\u0639\u063a\u0641\u0642\u0643\u0644\u0645\u0646\u0647\u064a\u0626\u067e\u0686\u06af\u06a9\u06cc\u06a4\u0679"

.field public static final FINAL_TEH_HEH:Ljava/lang/String; = "\u0629\u0647"

.field public static final FINAL_YEH:Ljava/lang/String; = "\u064a\u0649\u06cc\u0626"

.field public static final HIGH_PRIORITY_AFTER:Ljava/lang/String; = "\u0633\u0634\u0635\u0636\u0637\u0638\u0639\u063a\u0641\u0642\u0643\u0628\u062a\u062d\u062b\u0645\u0647\u064a"

.field public static final PRE_FINAL_YEH_AVOID:Ljava/lang/String; = "\u0628\u0631\u0645\u0646\u062e"

.field public static final RIGHT_ONLY:Ljava/lang/String; = "\u0627\u062f\u0630\u0631\u0632\u0648\u0624\u0625\u0623\u0622\u0671\u0629\u0649\u0698"

.field public static final SACRED_WORDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPECIAL_MAQSURA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TATWEEL:C = '\u0640'


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 54
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0627\u0644\u0644\u0647"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u0644\u0644\u0647"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "\u0648\u0627\u0644\u0644\u0647"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v6, "\u0628\u0627\u0644\u0644\u0647"

    aput-object v6, v1, v2

    const/4 v2, 0x4

    const-string v6, "\u062a\u0627\u0644\u0644\u0647"

    aput-object v6, v1, v2

    const/4 v2, 0x5

    const-string v6, "\u0641\u0627\u0644\u0644\u0647"

    aput-object v6, v1, v2

    const/4 v2, 0x6

    const-string v6, "\u0627\u0644\u0644\u0647\u0645"

    aput-object v6, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->SACRED_WORDS:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u062d\u062a\u0649"

    aput-object v2, v1, v3

    const-string v2, "\u0645\u062a\u0649"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->SPECIAL_MAQSURA:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addJustifyOptionToTextTab(Landroid/view/ViewGroup;)V
    .locals 11

    .line 622
    if-nez p0, :cond_0

    return-void

    .line 624
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 625
    nop

    .line 627
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x77

    const-string v7, "actionDo"

    if-ge v3, v5, :cond_3

    .line 628
    :try_start_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 630
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 631
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 632
    if-ne v5, v6, :cond_1

    .line 633
    return-void

    .line 635
    :cond_1
    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 636
    add-int/lit8 v4, v3, 0x1

    goto :goto_1

    .line 638
    :catch_0
    move-exception v5

    :cond_2
    :goto_1
    nop

    .line 627
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 641
    :cond_3
    :try_start_3
    const-string v3, "com.tawfiq.imaginstudio.imagetools.pixellab/controls/widgets/option_ui"

    const/16 v5, 0x2f

    const/16 v8, 0x2e

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 642
    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v2

    const-class v9, Landroid/util/AttributeSet;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 643
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const/4 v9, 0x0

    aput-object v9, v5, v10

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 645
    invoke-virtual {v3, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 646
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 648
    const v3, 0x7f0a01c6

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 649
    if-eqz v3, :cond_4

    .line 650
    const v6, 0x7f08012a

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 651
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 654
    :cond_4
    const v1, 0x7f0a01c7

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 655
    if-eqz v1, :cond_5

    .line 656
    const-string v6, "\u062a\u0633\u0648\u064a\u0629 \u0627\u0644\u0623\u0633\u0637\u0631"

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    :cond_5
    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$2;

    invoke-direct {v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$2;-><init>(Landroid/content/Context;)V

    .line 677
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    :cond_7
    if-ltz v4, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v4, v0, :cond_9

    .line 682
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 685
    :cond_9
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 687
    invoke-virtual {p0, v5, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 691
    goto :goto_2

    .line 689
    :catchall_0
    move-exception p0

    .line 690
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 692
    :goto_2
    return-void
.end method

.method public static addKashidaFixed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 547
    invoke-static {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->applyAutoKashida(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static applyAutoKashida(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .line 306
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 307
    :cond_0
    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->cleanTatweel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 308
    if-gtz p1, :cond_1

    return-object p0

    .line 310
    :cond_1
    const/4 v0, -0x1

    const-string v1, "\n"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_5

    .line 313
    aget-object v4, p0, v3

    .line 314
    const-string v5, "(?<=\\s)|(?=\\s)"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 315
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 316
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 317
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 319
    :cond_2
    invoke-static {v7, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->stretchWord(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 322
    :cond_3
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 324
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 306
    :cond_6
    :goto_3
    const-string p0, ""

    return-object p0
.end method

.method public static applyWordKashidaOverrides(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 10

    .line 515
    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_5

    .line 516
    :cond_0
    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->cleanTatweel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 517
    const/4 v0, -0x1

    const-string v1, "\n"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    nop

    .line 521
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_6

    .line 522
    aget-object v5, p0, v3

    .line 523
    const-string v6, "(?<=\\s)|(?=\\s)"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 524
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 525
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 526
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 528
    :cond_1
    array-length v9, p1

    if-ge v4, v9, :cond_2

    aget v9, p1, v4

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 529
    :goto_2
    if-lez v9, :cond_3

    .line 530
    invoke-static {v8, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->stretchWord(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 532
    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 524
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 537
    :cond_4
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 539
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 515
    :cond_7
    :goto_5
    return-object p0
.end method

.method public static buildJustifyPanel(Ljava/lang/Object;)V
    .locals 38

    .line 760
    move-object/from16 v2, p0

    const-string v10, "#FAB852"

    const-string v11, "#37474F"

    if-nez v2, :cond_0

    return-void

    .line 762
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "controlsLayout"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 763
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 764
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/LinearLayout;

    .line 765
    if-nez v12, :cond_1

    return-void

    .line 766
    :cond_1
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 767
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 769
    invoke-static/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->findTextComponent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 770
    const/16 v3, 0x11

    const-string v4, "#FFA726"

    const/16 v5, 0x14

    const/high16 v14, 0x41600000    # 14.0f

    const/16 v13, 0x10

    if-nez v15, :cond_2

    .line 771
    :try_start_1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 772
    const-string v1, "\u26a0\ufe0f \u064a\u0631\u062c\u0649 \u062a\u062d\u062f\u064a\u062f \u0646\u0635 \u0623\u0648\u0644\u0627\u064b \u0644\u062a\u0637\u0628\u064a\u0642 \u062a\u0633\u0648\u064a\u0629 \u0627\u0644\u0623\u0633\u0637\u0631"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 774
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 775
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 776
    invoke-static {v9, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v9, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 777
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 778
    return-void

    .line 783
    :cond_2
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "callback"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 784
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 785
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 786
    if-eqz v0, :cond_3

    .line 787
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "saveCurrTextState"

    new-array v14, v1, [Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    aput-object v17, v14, v8

    invoke-virtual {v6, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 788
    new-array v7, v1, [Ljava/lang/Object;

    aput-object v15, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 790
    :catchall_0
    move-exception v0

    :cond_3
    :goto_0
    nop

    .line 792
    :try_start_3
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "returnText"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 793
    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {v14, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 794
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, v12

    goto/16 :goto_e

    .line 805
    :cond_4
    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->cleanTatweel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 808
    const/4 v7, 0x5

    filled-new-array {v7}, [I

    move-result-object v17

    .line 809
    new-array v5, v1, [Z

    aput-boolean v8, v5, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .line 811
    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getTextAlign"

    new-array v4, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 812
    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v15, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v17, v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 813
    :catchall_1
    move-exception v0

    :goto_1
    nop

    .line 815
    :try_start_5
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "textDraw"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 816
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 817
    invoke-virtual {v0, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 818
    if-eqz v0, :cond_5

    .line 819
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "justifyAlign"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 820
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 821
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    aput-boolean v0, v5, v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 823
    :catchall_2
    move-exception v0

    :cond_5
    :goto_2
    nop

    .line 826
    nop

    .line 828
    :try_start_6
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "textDraw"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 829
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 830
    invoke-virtual {v0, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 831
    if-eqz v0, :cond_6

    .line 832
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v3, "getPaint"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v4, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 833
    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v3, v0

    goto :goto_3

    .line 831
    :cond_6
    const/4 v3, 0x0

    .line 835
    :goto_3
    goto :goto_4

    :catchall_3
    move-exception v0

    const/4 v3, 0x0

    .line 836
    :goto_4
    if-nez v3, :cond_7

    .line 837
    :try_start_7
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    move-object v7, v0

    goto :goto_5

    .line 839
    :cond_7
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    move-object v7, v0

    .line 844
    :goto_5
    :try_start_8
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getMainFont"

    new-array v4, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 845
    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v15, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 846
    instance-of v3, v0, Landroid/graphics/Typeface;

    if-eqz v3, :cond_8

    .line 847
    check-cast v0, Landroid/graphics/Typeface;

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_6

    .line 849
    :catchall_4
    move-exception v0

    :cond_8
    :goto_6
    nop

    .line 853
    const/high16 v4, 0x3f800000    # 1.0f

    :try_start_9
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getTextSize"

    new-array v13, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 854
    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v15, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 855
    instance-of v3, v0, Ljava/lang/Float;

    if-eqz v3, :cond_9

    move-object v3, v0

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    .line 856
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setTextSize(F)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    .line 858
    :catchall_5
    move-exception v0

    :cond_9
    :goto_7
    nop

    .line 860
    nop

    .line 862
    :try_start_a
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setText"

    const/4 v13, 0x2

    new-array v4, v13, [Ljava/lang/Class;

    const-class v21, Ljava/lang/String;

    aput-object v21, v4, v8

    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v21, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 866
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "cancelAction"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 867
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 868
    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$3;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-object v3, v4

    move-object v13, v4

    move-object/from16 v4, v23

    move-object/from16 v20, v5

    move-object v5, v15

    move-object/from16 v25, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v20

    :try_start_c
    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$3;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/String;[I[Z)V

    invoke-virtual {v0, v2, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_8

    .line 880
    :catchall_6
    move-exception v0

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object/from16 v25, v7

    :goto_8
    nop

    .line 884
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "positiveAction"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 885
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 886
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$4;

    invoke-direct {v3, v2, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_9

    .line 900
    :catchall_8
    move-exception v0

    :goto_9
    nop

    .line 903
    :try_start_e
    invoke-static/range {v22 .. v22}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->extractWords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 904
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v13, v3, [I

    .line 907
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 908
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 909
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 911
    const/16 v3, 0xa

    invoke-static {v9, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v3

    const/4 v5, 0x6

    invoke-static {v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v4

    const/16 v1, 0xa

    invoke-static {v9, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v8, v3, v4, v1, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 914
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 915
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 916
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 917
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 919
    invoke-static {v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 920
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 923
    const-string v4, "\u2728 \u062a\u0633\u0648\u064a\u0629 \u0648\u0645\u0648\u0627\u0632\u0646\u0629 \u0627\u0644\u0623\u0633\u0637\u0631 \u0628\u0627\u0644\u0645\u0644\u064a (Madd Pro)"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 925
    const/high16 v4, 0x41500000    # 13.0f

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 926
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 927
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 929
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 930
    const-string v3, "\u062c\u0627\u0647\u0632 \u0644\u0644\u0645\u0648\u0627\u0632\u0646\u0629"

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 932
    const/high16 v3, 0x41400000    # 12.0f

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 933
    const-string v3, "#1A232C"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v3, v5, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->makeBg(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 934
    const/16 v5, 0x8

    invoke-static {v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v3

    const/4 v7, 0x3

    invoke-static {v9, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v6

    const/4 v5, 0x3

    invoke-static {v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v3, v7, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 935
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 937
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 940
    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v7

    .line 941
    const/4 v1, 0x1

    new-array v6, v1, [Landroid/view/View;

    .line 942
    new-array v1, v1, [Landroid/widget/FrameLayout;

    .line 945
    new-instance v5, Landroid/widget/HorizontalScrollView;

    invoke-direct {v5, v9}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 946
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 947
    move-object/from16 v17, v8

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 948
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 949
    move-object/from16 v27, v7

    const/16 v7, 0x10

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 952
    const-string v18, "\ud83d\udcd0 \u062a\u0633\u0648\u064a\u0629 \u0645\u062a\u0648\u0627\u0632\u0646\u0629 \u0628\u0627\u0644\u0645\u0644\u064a"

    const-string v29, "#00838F"

    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v29

    const/16 v30, -0x1

    const/16 v31, 0xc

    const/16 v32, 0x7

    const/16 v33, 0x0

    move-object v3, v9

    move-object/from16 v34, v4

    move-object/from16 v4, v18

    move-object/from16 v35, v5

    move/from16 v5, v29

    move-object/from16 v24, v6

    move/from16 v6, v30

    move-object/from16 v28, v27

    const/16 v18, 0x10

    const/16 v19, 0x2

    move/from16 v7, v31

    move-object/from16 v27, v10

    move-object/from16 v26, v12

    move-object/from16 v12, v17

    move-object v10, v8

    move/from16 v8, v32

    invoke-static/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->createButton(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/widget/TextView;

    move-result-object v3

    .line 953
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x22

    invoke-static {v9, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v5

    const/4 v7, -0x2

    invoke-direct {v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 954
    const/4 v6, 0x6

    invoke-static {v9, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 955
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 956
    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;

    move-object/from16 v29, v13

    const/16 v5, 0x10

    move-object v13, v4

    move-object/from16 v21, v14

    move-object/from16 v14, v22

    move-object/from16 v30, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v30

    move-object/from16 v17, v25

    move-object/from16 v18, v23

    move-object/from16 v19, v34

    move-object/from16 v20, v9

    invoke-direct/range {v13 .. v20}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;Landroid/text/TextPaint;Ljava/lang/reflect/Method;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 991
    const-string v4, "\u2194\ufe0f \u0627\u0645\u0644\u0623 \u0627\u0644\u0639\u0631\u0636"

    const-string v3, "#1565C0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    const/16 v15, 0xc

    const/16 v16, 0x7

    move-object v3, v9

    move v5, v13

    const/4 v13, 0x6

    move v6, v14

    const/4 v14, -0x2

    move v7, v15

    const/16 v15, 0x22

    move/from16 v8, v16

    invoke-static/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->createButton(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/widget/TextView;

    move-result-object v8

    .line 992
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v14, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 993
    invoke-static {v9, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 994
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 995
    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;

    move-object/from16 v31, v1

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, v22

    move-object/from16 v4, v21

    move-object/from16 v5, v30

    move-object/from16 v6, v25

    move-object v13, v7

    move-object/from16 v7, v23

    move-object v14, v8

    move-object/from16 v8, v34

    move-object/from16 p0, v9

    invoke-direct/range {v1 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;Landroid/text/TextPaint;Ljava/lang/reflect/Method;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1047
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1050
    const-string v3, "\u2728 \u0645\u062f \u0643\u0634\u064a\u062f\u0629"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    const/16 v6, 0xc

    const/4 v7, 0x7

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->createButton(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/widget/TextView;

    move-result-object v1

    .line 1051
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v9, p0

    invoke-static {v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1052
    const/4 v13, 0x6

    invoke-static {v9, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1053
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;

    move-object v2, v14

    move-object/from16 v3, v22

    move-object/from16 v4, v21

    move-object/from16 v5, v30

    move-object/from16 v6, v25

    move-object/from16 v7, v23

    move-object/from16 v8, v34

    invoke-direct/range {v2 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;Landroid/text/TextPaint;Ljava/lang/reflect/Method;Landroid/widget/TextView;)V

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1084
    const-string v3, "\u274c \u0625\u0632\u0627\u0644\u0629 \u0627\u0644\u0645\u062f\u0648\u062f"

    const-string v1, "#C62828"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    const/16 v6, 0xa

    const/4 v7, 0x7

    move-object v2, v9

    invoke-static/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->createButton(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/widget/TextView;

    move-result-object v1

    .line 1085
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1086
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;

    const/4 v8, 0x6

    move-object v13, v2

    const/4 v7, -0x2

    move-object/from16 v14, v29

    move-object/from16 v15, v28

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    move-object/from16 v18, v30

    move-object/from16 v19, v23

    move-object/from16 v20, v34

    move-object/from16 v21, v9

    invoke-direct/range {v13 .. v21}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;-><init>([I[ILjava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/reflect/Method;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1117
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1119
    move-object/from16 v1, v35

    invoke-virtual {v1, v10}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 1120
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1123
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    const/high16 v10, 0x41300000    # 11.0f

    const-string v32, "#B0BEC5"

    const/16 v15, 0x20

    const/4 v13, 0x4

    if-nez v1, :cond_b

    .line 1124
    :try_start_f
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1125
    const-string v2, "\u0627\u0644\u062a\u062d\u0643\u0645 \u0628\u0645\u062f \u0643\u0644 \u0643\u0644\u0645\u0629 \u0639\u0644\u0649 \u062d\u062f\u0629 (+ \u0644\u0645\u062f \u0627\u0644\u0643\u0644\u0645\u0629\u060c \u2212 \u0644\u062a\u0642\u0635\u064a\u0631\u0647\u0627):"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1127
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1128
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1130
    const/16 v4, 0x8

    invoke-static {v9, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1131
    invoke-static {v9, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1132
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1133
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1135
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, v9}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 1136
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 1137
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1138
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1139
    const/16 v10, 0x10

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/widget/TextView;

    .line 1143
    const/4 v14, 0x0

    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v14, v5, :cond_a

    .line 1144
    nop

    .line 1145
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1147
    move-object/from16 v17, v5

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1148
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1149
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1150
    const-string v18, "#1E2732"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {v3, v10, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->makeBg(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1151
    invoke-static {v9, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v9, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-static {v9, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v9, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v5, v3, v10, v8, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1152
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1153
    invoke-static {v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1154
    const/4 v8, 0x6

    invoke-static {v9, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v10

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1155
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1158
    const-string v3, "\u2212"

    const-string v8, "#2C3844"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    const/16 v13, 0x8

    const/16 v19, 0x4

    move-object/from16 v36, v2

    move-object v2, v9

    move-object/from16 v33, v4

    move v4, v8

    move-object/from16 v37, v5

    move-object/from16 v8, v17

    move v5, v10

    const/4 v10, 0x2

    move v6, v13

    const/4 v13, -0x2

    move/from16 v7, v19

    invoke-static/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->createButton(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/widget/TextView;

    move-result-object v2

    .line 1159
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1160
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x1a

    invoke-static {v9, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v9, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1161
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;

    const/4 v6, -0x2

    const/4 v7, 0x4

    move-object v13, v3

    move/from16 v35, v14

    const/16 v5, 0x1a

    move-object/from16 v14, v29

    const/16 v4, 0x20

    move/from16 v15, v35

    move-object/from16 v16, v22

    move-object/from16 v17, v23

    move-object/from16 v18, v30

    move-object/from16 v19, v33

    move-object/from16 v20, v8

    move-object/from16 v21, v34

    invoke-direct/range {v13 .. v21}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;-><init>([IILjava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    move-object/from16 v15, v37

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1184
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1185
    aput-object v2, v33, v35

    .line 1186
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    const/4 v14, -0x1

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1188
    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1189
    const/4 v3, 0x6

    invoke-static {v9, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v13

    invoke-static {v9, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v4

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1190
    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1193
    const-string v4, "+"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x8

    const/16 v19, 0x4

    move-object v2, v9

    move-object v3, v4

    move v4, v13

    const/16 v13, 0x1a

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    invoke-static/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->createButton(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/widget/TextView;

    move-result-object v2

    .line 1194
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1195
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v9, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v9, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1196
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$10;

    const/16 v7, 0x1a

    move-object v13, v3

    const/4 v6, -0x1

    move-object/from16 v14, v29

    move-object v4, v15

    move/from16 v15, v35

    move-object/from16 v16, v22

    move-object/from16 v17, v23

    move-object/from16 v18, v30

    move-object/from16 v19, v33

    move-object/from16 v20, v8

    move-object/from16 v21, v34

    invoke-direct/range {v13 .. v21}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$10;-><init>([IILjava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1216
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1218
    move-object/from16 v2, v36

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1143
    add-int/lit8 v14, v35, 0x1

    move-object/from16 v4, v33

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, -0x2

    const/4 v8, 0x6

    const/16 v10, 0x10

    const/4 v13, 0x4

    const/16 v15, 0x20

    goto/16 :goto_a

    .line 1220
    :cond_a
    const/4 v6, -0x1

    const/16 v7, 0x1a

    const/4 v10, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 1221
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_b

    .line 1123
    :cond_b
    const/4 v6, -0x1

    const/16 v7, 0x1a

    const/4 v10, 0x2

    .line 1225
    :goto_b
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1226
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1227
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1228
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1230
    const/16 v5, 0x8

    invoke-static {v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1231
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1233
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1234
    const-string v3, "\u0634\u0631\u064a\u0637 \u0634\u062f\u0629 \u0627\u0644\u0645\u062f \u0627\u0644\u0630\u0643\u064a:"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1236
    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v2, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1237
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1238
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1283
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;

    move-object v13, v0

    move-object/from16 v14, v28

    move-object/from16 v15, v34

    move-object/from16 v16, v24

    move-object/from16 v17, v31

    move-object/from16 v18, v9

    move-object/from16 v19, v22

    move-object/from16 v20, v25

    move-object/from16 v21, v23

    move-object/from16 v22, v30

    invoke-direct/range {v13 .. v22}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;-><init>([ILandroid/widget/TextView;[Landroid/view/View;[Landroid/widget/FrameLayout;Landroid/content/Context;Ljava/lang/String;Landroid/text/TextPaint;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 1285
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1286
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1287
    const/16 v2, 0x10

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1288
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1290
    const/4 v14, 0x4

    invoke-static {v9, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1291
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1293
    const-string v3, "\u2212"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v15, -0x1

    const/16 v16, 0xc

    const/16 v17, 0x6

    move-object v2, v9

    const/16 v8, 0x8

    move v5, v15

    const/4 v15, -0x1

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->createButton(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/widget/TextView;

    move-result-object v2

    .line 1294
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1295
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x24

    invoke-static {v9, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v4

    const/16 v7, 0x20

    invoke-static {v9, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1296
    const/4 v4, 0x6

    invoke-static {v9, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1297
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1298
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$11;

    move-object/from16 v6, v28

    invoke-direct {v3, v0, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$11;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;[I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1304
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1306
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1307
    aput-object v2, v31, v1

    .line 1308
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v9, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1309
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1311
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1312
    const-string v4, "#1C2630"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v4, v5, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->makeBg(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1313
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1314
    invoke-static {v9, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v15, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1315
    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1316
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1318
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1319
    aput-object v3, v24, v1

    .line 1320
    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v4, v5, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->makeBg(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1321
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v9, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v9, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v4, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1322
    const/16 v5, 0x13

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1323
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1324
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1326
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$12;

    invoke-direct {v3, v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$12;-><init>(Landroid/widget/FrameLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1344
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1346
    const-string v3, "+"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    const/16 v8, 0xc

    const/4 v11, 0x6

    move-object v2, v9

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v14, v6

    move v6, v8

    const/16 v8, 0x20

    move v7, v11

    invoke-static/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->createButton(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/widget/TextView;

    move-result-object v2

    .line 1347
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1348
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x24

    invoke-static {v9, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v9, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1349
    const/4 v4, 0x6

    invoke-static {v9, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1350
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1351
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$13;

    invoke-direct {v3, v0, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$13;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;[I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1357
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1359
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1362
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1363
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1364
    const/16 v2, 0x10

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1365
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v15, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1367
    const/4 v3, 0x6

    invoke-static {v9, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1368
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    const/16 v2, 0x19

    const/16 v3, 0x32

    const/16 v4, 0x4b

    const/16 v5, 0x64

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v11

    .line 1371
    const/4 v13, 0x0

    :goto_c
    const/4 v14, 0x5

    if-ge v13, v14, :cond_d

    .line 1372
    aget v15, v11, v13

    .line 1373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "#212B35"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    move-object v2, v9

    invoke-static/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->createButton(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/widget/TextView;

    move-result-object v2

    .line 1374
    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v2, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1375
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x1a

    invoke-static {v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1376
    if-lez v13, :cond_c

    const/4 v6, 0x4

    invoke-static {v9, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_d

    :cond_c
    const/4 v6, 0x4

    .line 1377
    :goto_d
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1378
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$14;

    invoke-direct {v1, v0, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$14;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1384
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1371
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    goto :goto_c

    .line 1386
    :cond_d
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1388
    move-object/from16 v1, v26

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1392
    goto :goto_f

    .line 794
    :cond_e
    move-object v1, v12

    .line 795
    :goto_e
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 796
    const-string v2, "\u26a0\ufe0f \u0627\u0644\u0637\u0628\u0642\u0629 \u0627\u0644\u0646\u0635\u064a\u0629 \u0627\u0644\u0645\u062d\u062f\u062f\u0629 \u0641\u0627\u0631\u063a\u0629\u060c \u0627\u0643\u062a\u0628 \u0646\u0635\u0627\u064b \u0623\u0648\u0644\u0627\u064b"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 798
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 799
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 800
    const/16 v2, 0x10

    invoke-static {v9, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v9, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 801
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 802
    return-void

    .line 1390
    :catchall_9
    move-exception v0

    .line 1391
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1393
    :goto_f
    return-void
.end method

.method public static cleanTatweel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 126
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 127
    :cond_0
    const/16 v1, 0x640

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 128
    const-string v1, "\u200a"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 129
    const-string v1, "\u2009"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 130
    const-string v1, "\u2006"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 127
    return-object p0
.end method

.method public static containsArabic(Ljava/lang/String;)Z
    .locals 4

    .line 92
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 93
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 95
    const/16 v3, 0x600

    if-lt v2, v3, :cond_1

    const/16 v3, 0x6ff

    if-le v2, v3, :cond_3

    :cond_1
    const/16 v3, 0x750

    if-lt v2, v3, :cond_2

    const/16 v3, 0x77f

    if-le v2, v3, :cond_3

    :cond_2
    const/16 v3, 0x8a0

    if-lt v2, v3, :cond_4

    const/16 v3, 0x8ff

    if-gt v2, v3, :cond_4

    .line 96
    :cond_3
    const/4 p0, 0x1

    return p0

    .line 93
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_5
    return v0
.end method

.method private static createButton(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/widget/TextView;
    .locals 1

    .line 746
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 747
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 749
    const/4 p1, 0x2

    const/high16 p3, 0x41400000    # 12.0f

    invoke-virtual {v0, p1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 750
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 751
    const/high16 p1, 0x40c00000    # 6.0f

    invoke-static {p2, p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->makeBg(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 752
    invoke-static {p0, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p0, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p0, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 753
    return-object v0
.end method

.method public static dp(Landroid/content/Context;I)I
    .locals 1

    .line 76
    if-nez p0, :cond_0

    return p1

    .line 77
    :cond_0
    int-to-float p1, p1

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 77
    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static extractWords(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 499
    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->cleanTatweel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    const-string v1, "\\s+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 502
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 503
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 504
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 505
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    :cond_1
    return-object v0
.end method

.method public static fillWidth(Ljava/lang/String;Landroid/text/TextPaint;F)Ljava/lang/String;
    .locals 18

    .line 438
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_8

    .line 439
    :cond_0
    const-string v2, "\n"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static/range {p1 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->measureTatweelWidth(Landroid/text/TextPaint;)F

    move-result v3

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    const/4 v6, 0x0

    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_c

    .line 445
    aget-object v7, v0, v6

    .line 446
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    .line 447
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    array-length v7, v0

    sub-int/2addr v7, v9

    if-ge v6, v7, :cond_b

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 452
    :cond_1
    invoke-static {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->cleanTatweel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 453
    const/high16 v10, 0x41a00000    # 20.0f

    if-eqz v1, :cond_2

    invoke-virtual {v1, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v10

    .line 454
    :goto_1
    sub-float v11, p2, v11

    .line 456
    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v12, v12, v3

    cmpg-float v12, v11, v12

    if-gtz v12, :cond_3

    .line 457
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    array-length v7, v0

    sub-int/2addr v7, v9

    if-ge v6, v7, :cond_b

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 462
    :cond_3
    div-float/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    const/16 v12, 0x190

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 463
    invoke-static {v8, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->stretchLineWords(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 464
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 465
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    array-length v7, v0

    sub-int/2addr v7, v9

    if-ge v6, v7, :cond_b

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 469
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    goto :goto_2

    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v10

    .line 471
    :goto_2
    const/4 v14, 0x0

    .line 472
    :goto_3
    const v15, 0x3f19999a    # 0.6f

    mul-float v15, v15, v3

    sub-float v15, p2, v15

    cmpg-float v15, v7, v15

    if-gez v15, :cond_8

    if-ge v11, v12, :cond_8

    const/16 v15, 0x30

    if-ge v14, v15, :cond_8

    .line 473
    add-int/lit8 v15, v11, 0x1

    .line 474
    invoke-static {v8, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->stretchLineWords(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 475
    if-eqz v1, :cond_6

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v16

    move/from16 v12, v16

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v10

    .line 476
    :goto_4
    cmpl-float v17, v12, p2

    if-lez v17, :cond_7

    goto :goto_5

    .line 477
    :cond_7
    nop

    .line 478
    nop

    .line 479
    nop

    .line 480
    add-int/lit8 v14, v14, 0x1

    .line 481
    move-object v13, v5

    move v7, v12

    move v11, v15

    const/16 v12, 0x190

    goto :goto_3

    .line 482
    :cond_8
    :goto_5
    cmpl-float v5, v7, p2

    if-lez v5, :cond_a

    if-le v11, v9, :cond_a

    const/16 v5, 0x60

    if-ge v14, v5, :cond_a

    .line 483
    add-int/lit8 v11, v11, -0x1

    .line 484
    invoke-static {v8, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->stretchLineWords(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 485
    if-eqz v1, :cond_9

    invoke-virtual {v1, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    goto :goto_6

    :cond_9
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v10

    :goto_6
    move v7, v5

    .line 486
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 489
    :cond_a
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    array-length v5, v0

    sub-int/2addr v5, v9

    if-ge v6, v5, :cond_b

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_b
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 492
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 438
    :cond_d
    :goto_8
    return-object v0
.end method

.method public static findInsertionPoints(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;",
            ">;"
        }
    .end annotation

    .line 173
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_5

    .line 175
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 179
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 180
    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->isHaraka(C)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->isRightConnecting(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 181
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, v1, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 187
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->isSacred(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 190
    :cond_4
    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->SPECIAL_MAQSURA:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v1, :cond_5

    .line 191
    new-instance p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;-><init>(II)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 194
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 197
    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_f

    .line 198
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 199
    add-int/lit8 v7, v5, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 200
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 201
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 203
    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->isDualJoining(C)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-static {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->isRightConnecting(C)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_4

    .line 206
    :cond_6
    const/16 v10, 0x644

    if-ne v6, v10, :cond_7

    invoke-static {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->isAlefVariant(C)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_4

    .line 209
    :cond_7
    add-int/lit8 v10, v2, -0x2

    if-ne v5, v10, :cond_8

    const/4 v10, 0x1

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    .line 210
    :goto_2
    const-string v11, "\u064a\u0649\u06cc\u0626"

    const/4 v12, -0x1

    if-eqz v10, :cond_9

    invoke-virtual {v11, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v12, :cond_9

    const-string v13, "\u0628\u0631\u0645\u0646\u062e"

    invoke-virtual {v13, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v12, :cond_9

    .line 211
    goto :goto_4

    .line 215
    :cond_9
    const-string v13, "\u0633\u0634\u0635\u0636\u0637\u0638\u0639\u063a\u0641\u0642\u0643\u0628\u062a\u062d\u062b\u0645\u0647\u064a"

    invoke-virtual {v13, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v12, :cond_a

    const/16 v6, 0xc

    goto :goto_3

    :cond_a
    const/4 v6, 0x6

    .line 216
    :goto_3
    if-eqz v10, :cond_b

    const-string v13, "\u0629\u0647"

    invoke-virtual {v13, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v12, :cond_b

    add-int/lit8 v6, v6, 0x6

    .line 217
    :cond_b
    div-int/lit8 v13, v2, 0x2

    if-lt v5, v13, :cond_c

    add-int/lit8 v6, v6, 0x4

    .line 218
    :cond_c
    if-eqz v10, :cond_d

    invoke-virtual {v11, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v12, :cond_d

    add-int/lit8 v6, v6, -0x2

    .line 220
    :cond_d
    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;

    invoke-direct {v5, v8, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;-><init>(II)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_e
    :goto_4
    move v5, v7

    goto/16 :goto_1

    .line 223
    :cond_f
    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->sortCandidatesByScore(Ljava/util/List;)V

    .line 224
    return-object v1

    .line 173
    :cond_10
    :goto_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static findTextComponent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 695
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 698
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getSelectedText"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 699
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 700
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    if-eqz v3, :cond_1

    return-object v3

    .line 732
    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 702
    :catch_0
    move-exception v3

    :cond_1
    nop

    .line 704
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "callback"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 705
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 706
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    if-nez v3, :cond_2

    .line 709
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getActivity"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 710
    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 711
    :goto_0
    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    .line 713
    :cond_2
    :goto_1
    if-eqz v3, :cond_5

    .line 714
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v4, "textContain"

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 715
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 716
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 717
    if-eqz p0, :cond_5

    .line 718
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getCurrentText"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 719
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 720
    if-eqz v2, :cond_3

    return-object v2

    .line 722
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "texts"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 723
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 724
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 725
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 726
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 727
    if-eqz v1, :cond_4

    return-object v1

    .line 728
    :cond_4
    goto :goto_2

    .line 734
    :cond_5
    goto :goto_4

    .line 733
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 735
    :goto_4
    return-object v0
.end method

.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    .line 82
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 83
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 84
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 85
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 86
    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    .line 88
    :cond_2
    return-object v0
.end method

.method public static handleSwitchClick(Landroid/content/Context;Landroid/widget/EditText;)Z
    .locals 2

    .line 611
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 612
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 613
    :goto_0
    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->containsArabic(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 614
    invoke-static {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->showKashidaDialog(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 615
    const/4 p0, 0x1

    return p0

    .line 617
    :cond_2
    return v0
.end method

.method public static isAlefVariant(C)Z
    .locals 1

    .line 115
    const-string v0, "\u0627\u0623\u0625\u0622\u0671"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDualJoining(C)Z
    .locals 1

    .line 107
    const-string v0, "\u0628\u062a\u062b\u062c\u062d\u062e\u0633\u0634\u0635\u0636\u0637\u0638\u0639\u063a\u0641\u0642\u0643\u0644\u0645\u0646\u0647\u064a\u0626\u067e\u0686\u06af\u06a9\u06cc\u06a4\u0679"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHaraka(C)Z
    .locals 1

    .line 103
    const/16 v0, 0x64b

    if-lt p0, v0, :cond_0

    const/16 v0, 0x65f

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x670

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRightConnecting(C)Z
    .locals 2

    .line 111
    const-string v0, "\u0628\u062a\u062b\u062c\u062d\u062e\u0633\u0634\u0635\u0636\u0637\u0638\u0639\u063a\u0641\u0642\u0643\u0644\u0645\u0646\u0647\u064a\u0626\u067e\u0686\u06af\u06a9\u06cc\u06a4\u0679"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "\u0627\u062f\u0630\u0631\u0632\u0648\u0624\u0625\u0623\u0622\u0671\u0629\u0649\u0698"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSacred(Ljava/lang/String;)Z
    .locals 4

    .line 119
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 120
    :cond_0
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->SACRED_WORDS:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 121
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_3

    const-string v1, "\u0627\u0644\u0644\u0647"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u0644\u0644\u0647"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v2

    .line 122
    :cond_3
    return v0
.end method

.method public static justifyLines(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 543
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->justifyLines(Ljava/lang/String;Landroid/text/TextPaint;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static justifyLines(Ljava/lang/String;Landroid/text/TextPaint;Ljava/lang/Float;)Ljava/lang/String;
    .locals 22

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    .line 352
    :cond_0
    const/4 v2, -0x1

    const-string v3, "\n"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 353
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 354
    const/4 v6, 0x0

    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_2

    .line 355
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 356
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 359
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_3

    return-object v0

    .line 361
    :cond_3
    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    .line 362
    array-length v6, v2

    new-array v6, v6, [F

    .line 363
    nop

    .line 365
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/high16 v11, 0x41a00000    # 20.0f

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 366
    aget-object v12, v2, v10

    invoke-static {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->cleanTatweel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v10

    .line 367
    if-eqz v1, :cond_4

    .line 368
    aget-object v11, v2, v10

    invoke-virtual {v1, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    aput v11, v6, v10

    goto :goto_2

    .line 370
    :cond_4
    aget-object v12, v2, v10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v11

    aput v12, v6, v10

    .line 372
    :goto_2
    aget v10, v6, v10

    cmpl-float v11, v10, v9

    if-lez v11, :cond_5

    .line 373
    move v9, v10

    .line 375
    :cond_5
    goto :goto_1

    .line 377
    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v9

    if-lez v8, :cond_7

    .line 378
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 381
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->measureTatweelWidth(Landroid/text/TextPaint;)F

    move-result v8

    .line 382
    array-length v10, v2

    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 384
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 385
    aget-object v13, v2, v12

    .line 386
    aget v14, v6, v12

    .line 388
    sub-float v14, v9, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3ee66666    # 0.45f

    mul-float v15, v15, v8

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_8

    .line 389
    aput-object v13, v10, v12

    .line 390
    goto :goto_3

    .line 393
    :cond_8
    aget-object v14, v0, v12

    .line 394
    if-eqz v1, :cond_9

    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v16

    move/from16 v5, v16

    goto :goto_4

    :cond_9
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v11

    .line 395
    :goto_4
    sub-float v5, v9, v5

    .line 397
    cmpg-float v15, v5, v15

    if-gtz v15, :cond_a

    .line 398
    aput-object v13, v10, v12

    .line 399
    goto :goto_3

    .line 402
    :cond_a
    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/16 v15, 0x190

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 403
    invoke-static {v14, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->stretchLineWords(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 404
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 405
    aput-object v13, v10, v12

    .line 406
    const/4 v7, 0x1

    goto :goto_3

    .line 408
    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v13

    goto :goto_5

    :cond_c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v11

    .line 409
    :goto_5
    sub-float/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 411
    int-to-float v11, v5

    const/high16 v17, 0x3e800000    # 0.25f

    mul-float v11, v11, v17

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    const/16 v15, 0x18

    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v15, 0x6

    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 412
    neg-int v15, v11

    :goto_6
    if-gt v15, v11, :cond_f

    .line 413
    move-object/from16 v17, v0

    add-int v0, v5, v15

    move-object/from16 v18, v2

    const/16 v2, 0x190

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 414
    invoke-static {v14, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->stretchLineWords(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 415
    if-eqz v1, :cond_d

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v19, 0x41a00000    # 20.0f

    goto :goto_7

    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    int-to-float v2, v2

    const/high16 v19, 0x41a00000    # 20.0f

    mul-float v2, v2, v19

    .line 416
    :goto_7
    sub-float v20, v2, v9

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 417
    const v21, 0x3f266666    # 0.65f

    mul-float v21, v21, v8

    add-float v21, v9, v21

    cmpg-float v2, v2, v21

    if-gtz v2, :cond_e

    cmpg-float v2, v20, v13

    if-gez v2, :cond_e

    .line 418
    nop

    .line 419
    move-object v7, v0

    move/from16 v13, v20

    .line 412
    :cond_e
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto :goto_6

    .line 422
    :cond_f
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    const/high16 v19, 0x41a00000    # 20.0f

    aput-object v7, v10, v12

    .line 423
    const/4 v7, 0x1

    const/high16 v11, 0x41a00000    # 20.0f

    goto/16 :goto_3

    .line 425
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    const/4 v5, 0x0

    :goto_8
    array-length v1, v10

    if-ge v5, v1, :cond_12

    .line 427
    aget-object v1, v10, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    array-length v1, v10

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v5, v1, :cond_11

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 430
    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 351
    :cond_13
    :goto_9
    return-object v0
.end method

.method private static makeBg(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 739
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 740
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 741
    float-to-int p0, p1

    invoke-static {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 742
    return-object v0
.end method

.method public static measureTatweelWidth(Landroid/text/TextPaint;)F
    .locals 3

    .line 331
    if-nez p0, :cond_0

    const/high16 p0, 0x41700000    # 15.0f

    return p0

    .line 332
    :cond_0
    const-string v0, "\u0628\u0628"

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 333
    const-string v1, "\u0628\u0640\u0628"

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 334
    sub-float/2addr v1, v0

    .line 335
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    .line 336
    return v1

    .line 338
    :cond_1
    const/16 v1, 0x640

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 339
    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 340
    return v1

    .line 342
    :cond_2
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSize()F

    move-result p0

    const v0, 0x3eb33333    # 0.35f

    mul-float p0, p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static showKashidaDialog(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 4

    .line 551
    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_2

    .line 552
    :cond_0
    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 554
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 556
    :goto_0
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "\u2728 \u062a\u0633\u0648\u064a\u0629 \u0648\u062a\u0646\u0633\u064a\u0642 \u0627\u0644\u0623\u0633\u0637\u0631 (Madd Engine Pro)"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u0640 \u0645\u062f \u062e\u0641\u064a\u0641 (\u0640)"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u0640\u0640 \u0645\u062f \u0645\u062a\u0648\u0633\u0637 (\u0640\u0640)"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\u0640\u0640\u0640 \u0645\u062f \u0639\u0631\u064a\u0636 (\u0640\u0640\u0640)"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\u274c \u0625\u0632\u0627\u0644\u0629 \u062c\u0645\u064a\u0639 \u0627\u0644\u0645\u062f\u0648\u062f"

    aput-object v3, v1, v2

    .line 565
    :try_start_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 566
    const-string v3, "\u062e\u064a\u0627\u0631\u0627\u062a \u0645\u062f \u0648\u062a\u0633\u0648\u064a\u0647 \u0627\u0644\u0623\u0633\u0637\u0631"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 567
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;

    invoke-direct {v3, p1, v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;-><init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 600
    const-string p0, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v1, 0x0

    invoke-virtual {v2, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 601
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 602
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    goto :goto_1

    .line 603
    :catchall_0
    move-exception p0

    .line 604
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 605
    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->justifyLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 606
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 608
    :goto_1
    return-void

    .line 551
    :cond_3
    :goto_2
    return-void
.end method

.method public static sortCandidatesByScore(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;",
            ">;)V"
        }
    .end annotation

    .line 144
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_2

    .line 145
    :cond_0
    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 146
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;

    .line 147
    add-int/lit8 v2, v1, -0x1

    .line 148
    :goto_1
    if-ltz v2, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;->score:I

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;->score:I

    if-ge v3, v4, :cond_1

    .line 149
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;

    invoke-interface {p0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 150
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 152
    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_2
    return-void

    .line 144
    :cond_3
    :goto_2
    return-void
.end method

.method public static sortSlotsByIndexDescending(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)V"
        }
    .end annotation

    .line 157
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_2

    .line 158
    :cond_0
    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 159
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 160
    add-int/lit8 v2, v1, -0x1

    .line 161
    :goto_1
    if-ltz v2, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x0

    aget v3, v3, v4

    aget v4, v0, v4

    if-ge v3, v4, :cond_1

    .line 162
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-interface {p0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 163
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 165
    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_2
    return-void

    .line 157
    :cond_3
    :goto_2
    return-void
.end method

.method public static stretchLineWords(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .line 274
    if-lez p1, :cond_7

    if-nez p0, :cond_0

    goto/16 :goto_4

    .line 275
    :cond_0
    const-string v0, "(?<=\\s)|(?=\\s)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 278
    aget-object v4, v0, v3

    .line 279
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->findInsertionPoints(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 280
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    return-object p0

    .line 285
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    .line 286
    div-int v3, p1, p0

    .line 287
    rem-int/2addr p1, p0

    .line 289
    const/4 v4, 0x0

    :goto_1
    if-ge v4, p0, :cond_5

    .line 290
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 291
    if-ge v4, p1, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    add-int/2addr v6, v3

    .line 292
    aget-object v7, v0, v5

    invoke-static {v7, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->stretchWord(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 289
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 295
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    array-length p1, v0

    :goto_3
    if-ge v2, p1, :cond_6

    aget-object v1, v0, v2

    .line 297
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 299
    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 274
    :cond_7
    :goto_4
    return-object p0
.end method

.method public static stretchWord(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .line 231
    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->cleanTatweel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 232
    if-gtz p1, :cond_0

    return-object p0

    .line 233
    :cond_0
    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->findInsertionPoints(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 236
    :cond_1
    nop

    .line 237
    const/16 v1, 0xf

    const/4 v2, 0x1

    if-lt p1, v1, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 238
    :cond_2
    const/16 v1, 0xb

    if-lt p1, v1, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    .line 239
    :cond_3
    const/4 v1, 0x7

    if-lt p1, v1, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    .line 241
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 242
    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 244
    new-array v4, v1, [I

    .line 245
    div-int v5, p1, v1

    .line 246
    rem-int/2addr p1, v1

    .line 247
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_6

    .line 248
    if-ge v6, p1, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    add-int/2addr v7, v5

    aput v7, v4, v6

    .line 247
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 251
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_7

    .line 253
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;

    iget v6, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$Candidate;->insertBeforeIndex:I

    aget v7, v4, v5

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 255
    :cond_7
    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->sortSlotsByIndexDescending(Ljava/util/List;)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 259
    aget v1, p1, v3

    .line 260
    aget p1, p1, v2

    .line 261
    if-lez p1, :cond_8

    .line 262
    new-array p1, p1, [C

    .line 263
    const/16 v4, 0x640

    invoke-static {p1, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 264
    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 266
    :cond_8
    goto :goto_4

    .line 267
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
