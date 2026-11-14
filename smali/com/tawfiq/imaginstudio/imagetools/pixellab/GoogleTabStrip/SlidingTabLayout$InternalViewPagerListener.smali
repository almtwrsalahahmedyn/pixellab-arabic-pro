.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v1, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;II)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;II)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method
