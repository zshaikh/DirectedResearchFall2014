.class public Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseShutdownFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "InAppPurchaseShutdownFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseShutdownFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseShutdownFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 19
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    if-eqz v0, :cond_0

    .line 20
    check-cast p1, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    invoke-virtual {p1}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->performShutdown()V

    .line 25
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 22
    .restart local p1    # "context":Lcom/adobe/fre/FREContext;
    :cond_0
    sget-object v0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseShutdownFunction;->TAG:Ljava/lang/String;

    const-string v1, "Unable to retrieve context no in-app billing operations are possible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
