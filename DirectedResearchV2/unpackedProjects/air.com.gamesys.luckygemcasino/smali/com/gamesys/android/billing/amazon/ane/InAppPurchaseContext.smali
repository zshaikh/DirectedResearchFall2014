.class public Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
.super Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
.source "InAppPurchaseContext.java"


# static fields
.field public static final INTENT_KEY_OFFSET:Ljava/lang/String; = "com.gamesys.android.billing.amazon.ane.offset"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentAmazonUser:Ljava/lang/String;

.field private inAppPurchaseObserver:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

.field private isSDKTesterInstalled:Z

.field private isSandboxMode:Z

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "extensionIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object v0, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->inAppPurchaseObserver:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    .line 39
    iput-object v0, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->currentAmazonUser:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->lock:Ljava/lang/Object;

    .line 45
    iput-boolean v1, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->isSandboxMode:Z

    .line 48
    iput-boolean v1, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->isSDKTesterInstalled:Z

    .line 27
    return-void
.end method

.method private isSdkRequired()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispose()V

    .line 56
    sget-object v0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->TAG:Ljava/lang/String;

    const-string v1, "dispose"

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected enqueueConsumeItem(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->CONSUME_ITEM:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {p0, p1, v0}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->enqueueAction(Ljava/util/Map;Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;)V

    .line 189
    return-void
.end method

.method protected executeActionBuyItem(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->isSdkRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const-string v2, "com.gamesys.android.billing.common.ane.CODE_ERROR_NO_TESTER_SDK_FOUND"

    const-string v3, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {p0, v2, v3}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 106
    const-string v2, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_IN_PROGRESS"

    const-string v3, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {p0, v2, v3}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    if-eqz p1, :cond_1

    .line 112
    const-string v2, "INTENT_KEY_PRODUCT_ID"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "sku":Ljava/lang/String;
    invoke-static {v1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "requestId":Ljava/lang/String;
    const-string v2, "IAP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v0    # "requestId":Ljava/lang/String;
    .end local v1    # "sku":Ljava/lang/String;
    :cond_1
    const-string v2, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR"

    const-string v3, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {p0, v2, v3}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected executeActionConsume(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 167
    if-eqz p1, :cond_0

    .line 168
    const-string v1, "com.gamesys.android.billing.amazon.ane.offset"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    .local v0, "of":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazon/inapp/purchasing/Offset;->fromString(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Offset;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;)Ljava/lang/String;

    .line 173
    .end local v0    # "of":Ljava/lang/String;
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v1, "com.gamesys.android.billing.common.ane.CODE_CONSUME_ERROR"

    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_CONSUME_ITEM"

    invoke-virtual {p0, v1, v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected executeActionQueryPurchases()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method protected executeActionQueryStore(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->isSdkRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "com.gamesys.android.billing.common.ane.CODE_ERROR_NO_TESTER_SDK_FOUND"

    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE"

    invoke-virtual {p0, v1, v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 143
    const-string v1, "com.gamesys.android.billing.common.ane.CODE_QUERY_ITEM_STORE_IN_PROGESS"

    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE"

    invoke-virtual {p0, v1, v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "skuForDetails":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 147
    const-string v1, "com.gamesys.android.billing.common.ane.SKU_LIST"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "skuForDetails":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    check-cast v0, Ljava/util/Set;

    .line 150
    .restart local v0    # "skuForDetails":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->inAppPurchaseObserver:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->inAppPurchaseObserver:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    invoke-static {v1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->registerObserver(Lcom/amazon/inapp/purchasing/PurchasingObserver;)V

    .line 152
    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateItemDataRequest(Ljava/util/Set;)Ljava/lang/String;

    goto :goto_0

    .line 154
    :cond_2
    const-string v1, "com.gamesys.android.billing.common.ane.CODE_QUERY_ITEM_STORE_ERROR_WRONG_ARG_COUNT"

    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE"

    invoke-virtual {p0, v1, v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->notifyActionDone()V

    goto :goto_0
.end method

.method protected executeActionSetup(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 198
    if-eqz p1, :cond_0

    const-string v1, "com.gamesys.android.billing.google.ane.PARAMS_KEY_ACTION_SETUP_MINIMAL"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "com.gamesys.android.billing.google.ane.PARAMS_KEY_ACTION_SETUP_MINIMAL"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 201
    .local v0, "minimalSetup":Z
    :cond_0
    iget-object v2, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->inAppPurchaseObserver:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    if-nez v1, :cond_1

    .line 203
    new-instance v1, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    invoke-virtual {p0}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;-><init>(Landroid/app/Activity;Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;)V

    iput-object v1, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->inAppPurchaseObserver:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    .line 204
    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->inAppPurchaseObserver:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    invoke-static {v1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->registerObserver(Lcom/amazon/inapp/purchasing/PurchasingObserver;)V

    .line 201
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 210
    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->notifyActionDone()V

    .line 216
    :goto_0
    return-void

    .line 201
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 214
    :cond_2
    invoke-super {p0, p1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionSetup(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected executeActionShutdown()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "com.gamesys.android.billing.common.ane.CODE_SHUTDOWN_IN_PROGRESS"

    const-string v1, "com.gamesys.android.billing.common.ane.LEVEL_SETUP"

    invoke-virtual {p0, v0, v1}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->setCurrentAmazonUser(Ljava/lang/String;)V

    .line 128
    const-string v0, "com.gamesys.android.billing.common.ane.CODE_SHUTDOWN_SUCCESS"

    const-string v1, "com.gamesys.android.billing.common.ane.LEVEL_SETUP"

    invoke-virtual {p0, v0, v1}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public getCurrentAmazonUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->currentAmazonUser:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctionsExposed()Ljava/util/Map;
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
    .line 70
    sget-object v1, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->TAG:Ljava/lang/String;

    const-string v2, "getFunctions"

    invoke-static {v1, v2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "bi.shutdown"

    new-instance v2, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseShutdownFunction;

    invoke-direct {v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseShutdownFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentAmazonUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->currentAmazonUser:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setSandboxMode(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->isSandboxMode:Z

    .line 84
    invoke-virtual {p0}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.amazon.testclient"

    invoke-static {v0, v1}, Lcom/gamesys/android/common/tools/ToolsBox;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->isSDKTesterInstalled:Z

    .line 85
    return-void
.end method
