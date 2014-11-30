.class public Lcom/jesusla/storekit/AmazonProvider;
.super Ljava/lang/Object;
.source "AmazonProvider.java"

# interfaces
.implements Lcom/jesusla/storekit/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "AMAZON"


# instance fields
.field private final callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jesusla/ane/Closure;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/inapp/purchasing/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final storeKit:Lcom/jesusla/storekit/StoreKit;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jesusla/storekit/StoreKit;)V
    .locals 2
    .param p1, "storeKit"    # Lcom/jesusla/storekit/StoreKit;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/jesusla/storekit/AmazonProvider;->callbacks:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Lcom/jesusla/storekit/AmazonProvider;->storeKit:Lcom/jesusla/storekit/StoreKit;

    .line 37
    new-instance v0, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;

    invoke-virtual {p1}, Lcom/jesusla/storekit/StoreKit;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;-><init>(Lcom/jesusla/storekit/AmazonProvider;Landroid/content/Context;)V

    .line 38
    .local v0, "observer":Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;
    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->registerObserver(Lcom/amazon/inapp/purchasing/PurchasingObserver;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/jesusla/storekit/AmazonProvider;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jesusla/storekit/AmazonProvider;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jesusla/storekit/AmazonProvider;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jesusla/storekit/AmazonProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jesusla/storekit/AmazonProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/jesusla/storekit/AmazonProvider;->userId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jesusla/storekit/AmazonProvider;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/jesusla/storekit/AmazonProvider;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/jesusla/storekit/AmazonProvider;->callback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jesusla/storekit/AmazonProvider;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/jesusla/storekit/AmazonProvider;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jesusla/storekit/AmazonProvider;->items:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jesusla/storekit/AmazonProvider;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/jesusla/storekit/AmazonProvider;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/jesusla/storekit/AmazonProvider;->items:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jesusla/storekit/AmazonProvider;Ljava/lang/String;)Lcom/jesusla/ane/Closure;
    .locals 1
    .param p0, "x0"    # Lcom/jesusla/storekit/AmazonProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/jesusla/storekit/AmazonProvider;->releaseCallback(Ljava/lang/String;)Lcom/jesusla/ane/Closure;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/jesusla/storekit/AmazonProvider;Lcom/jesusla/ane/Closure;)V
    .locals 0
    .param p0, "x0"    # Lcom/jesusla/storekit/AmazonProvider;
    .param p1, "x1"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/jesusla/storekit/AmazonProvider;->requestUserId(Lcom/jesusla/ane/Closure;)V

    return-void
.end method

