.class public Lcom/stuv/ane/pocketchange/extensions/ExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "ExtensionContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 22
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
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "initialise"

    new-instance v2, Lcom/stuv/ane/pocketchange/extensions/InitialiseFunction;

    invoke-direct {v2}, Lcom/stuv/ane/pocketchange/extensions/InitialiseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "openShop"

    new-instance v2, Lcom/stuv/ane/pocketchange/extensions/OpenShopFunction;

    invoke-direct {v2}, Lcom/stuv/ane/pocketchange/extensions/OpenShopFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "getQuantityPurchasedForProduct"

    new-instance v2, Lcom/stuv/ane/pocketchange/extensions/GetSkuQuantityFunction;

    invoke-direct {v2}, Lcom/stuv/ane/pocketchange/extensions/GetSkuQuantityFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "getPendingNotificationIntent"

    new-instance v2, Lcom/stuv/ane/pocketchange/extensions/GetPendingNotificationIntentFunction;

    invoke-direct {v2}, Lcom/stuv/ane/pocketchange/extensions/GetPendingNotificationIntentFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-object v0
.end method

.method public initialise()V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/stuv/ane/pocketchange/extensions/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/stuv/ane/pocketchange/extensions/PocketChangeWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 42
    return-void
.end method