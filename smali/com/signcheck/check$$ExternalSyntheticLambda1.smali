.class public final synthetic Lcom/signcheck/check$$ExternalSyntheticLambda1;
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

.method public static ۣۨۧ()V
    .locals 2

    invoke-static {}, Lcom/signcheck/ۢۢ;->۟ۧۧۧ۟()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/signcheck/check;->lambda$SignCheck$1()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 51

    move-object/from16 v0, p0

    invoke-static {}, Lcom/signcheck/check$$ExternalSyntheticLambda1;->ۣۨۧ()V

    return-void
.end method