.method static synthetic access$500(Lcom/jesusla/storekit/AmazonProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jesusla/storekit/AmazonProvider;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/jesusla/storekit/AmazonProvider;->notifyRevokedSKU(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jesusla/storekit/AmazonProvider;Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
    .locals 0
    .param p0, "x0"    # Lcom/jesusla/storekit/AmazonProvider;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/jesusla/storekit/AmazonProvider;->registerCallback(Ljava/lang/String;Lcom/jesusla/ane/Closure;)V

    return-void
.end method

.method private varargs callback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/jesusla/storekit/AmazonProvider;->releaseCallback(Ljava/lang/String;)Lcom/jesusla/ane/Closure;

    move-result-object v0

    .line 187
    .local v0, "callback":Lcom/jesusla/ane/Closure;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, p2}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    .line 189
    :cond_0
    return-void
.end method

.method private createTransaction(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "transactionState"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v0, "transaction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "vendor"

    const-string v2, "AMAZON"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "transactionState"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    if-eqz p2, :cond_0

    .line 160
    const-string v1, "_userId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    return-object v0
.end method

.method private notifyRevokedSKU(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 144
    const-string v2, "REVOKED"

    .line 145
    .local v2, "transactionState":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/jesusla/storekit/AmazonProvider;->createTransaction(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 146
    .local v1, "transaction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "productIdentifier"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v3, p0, Lcom/jesusla/storekit/AmazonProvider;->items:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jesusla/storekit/AmazonProvider;->items:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/inapp/purchasing/Item;

    move-object v0, v3

    .line 148
    .local v0, "item":Lcom/amazon/inapp/purchasing/Item;
    :goto_0
    if-eqz v0, :cond_1

    .line 149
    const-string v3, "_productType"

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/jesusla/storekit/AmazonProvider;->toProductType(Lcom/amazon/inapp/purchasing/Item$ItemType;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :goto_1
    iget-object v3, p0, Lcom/jesusla/storekit/AmazonProvider;->storeKit:Lcom/jesusla/storekit/StoreKit;

    const-string v4, "onTransactionUpdate"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v3, v6, v6, v4, v5}, Lcom/jesusla/storekit/StoreKit;->asyncFlashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    return-void

    .end local v0    # "item":Lcom/amazon/inapp/purchasing/Item;
    :cond_0
    move-object v0, v6

    .line 147
    goto :goto_0

    .line 151
    .restart local v0    # "item":Lcom/amazon/inapp/purchasing/Item;
    :cond_1
    const-string v3, "Revoked SKU [%s] not found in product list. Omitting productType."

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v3, v4}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private registerCallback(Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "closure"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 176
    const-string v0, "Amazon: registerCallback(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/jesusla/storekit/AmazonProvider;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method

.method private releaseCallback(Ljava/lang/String;)Lcom/jesusla/ane/Closure;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v0, "Amazon: releaseCallback(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/jesusla/storekit/AmazonProvider;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/storekit/AmazonProvider;
    check-cast p0, Lcom/jesusla/ane/Closure;

    return-object p0
.end method

.method private requestUserId(Lcom/jesusla/ane/Closure;)V
    .locals 1
    .param p1, "closure"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 171
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "id":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/jesusla/storekit/AmazonProvider;->registerCallback(Ljava/lang/String;Lcom/jesusla/ane/Closure;)V

    .line 173
    return-void
.end method

.method private toProductType(Lcom/amazon/inapp/purchasing/Item$ItemType;)Ljava/lang/String;
    .locals 1
    .param p1, "itemType"    # Lcom/amazon/inapp/purchasing/Item$ItemType;

    .prologue
    .line 165
    sget-object v0, Lcom/amazon/inapp/purchasing/Item$ItemType;->CONSUMABLE:Lcom/amazon/inapp/purchasing/Item$ItemType;

    if-ne p1, v0, :cond_0

    const-string v0, "CONSUMABLE"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/inapp/purchasing/Item$ItemType;->ENTITLED:Lcom/amazon/inapp/purchasing/Item$ItemType;

    if-ne p1, v0, :cond_1

    const-string v0, "ENTITLED"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/inapp/purchasing/Item$ItemType;->SUBSCRIPTION:Lcom/amazon/inapp/purchasing/Item$ItemType;

    if-ne p1, v0, :cond_2

    const-string v0, "SUBSCRIPTION"

    goto :goto_0

    :cond_2
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public finishTransaction(Ljava/util/Map;)V
    .locals 0
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
    .line 61
    .local p1, "transaction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public init([Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
    .locals 3
    .param p1, "productIdentifiers"    # [Ljava/lang/String;
    .param p2, "closure"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 48
    .local v1, "skus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateItemDataRequest(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "id":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/jesusla/storekit/AmazonProvider;->registerCallback(Ljava/lang/String;Lcom/jesusla/ane/Closure;)V

    .line 50
    return-void
.end method

.method public notifyUpdatedTransaction(Ljava/lang/String;Lcom/amazon/inapp/purchasing/Receipt;Ljava/lang/String;)V
    .locals 7
    .param p1, "transactionState"    # Ljava/lang/String;
    .param p2, "receipt"    # Lcom/amazon/inapp/purchasing/Receipt;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 129
    invoke-direct {p0, p1, p3}, Lcom/jesusla/storekit/AmazonProvider;->createTransaction(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 130
    .local v1, "transaction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_1

    .line 131
    invoke-virtual {p2}, Lcom/amazon/inapp/purchasing/Receipt;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v0

    .line 132
    .local v0, "itemType":Lcom/amazon/inapp/purchasing/Item$ItemType;
    const-string v2, "productIdentifier"

    invoke-virtual {p2}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v2, Lcom/amazon/inapp/purchasing/Item$ItemType;->SUBSCRIPTION:Lcom/amazon/inapp/purchasing/Item$ItemType;

    if-ne v0, v2, :cond_0

    .line 134
    const-string v2, "_subscriptionStartDate"

    invoke-virtual {p2}, Lcom/amazon/inapp/purchasing/Receipt;->getSubscriptionPeriod()Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;->getStartDate()Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v2, "_subscriptionEndDate"

    invoke-virtual {p2}, Lcom/amazon/inapp/purchasing/Receipt;->getSubscriptionPeriod()Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;->getEndDate()Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    const-string v2, "_productType"

    invoke-direct {p0, v0}, Lcom/jesusla/storekit/AmazonProvider;->toProductType(Lcom/amazon/inapp/purchasing/Item$ItemType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v2, "_purchaseToken"

    invoke-virtual {p2}, Lcom/amazon/inapp/purchasing/Receipt;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v0    # "itemType":Lcom/amazon/inapp/purchasing/Item$ItemType;
    :cond_1
    iget-object v2, p0, Lcom/jesusla/storekit/AmazonProvider;->storeKit:Lcom/jesusla/storekit/StoreKit;

    const-string v3, "onTransactionUpdate"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Lcom/jesusla/storekit/StoreKit;->asyncFlashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public requestPayment(Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
    .locals 1
    .param p1, "productIdentifier"    # Ljava/lang/String;
    .param p2, "closure"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 54
    invoke-static {p1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "id":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/jesusla/storekit/AmazonProvider;->registerCallback(Ljava/lang/String;Lcom/jesusla/ane/Closure;)V

    .line 56
    return-void
.end method

.method public restoreCompletedTransactions(Lcom/jesusla/ane/Closure;)V
    .locals 2
    .param p1, "closure"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 65
    sget-object v1, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    invoke-static {v1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "id":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/jesusla/storekit/AmazonProvider;->registerCallback(Ljava/lang/String;Lcom/jesusla/ane/Closure;)V

    .line 67
    return-void
.end method
