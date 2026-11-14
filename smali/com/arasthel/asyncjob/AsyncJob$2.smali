.class public final Lcom/arasthel/asyncjob/AsyncJob$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$onBackgroundJob:Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;


# direct methods
.method public constructor <init>(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arasthel/asyncjob/AsyncJob$2;->val$onBackgroundJob:Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob$2;->val$onBackgroundJob:Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;

    invoke-interface {v0}, Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;->doOnBackground()V

    return-void
.end method
