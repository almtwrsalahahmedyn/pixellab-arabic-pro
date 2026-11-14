.class public final Landroidx/appcompat/graphics/drawable/DrawableContainer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/graphics/drawable/DrawableContainer;


# direct methods
.method public constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;->this$0:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;->this$0:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    invoke-virtual {v1, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->animate(Z)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
