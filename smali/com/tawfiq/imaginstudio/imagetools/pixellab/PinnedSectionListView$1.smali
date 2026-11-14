.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_5

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p4

    invoke-static {p1, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {p4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result p4

    if-ne p1, p4, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {p1, p2, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result p1

    const/4 p4, -0x1

    if-le p1, p4, :cond_4

    iget-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {p4, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->destroyPinnedShadow()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
