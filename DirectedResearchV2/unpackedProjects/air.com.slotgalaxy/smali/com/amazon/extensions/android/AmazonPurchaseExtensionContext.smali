.class public Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "AmazonPurchaseExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEGetCurrentUserFunction;,
        Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEInitFunction;,
        Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APELoadItemDataFunction;,
        Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEPurchaseItemFunction;,
        Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APERestoreTransactionsFunction;,
        Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEResumeFunction;,
        Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEShutdownFunction;
    }
.end annotation


# static fields
.field public static final ITEM_DATA_FAILED:Ljava/lang/String; = "azItemDataFailed"

.field public static final ITEM_DATA_LOADED:Ljava/lang/String; = "azItemDataLoaded"

.field public static final PURCHASES_UPDATED:Ljava/lang/String; = "azPurchaseUpdated"

.field public static final PURCHASES_UPDATE_FAILED:Ljava/lang/String; = "azPurchaseUpdateFailed"

.field public static final PURCHASE_ALREADY_ENTITLED:Ljava/lang/String; = "azPurchaseAlreadyEntitled"

.field public static final PURCHASE_FAILED:Ljava/lang/String; = "azPurchaseFailed"

.field public static final PURCHASE_SKU_INVALID:Ljava/lang/String; = "azPurchaseSkuInvalid"

.field public static final PURCHASE_SUCCEEDED:Ljava/lang/String; = "azPurchaseSuccess"

.field public static final SDK_AVAILABLE:Ljava/lang/String; = "azSdkAvailable"

.field private static final TAG:Ljava/lang/String; = "[AMPExtension]"


# instance fields
.field private currentUser:Ljava/lang/String;

.field public requestIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method private storeRequestId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->requestIds:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    return-void
.end method


# virtual methods
.method public appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const-string v1, ">"

    .line 315
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    const-string v0, ">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    const-string v0, ">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->shutdown()V

    .line 374
    return-void
.end method

.method public ffiInit()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->requestIds:Ljava/util/Map;

    .line 60
    new-instance v0, Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    invoke-direct {v0, p0}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;)V

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->registerObserver(Lcom/amazon/inapp/purchasing/PurchasingObserver;)V

    .line 61
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 62
    return-void
.end method

.method public ffiLoadItemData(Ljava/lang/String;)V
    .locals 3
    .param p1, "itemIds"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "arrayItemIds":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v1, "setItemIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-static {v1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateItemDataRequest(Ljava/util/Set;)Ljava/lang/String;

    .line 95
    return-void
.end method

