.class public final synthetic Lcom/TG/tg$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۟۟ۢۥۢ()V
    .locals 2

    invoke-static {}, Lcom/TG/ۥۧۢۥ;->۟ۢۥۦۦ()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/TG/tg;->lambda$TG$1()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 51

    move-object/from16 v0, p0

    invoke-static {}, Lcom/TG/tg$$ExternalSyntheticLambda1;->۟۟ۢۥۢ()V

    return-void
.end method
