.class public final Lcom/arasthel/asyncjob/AsyncJob$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$onMainThreadJob:Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;


# direct methods
.method public constructor <init>(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arasthel/asyncjob/AsyncJob$1;->val$onMainThreadJob:Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob$1;->val$onMainThreadJob:Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;

    invoke-interface {v0}, Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;->doInUIThread()V

    return-void
.end method
