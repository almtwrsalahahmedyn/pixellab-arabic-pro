.class public final Landroidx/appcompat/widget/TooltipPopup;
.super Ljava/lang/Object;


# instance fields
.field public final mContentView:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mMessageView:Landroid/widget/TextView;

.field public final mTmpAnchorPos:[I

.field public final mTmpAppPos:[I

.field public final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    const v2, 0x7f0a01a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    const-string v1, "TooltipPopup"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 p1, 0x3ea

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, -0x2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p1, -0x3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const p1, 0x7f120004

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 p1, 0x18

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/TooltipPopup;->hide()V

    :cond_1
    iget-object v2, v0, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v5, p5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v5, v0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700c2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v6, :cond_2

    move/from16 v7, p2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v8

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v9

    if-lt v9, v6, :cond_3

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0700c1

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int v9, p3, v6

    sub-int v6, p3, v6

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v9

    const/4 v6, 0x0

    :goto_2
    const/16 v10, 0x31

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz p4, :cond_4

    const v11, 0x7f0700c5

    goto :goto_3

    :cond_4
    const v11, 0x7f0700c4

    :goto_3
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    instance-of v13, v12, Landroid/view/WindowManager$LayoutParams;

    if-eqz v13, :cond_5

    check-cast v12, Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v12, v8, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    :goto_4
    instance-of v13, v12, Landroid/content/ContextWrapper;

    if-eqz v13, :cond_7

    instance-of v13, v12, Landroid/app/Activity;

    if-eqz v13, :cond_6

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    goto :goto_5

    :cond_6
    check-cast v12, Landroid/content/ContextWrapper;

    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    goto :goto_4

    :cond_7
    :goto_5
    if-nez v11, :cond_8

    goto/16 :goto_8

    :cond_8
    iget-object v12, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v13, v12, Landroid/graphics/Rect;->left:I

    if-gez v13, :cond_a

    iget v13, v12, Landroid/graphics/Rect;->top:I

    if-gez v13, :cond_a

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "status_bar_height"

    const-string v15, "dimen"

    const-string v8, "android"

    invoke-virtual {v13, v14, v15, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v14, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v12, v4, v8, v14, v13}, Landroid/graphics/Rect;->set(IIII)V

    :cond_a
    iget-object v8, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v11, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v13, v0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v14, p1

    invoke-virtual {v14, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v14, v13, v4

    aget v15, v8, v4

    sub-int/2addr v14, v15

    aput v14, v13, v4

    aget v15, v13, v3

    aget v8, v8, v3

    sub-int/2addr v15, v8

    aput v15, v13, v3

    add-int/2addr v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v7

    const/4 v8, 0x2

    div-int/2addr v7, v8

    sub-int/2addr v14, v7

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v4, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    aget v3, v13, v3

    add-int/2addr v6, v3

    sub-int/2addr v6, v10

    sub-int/2addr v6, v4

    add-int/2addr v3, v9

    add-int/2addr v3, v10

    if-eqz p4, :cond_b

    if-ltz v6, :cond_c

    goto :goto_7

    :cond_b
    add-int/2addr v4, v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-gt v4, v7, :cond_d

    :cond_c
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_8

    :cond_d
    :goto_7
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_8
    const-string v3, "window"

    invoke-virtual {v5, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
