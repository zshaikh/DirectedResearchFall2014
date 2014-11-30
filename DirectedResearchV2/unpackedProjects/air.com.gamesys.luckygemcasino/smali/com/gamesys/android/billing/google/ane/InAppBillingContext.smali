.class public Lcom/gamesys/android/billing/google/ane/InAppBillingContext;
.super Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
.source "InAppBillingContext.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHelper:Lcom/gamesys/android/billing/google/util/IabHelper;

.field private mInventory:Lcom/gamesys/android/billing/google/util/Inventory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "extensionId"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;-><init>(Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;

    .line 57
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->updateConsumeInfoAndConsume(Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;)Lcom/gamesys/android/billing/google/util/Inventory;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionSetup(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$4(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Lcom/gamesys/android/billing/google/util/Inventory;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;

    return-void
.end method

.method public static getMetadataBase64ApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    const-string v0, "com.gamesys.android.billing.google.ane.APP_ID_BASE_64"

    invoke-static {p0, v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateConsumeInfoAndConsume(Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "purchase"    # Lcom/gamesys/android/billing/google/util/Purchase;
    .param p2, "pId"    # Ljava/lang/String;
    .param p3, "addBuyItem"    # Z

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/gamesys/android/billing/google/util/Inventory;

    invoke-direct {v0}, Lcom/gamesys/android/billing/google/util/Inventory;-><init>()V

    iput-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;

    .line 148
    :cond_0
    if-eqz p1, :cond_2

    .line 149
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;

    invoke-virtual {v0, p1}, Lcom/gamesys/android/billing/google/util/Inventory;->addPurchaseDetails(Lcom/gamesys/android/billing/google/util/Purchase;)V

    .line 152
    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->enqueueConsumeItem(Ljava/util/Map;)V

    .line 158
    :goto_0
    if-eqz p3, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->isBuyItemForDebug()Z

    move-result v0

    invoke-virtual {p0, p2, v1, v1, v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->enqueueBuyItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->executeNextAction()V

    .line 162
    return-void

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->enqueueQueryPruchasesFromStore()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispose()V

    .line 170
    sget-object v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;

    const-string v1, "dispose"

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mHelper:Lcom/gamesys/android/billing/google/util/IabHelper;

    .line 172
    return-void
.end method

.method public enableDebug(Z)Z
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enableDebug(Z)Z

    .line 244
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getHelper()Lcom/gamesys/android/billing/google/util/IabHelper;

    move-result-object v0

    invoke-static {}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->isDebugEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->enableDebugLogging(Z)V

    .line 245
    return p1
.end method

.method protected enqueueConsumeItem(Ljava/util/Map;)V
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
    .line 284
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p1

    .line 285
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 288
    .restart local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string v2, "com.gamesys.android.billing.common.ane.SKU_LIST_FOR_CONSUMPTION"

    iget-object v1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/util/Inventory;->getAllOwnedItems()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->CONSUME_ITEM:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {p0, v0, v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->enqueueAction(Ljava/util/Map;Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;)V

    .line 290
    return-void

    .line 288
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected executeActionBuyItem(Ljava/util/Map;)V
    .locals 7
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
    const/4 v6, 0x1

    .line 263
    const-string v4, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_IN_PROGRESS"

    const-string v5, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {p0, v4, v5}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v4, "INTENT_KEY_PRODUCT_ID"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 266
    .local v2, "productID":Ljava/lang/String;
    const-string v4, "INTENT_KEY_PAYLOAD"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    .local v1, "payload":Ljava/lang/String;
    const-string v4, "INTENT_KEY_THIRD_PARTY_ID"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 269
    .local v3, "thirdPartyId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/gamesys/android/billing/google/AndroidIABInterface;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .local v0, "i":Landroid/content/Intent;
    const-string v4, "INTENT_KEY_PRODUCT_ID"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v4, "INTENT_KEY_PAYLOAD"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v4, "INTENT_KEY_THIRD_PARTY_ID"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v4, "INTENT_ACTION_BUY_ITEM"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    iput-boolean v6, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->activityIsStarted:Z

    .line 276
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 277
    return-void
.end method

.method protected executeActionConsume(Ljava/util/Map;)V
    .locals 8
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
    .line 299
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;

    invoke-virtual {v4}, Lcom/gamesys/android/billing/google/util/Inventory;->getAllOwnedItems()Ljava/util/List;

    move-result-object v2

    .line 300
    .local v2, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    .line 301
    const/4 v3, 0x0

    .line 302
    .local v3, "waitForAsync":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 350
    if-nez v3, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    .line 356
    .end local v3    # "waitForAsync":Z
    :cond_1
    :goto_1
    return-void

    .line 302
    .restart local v3    # "waitForAsync":Z
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    .local v0, "pId":Ljava/lang/String;
    iget-object v5, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mNonConsumableSku:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 305
    const/4 v3, 0x1

    .line 307
    iget-object v5, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;

    invoke-virtual {v5, v0}, Lcom/gamesys/android/billing/google/util/Inventory;->getPurchaseDetails(Ljava/lang/String;)Lcom/gamesys/android/billing/google/util/Purchase;

    move-result-object v1

    .line 308
    .local v1, "purchase":Lcom/gamesys/android/billing/google/util/Purchase;
    if-eqz v1, :cond_3

    const-string v5, "inapp"

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/util/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 309
    sget-object v5, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "This item in not consumable : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getHelper()Lcom/gamesys/android/billing/google/util/IabHelper;

    move-result-object v5

    new-instance v6, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$2;

    invoke-direct {v6, p0, v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$2;-><init>(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Lcom/gamesys/android/billing/google/util/IabHelper;->consumeAsync(Lcom/gamesys/android/billing/google/util/Purchase;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0

    .line 354
    .end local v0    # "pId":Ljava/lang/String;
    .end local v1    # "purchase":Lcom/gamesys/android/billing/google/util/Purchase;
    .end local v3    # "waitForAsync":Z
    :cond_4
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    goto :goto_1
.end method

.method protected executeActionQueryPurchases()V
    .locals 3

    .prologue
    .line 454
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 455
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, " com.gamesys.android.billing.google.PARAMS_KEY_QUERY_SKU_DETAILS"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->executeActionQueryStore(Ljava/util/Map;)V

    .line 457
    return-void
.end method

.method protected executeActionQueryStore(Ljava/util/Map;)V
    .locals 6
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
    .line 469
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, " com.gamesys.android.billing.google.PARAMS_KEY_QUERY_SKU_DETAILS"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, " com.gamesys.android.billing.google.PARAMS_KEY_QUERY_SKU_DETAILS"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 470
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 473
    .local v2, "querySkusDetail":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 474
    const-string v4, "com.gamesys.android.billing.common.ane.CODE_QUERY_ITEM_STORE_IN_PROGESS"

    const-string v5, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE"

    invoke-virtual {p0, v4, v5}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getHelper()Lcom/gamesys/android/billing/google/util/IabHelper;

    move-result-object v1

    .line 480
    .local v1, "helper":Lcom/gamesys/android/billing/google/util/IabHelper;
    const-string v4, "com.gamesys.android.billing.common.ane.SKU_LIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 482
    .local v3, "skus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 484
    sget-object v4, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;

    const-string v5, "Starting querying Google Play."

    invoke-static {v4, v5}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :try_start_0
    new-instance v4, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;

    invoke-direct {v4, p0, v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$4;-><init>(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Z)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/gamesys/android/billing/google/util/IabHelper;->queryInventoryAsync(ZLjava/util/Set;Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_1
    return-void

    .line 470
    .end local v1    # "helper":Lcom/gamesys/android/billing/google/util/IabHelper;
    .end local v2    # "querySkusDetail":Z
    .end local v3    # "skus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 559
    .restart local v1    # "helper":Lcom/gamesys/android/billing/google/util/IabHelper;
    .restart local v2    # "querySkusDetail":Z
    .restart local v3    # "skus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;

    const-string v5, "Attempt to retrieve item list from Google Play but the context is not initialized yet"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v4, "com.gamesys.android.billing.common.ane.CODE_QUERY_ITEM_STORE_ERROR"

    const-string v5, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE"

    invoke-virtual {p0, v4, v5}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    goto :goto_1

    .line 566
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    const-string v4, "com.gamesys.android.billing.common.ane.CODE_QUERY_ITEM_STORE_ERROR"

    const-string v5, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE"

    invoke-virtual {p0, v4, v5}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    goto :goto_1
.end method

.method protected executeActionSetup(Ljava/util/Map;)V
    .locals 6
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
    const/4 v3, 0x0

    .line 366
    if-eqz p1, :cond_2

    const-string v4, "com.gamesys.android.billing.google.ane.APP_ID_BASE_64"

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/String;

    .line 367
    .local v0, "appId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getHelper(Ljava/lang/String;)Lcom/gamesys/android/billing/google/util/IabHelper;

    move-result-object v2

    .line 369
    .local v2, "helper":Lcom/gamesys/android/billing/google/util/IabHelper;
    if-eqz p1, :cond_0

    const-string v4, "com.gamesys.android.billing.google.ane.PARAMS_KEY_ACTION_SETUP_MINIMAL"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 370
    const-string v4, "com.gamesys.android.billing.google.ane.PARAMS_KEY_ACTION_SETUP_MINIMAL"

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 372
    .local v3, "minimalSetup":Z
    :cond_0
    const-string v4, "com.gamesys.android.billing.common.ane.CODE_SETUP_IN_PROGESS"

    const-string v5, "com.gamesys.android.billing.common.ane.LEVEL_SETUP"

    invoke-virtual {p0, v4, v5}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    if-eqz v2, :cond_4

    .line 376
    invoke-virtual {v2}, Lcom/gamesys/android/billing/google/util/IabHelper;->isSetup()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 378
    if-nez v3, :cond_1

    .line 381
    # invokes: Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionSetup(Ljava/util/Map;)V
    invoke-static {p0, p1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$3(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Ljava/util/Map;)V

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    .line 428
    :goto_1
    return-void

    .line 366
    .end local v0    # "appId":Ljava/lang/String;
    .end local v2    # "helper":Lcom/gamesys/android/billing/google/util/IabHelper;
    .end local v3    # "minimalSetup":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 390
    .restart local v0    # "appId":Ljava/lang/String;
    .restart local v2    # "helper":Lcom/gamesys/android/billing/google/util/IabHelper;
    .restart local v3    # "minimalSetup":Z
    :cond_3
    sget-object v4, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;

    const-string v5, "Starting setup."

    invoke-static {v4, v5}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :try_start_0
    new-instance v4, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$3;

    invoke-direct {v4, p0, v3, p1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$3;-><init>(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;ZLjava/util/Map;)V

    invoke-virtual {v2, v4}, Lcom/gamesys/android/billing/google/util/IabHelper;->startSetup(Lcom/gamesys/android/billing/google/util/IabHelper$OnIabSetupFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 417
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/IllegalStateException;
    # invokes: Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionSetup(Ljava/util/Map;)V
    invoke-static {p0, p1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->access$3(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Ljava/util/Map;)V

    .line 422
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    goto :goto_1

    .line 425
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    const-string v4, "com.gamesys.android.billing.common.ane.CODE_SETUP_RESULT_ERROR"

    const-string v5, "com.gamesys.android.billing.common.ane.LEVEL_ERROR"

    invoke-virtual {p0, v4, v5}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    goto :goto_1
.end method

.method protected executeActionShutdown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 435
    const-string v1, "com.gamesys.android.billing.common.ane.CODE_SHUTDOWN_IN_PROGRESS"

    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_SETUP"

    invoke-virtual {p0, v1, v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getHelper()Lcom/gamesys/android/billing/google/util/IabHelper;

    move-result-object v0

    .line 438
    .local v0, "helper":Lcom/gamesys/android/billing/google/util/IabHelper;
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/gamesys/android/billing/google/util/IabHelper;->dispose()V

    .line 442
    :cond_0
    iput-object v3, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mInventory:Lcom/gamesys/android/billing/google/util/Inventory;

    .line 443
    iput-object v3, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mNonConsumableSku:Ljava/util/Set;

    .line 444
    const-string v1, "com.gamesys.android.billing.common.ane.CODE_SHUTDOWN_SUCCESS"

    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_SETUP"

    invoke-virtual {p0, v1, v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    .line 447
    return-void
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
    .line 185
    sget-object v1, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;

    const-string v2, "getFunctions"

    invoke-static {v1, v2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "bi.shutdown"

    new-instance v2, Lcom/gamesys/android/billing/google/ane/InAppBillingShutdownFunction;

    invoke-direct {v2}, Lcom/gamesys/android/billing/google/ane/InAppBillingShutdownFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-object v0
.end method

.method public getHelper()Lcom/gamesys/android/billing/google/util/IabHelper;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, v0, v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getHelper(Ljava/lang/String;Ljava/util/Set;)Lcom/gamesys/android/billing/google/util/IabHelper;

    move-result-object v0

    return-object v0
.end method

.method public getHelper(Ljava/lang/String;)Lcom/gamesys/android/billing/google/util/IabHelper;
    .locals 1
    .param p1, "base64EncodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getHelper(Ljava/lang/String;Ljava/util/Set;)Lcom/gamesys/android/billing/google/util/IabHelper;

    move-result-object v0

    return-object v0
.end method

.method public getHelper(Ljava/lang/String;Ljava/util/Set;)Lcom/gamesys/android/billing/google/util/IabHelper;
    .locals 3
    .param p1, "base64EncodedPublicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gamesys/android/billing/google/util/IabHelper;"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, "consumableSku":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mHelper:Lcom/gamesys/android/billing/google/util/IabHelper;

    if-nez v1, :cond_1

    .line 213
    move-object v0, p1

    .line 214
    .local v0, "key":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getMetadataBase64ApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_0
    sget-object v1, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;

    const-string v2, "Creating IAB helper."

    invoke-static {v1, v2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/gamesys/android/billing/google/util/IabHelper;

    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/gamesys/android/billing/google/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mHelper:Lcom/gamesys/android/billing/google/util/IabHelper;

    .line 221
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mNonConsumableSku:Ljava/util/Set;

    .line 222
    if-eqz p2, :cond_1

    .line 223
    iget-object v1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mNonConsumableSku:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 226
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mHelper:Lcom/gamesys/android/billing/google/util/IabHelper;

    return-object v1
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    sget-object v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public verifyPurchaseSignatureAndConsume(Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "purchase"    # Lcom/gamesys/android/billing/google/util/Purchase;
    .param p2, "thirdPartyId"    # Ljava/lang/String;
    .param p3, "pId"    # Ljava/lang/String;
    .param p4, "addBuyItem"    # Z

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getDivisionProfileId()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "dpi":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->setDivisionProfileId(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->closeAndroidInterfaceActivity()V

    .line 75
    iget-object v0, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mContentServerUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 76
    :cond_0
    const-string v0, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR_SIGNATURES"

    const-string v1, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {p0, v0, v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    .line 133
    :goto_0
    return-void

    .line 80
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/gamesys/android/billing/google/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/gamesys/android/billing/google/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 81
    :cond_2
    sget-object v0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->TAG:Ljava/lang/String;

    const-string v1, "Payload not found in the purchase, retrieving from content server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p1}, Lcom/gamesys/android/billing/google/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getPayload(Ljava/lang/String;)Lcom/gamesys/android/billing/common/fwk/BuyableItem;

    move-result-object v7

    .line 83
    .local v7, "item":Lcom/gamesys/android/billing/common/fwk/BuyableItem;
    if-nez v7, :cond_3

    .line 85
    const-string v0, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR_SIGNATURES"

    const-string v1, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {p0, v0, v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->notifyActionDone()V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, v7, Lcom/gamesys/android/billing/common/fwk/BuyableItem;->signed_item:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gamesys/android/billing/google/util/Purchase;->setDeveloperPayload(Ljava/lang/String;)V

    .line 94
    .end local v7    # "item":Lcom/gamesys/android/billing/common/fwk/BuyableItem;
    :cond_4
    const-string v0, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_RECEIPT_VERIFICATION_STARTING"

    const-string v1, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {p0, v0, v1}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_1
    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->mContentServerUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext;->isBuyItemForDebug()Z

    move-result v5

    .line 103
    new-instance v6, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;

    invoke-direct {v6, p0, p1, p3, p4}, Lcom/gamesys/android/billing/google/ane/InAppBillingContext$1;-><init>(Lcom/gamesys/android/billing/google/ane/InAppBillingContext;Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/String;Z)V

    move-object v2, p1

    move-object v4, p2

    .line 102
    invoke-static/range {v0 .. v6}, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;->verifyPurchaseSignature(Landroid/content/Context;Ljava/lang/String;Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/String;Ljava/lang/String;ZLcom/gamesys/android/billing/google/fwk/IServerAsyncCheckPurchase;)V

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_1
.end method
