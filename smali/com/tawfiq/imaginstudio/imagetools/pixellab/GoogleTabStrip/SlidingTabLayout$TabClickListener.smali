.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$500(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