.method public ffiPurchaseItem(Ljava/lang/String;)V
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    const-string v2, "[AMPExtension]"

    .line 80
    const-string v1, "[AMPExtension]"

    const-string v1, "do purchase item now..."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "requestId":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->storeRequestId(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "[AMPExtension]"

    const-string v1, "request was sent to purchase item."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public ffiRestoreTransactions()V
    .locals 0

    .prologue
    .line 74
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 75
    return-void
.end method

.method public ffiResume()V
    .locals 0

    .prologue
    .line 68
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 69
    return-void
.end method

.method getCurrentUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->currentUser:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 4
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
    const/4 v3, 0x0

    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 381
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "ffiInitAmazonPurchase"

    new-instance v2, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEInitFunction;

    invoke-direct {v2, p0, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEInitFunction;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEInitFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v1, "ffiPurchaseItem"

    new-instance v2, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEPurchaseItemFunction;

    invoke-direct {v2, p0, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEPurchaseItemFunction;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEPurchaseItemFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v1, "ffiLoadItemData"

    new-instance v2, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APELoadItemDataFunction;

    invoke-direct {v2, p0, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APELoadItemDataFunction;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APELoadItemDataFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v1, "ffiShutdown"

    new-instance v2, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEShutdownFunction;

    invoke-direct {v2, p0, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEShutdownFunction;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEShutdownFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v1, "ffiResume"

    new-instance v2, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEResumeFunction;

    invoke-direct {v2, p0, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEResumeFunction;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEResumeFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v1, "ffiGetCurrentUser"

    new-instance v2, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEGetCurrentUserFunction;

    invoke-direct {v2, p0, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEGetCurrentUserFunction;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APEGetCurrentUserFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v1, "ffiRestoreTransactions"

    new-instance v2, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APERestoreTransactionsFunction;

    invoke-direct {v2, p0, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APERestoreTransactionsFunction;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext$APERestoreTransactionsFunction;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    return-object v0
.end method

.method public onItemDataFailed()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "azItemDataFailed"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public onItemDataSuccess(Ljava/util/Map;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/inapp/purchasing/Item;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item;>;"
    .local p2, "unavailableSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v4, "<items>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    if-eqz p1, :cond_0

    .line 140
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 155
    :cond_0
    const-string v4, "</items>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string v4, "<unavailableSkus>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    if-eqz p2, :cond_1

    .line 161
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 167
    :cond_1
    const-string v4, "</unavailableSkus>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v4, "azItemDataLoaded"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void

    .line 140
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, "key":Ljava/lang/String;
    const-string v5, "<item>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/inapp/purchasing/Item;

    .line 144
    .local v1, "i":Lcom/amazon/inapp/purchasing/Item;
    const-string v5, "sku"

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Item;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v5, "type"

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Item;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/inapp/purchasing/Item$ItemType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v5, "price"

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Item;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v5, "iconUrl"

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Item;->getSmallIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v5, "title"

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Item;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v5, "desc"

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Item;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v5, "</item>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 161
    .end local v1    # "i":Lcom/amazon/inapp/purchasing/Item;
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 163
    .local v3, "s":Ljava/lang/String;
    const-string v5, "s"

    invoke-virtual {p0, v0, v5, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPurchaseAlreadyEntitled(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v1, p0, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->requestIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    .local v0, "itemId":Ljava/lang/String;
    const-string v1, "azPurchaseAlreadyEntitled"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public onPurchaseFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v1, p0, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->requestIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    .local v0, "itemId":Ljava/lang/String;
    const-string v1, "azPurchaseFailed"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public onPurchaseInvalidSku(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->requestIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    .local v0, "itemId":Ljava/lang/String;
    const-string v1, "azPurchaseSkuInvalid"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public onPurchaseSuccess(Lcom/amazon/inapp/purchasing/Receipt;)V
    .locals 5
    .param p1, "receipt"    # Lcom/amazon/inapp/purchasing/Receipt;

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 199
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v2, "[AMPExtension]"

    const-string v3, "on purchase success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v2, "<receipt>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    if-eqz p1, :cond_0

    .line 205
    const-string v2, "sku"

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "type"

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/Item$ItemType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "token"

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getSubscriptionPeriod()Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    move-result-object v1

    .line 209
    .local v1, "period":Lcom/amazon/inapp/purchasing/SubscriptionPeriod;
    if-eqz v1, :cond_0

    .line 211
    const-string v2, "subStart"

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;->getStartDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;->getEndDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 214
    const-string v2, "subEnd"

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;->getEndDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v1    # "period":Lcom/amazon/inapp/purchasing/SubscriptionPeriod;
    :cond_0
    const-string v2, "</receipt>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v2, "azPurchaseSuccess"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public onPurchaseUpdate(Ljava/util/Set;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/inapp/purchasing/Receipt;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "receipts":Ljava/util/Set;, "Ljava/util/Set<Lcom/amazon/inapp/purchasing/Receipt;>;"
    .local p2, "revokedSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v4, "<receipts>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 289
    const-string v4, "</receipts>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    const-string v4, "<revokedSkus>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    if-eqz p2, :cond_0

    .line 294
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 299
    :cond_0
    const-string v4, "</revokedSkus>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    const-string v4, "azPurchaseUpdated"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void

    .line 271
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/inapp/purchasing/Receipt;

    .line 273
    .local v2, "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    const-string v5, "<r>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    const-string v5, "sku"

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v5, "type"

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/Receipt;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/inapp/purchasing/Item$ItemType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v5, "token"

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/Receipt;->getPurchaseToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/Receipt;->getSubscriptionPeriod()Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    move-result-object v1

    .line 278
    .local v1, "period":Lcom/amazon/inapp/purchasing/SubscriptionPeriod;
    if-eqz v1, :cond_2

    .line 280
    const-string v5, "subStart"

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;->getStartDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;->getEndDate()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 283
    const-string v5, "subEnd"

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;->getEndDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_2
    const-string v5, "</r>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 294
    .end local v1    # "period":Lcom/amazon/inapp/purchasing/SubscriptionPeriod;
    .end local v2    # "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 296
    .local v3, "s":Ljava/lang/String;
    const-string v5, "s"

    invoke-virtual {p0, v0, v5, v3}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->appendXmlElement(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPurchaseUpdateFailed()V
    .locals 2

    .prologue
    .line 308
    const-string v0, "azPurchaseUpdateFailed"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public onSdkAvailable(Z)V
    .locals 2
    .param p1, "isSandboxMode"    # Z

    .prologue
    .line 110
    const-string v0, "azSdkAvailable"

    if-eqz p1, :cond_0

    const-string v1, "TRUE"

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void

    .line 110
    :cond_0
    const-string v1, "FALSE"

    goto :goto_0
.end method

.method setCurrentUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->currentUser:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 333
    return-void
.end method
