.class public Lcom/bitrhymes/iab/InAppContext;
.super Lcom/adobe/fre/FREContext;
.source "InAppContext.java"


# static fields
.field static appsContext:Lcom/adobe/fre/FREContext;


# instance fields
.field public activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method public static getFreContext()Lcom/adobe/fre/FREContext;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/bitrhymes/iab/InAppContext;->appsContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/bitrhymes/iab/InAppContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 30
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v0, "TapjoyContext"

    const-string v1, "appsContext is null. So, we cannot communicate back to the flash project."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFREContext(Lcom/adobe/fre/FREContext;)V
    .locals 0
    .parameter "appsContext1"

    .prologue
    .line 35
    sput-object p0, Lcom/bitrhymes/iab/InAppContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 36
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bitrhymes/iab/InAppContext;->activity:Landroid/app/Activity;

    .line 41
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    sput-object p0, Lcom/bitrhymes/iab/InAppContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v0, functionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "getVersion"

    new-instance v2, Lcom/bitrhymes/iab/functions/GetVersion;

    invoke-direct {v2}, Lcom/bitrhymes/iab/functions/GetVersion;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "muted"

    new-instance v2, Lcom/bitrhymes/iab/functions/IsSupported;

    invoke-direct {v2}, Lcom/bitrhymes/iab/functions/IsSupported;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "getProducts"

    new-instance v2, Lcom/bitrhymes/iab/functions/GetPurchaseInfo;

    invoke-direct {v2}, Lcom/bitrhymes/iab/functions/GetPurchaseInfo;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "startPayment"

    new-instance v2, Lcom/bitrhymes/iab/functions/PurchaseItem;

    invoke-direct {v2}, Lcom/bitrhymes/iab/functions/PurchaseItem;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "finish"

    new-instance v2, Lcom/bitrhymes/iab/functions/ConfirmItemPurchase;

    invoke-direct {v2}, Lcom/bitrhymes/iab/functions/ConfirmItemPurchase;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "restore"

    new-instance v2, Lcom/bitrhymes/iab/functions/GetPurchaseInfo;

    invoke-direct {v2}, Lcom/bitrhymes/iab/functions/GetPurchaseInfo;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "trans"

    new-instance v2, Lcom/bitrhymes/iab/functions/Trasaction;

    invoke-direct {v2}, Lcom/bitrhymes/iab/functions/Trasaction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "navigateToAddAccountPage"

    new-instance v2, Lcom/bitrhymes/iab/functions/NavigateToAddAccountPage;

    invoke-direct {v2}, Lcom/bitrhymes/iab/functions/NavigateToAddAccountPage;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method
