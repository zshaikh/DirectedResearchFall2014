.class public Lcom/jesusla/storekit/GoogleProvider;
.super Ljava/lang/Object;
.source "GoogleProvider.java"

# interfaces
.implements Lcom/jesusla/storekit/Provider;


# static fields
.field public static final VENDOR:Ljava/lang/String; = "GOOGLE"


# instance fields
.field private billing:Lcom/jesusla/google/BillingService;

.field private final billingListener:Lcom/jesusla/google/BillingListener;

.field private final productIdentifierMap:Ljava/util/Map;
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

.field private final storeKit:Lcom/jesusla/storekit/StoreKit;


# direct methods
.method public constructor <init>(Lcom/jesusla/storekit/StoreKit;)V
    .locals 3
    .param p1, "storeKit"    # Lcom/jesusla/storekit/StoreKit;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/jesusla/storekit/GoogleProvider;->productIdentifierMap:Ljava/util/Map;

    .line 119
    new-instance v1, Lcom/jesusla/storekit/GoogleProvider$4;

    invoke-direct {v1, p0}, Lcom/jesusla/storekit/GoogleProvider$4;-><init>(Lcom/jesusla/storekit/GoogleProvider;)V

    iput-object v1, p0, Lcom/jesusla/storekit/GoogleProvider;->billingListener:Lcom/jesusla/google/BillingListener;

    .line 27
    iput-object p1, p0, Lcom/jesusla/storekit/GoogleProvider;->storeKit:Lcom/jesusla/storekit/StoreKit;

    .line 28
    const-string v1, "SKIdentity"

    invoke-virtual {p1, v1}, Lcom/jesusla/storekit/StoreKit;->getRequiredProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "identity":Ljava/lang/String;
    invoke-static {v0}, Lcom/jesusla/google/Security;->setIdentity(Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/jesusla/google/BillingService;

    invoke-direct {v1}, Lcom/jesusla/google/BillingService;-><init>()V

    iput-object v1, p0, Lcom/jesusla/storekit/GoogleProvider;->billing:Lcom/jesusla/google/BillingService;

    .line 32
    iget-object v1, p0, Lcom/jesusla/storekit/GoogleProvider;->billing:Lcom/jesusla/google/BillingService;

    invoke-virtual {p1}, Lcom/jesusla/storekit/StoreKit;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jesusla/google/BillingService;->setActivity(Landroid/app/Activity;)V

    .line 33
    iget-object v1, p0, Lcom/jesusla/storekit/GoogleProvider;->billing:Lcom/jesusla/google/BillingService;

    iget-object v2, p0, Lcom/jesusla/storekit/GoogleProvider;->billingListener:Lcom/jesusla/google/BillingListener;

    invoke-virtual {v1, v2}, Lcom/jesusla/google/BillingService;->setListener(Lcom/jesusla/google/BillingListener;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/jesusla/storekit/GoogleProvider;ILcom/jesusla/google/VerifiedPurchase;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/jesusla/storekit/GoogleProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/jesusla/google/VerifiedPurchase;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/jesusla/storekit/GoogleProvider;->buildTransaction(ILcom/jesusla/google/VerifiedPurchase;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/jesusla/storekit/GoogleProvider;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jesusla/storekit/GoogleProvider;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/jesusla/storekit/GoogleProvider;->notifyTransactionUpdate(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private buildTransaction(ILcom/jesusla/google/VerifiedPurchase;)Ljava/util/Map;
    .locals 6
    .param p1, "updateId"    # I
    .param p2, "purchase"    # Lcom/jesusla/google/VerifiedPurchase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/jesusla/google/VerifiedPurchase;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v2, p0, Lcom/jesusla/storekit/GoogleProvider;->productIdentifierMap:Ljava/util/Map;

    iget-object v3, p2, Lcom/jesusla/google/VerifiedPurchase;->productId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "originalProductId":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v1, "transaction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "vendor"

    const-string v3, "GOOGLE"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v2, "productIdentifier"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v2, "_transactionIdentifier"

    iget-object v3, p2, Lcom/jesusla/google/VerifiedPurchase;->orderId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v2, "_transactionDate"

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p2, Lcom/jesusla/google/VerifiedPurchase;->purchaseTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "_updateId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v2, "_notificationId"

    iget-object v3, p2, Lcom/jesusla/google/VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-object v1
.end method

.method private cleanProductIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "productIdentifier"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeProductIdentifiers([Ljava/lang/String;)V
    .locals 9
    .param p1, "productIdentifiers"    # [Ljava/lang/String;

    .prologue
    .line 65
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v4, v0, v3

    .line 66
    .local v4, "id":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/jesusla/storekit/GoogleProvider;->cleanProductIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "cleanId":Ljava/lang/String;
    iget-object v6, p0, Lcom/jesusla/storekit/GoogleProvider;->productIdentifierMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    .local v2, "existingProductId":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 69
    const-string v6, "GooglePlay: ProductId clash between %s and %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    iget-object v6, p0, Lcom/jesusla/storekit/GoogleProvider;->productIdentifierMap:Ljava/util/Map;

    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "cleanId":Ljava/lang/String;
    .end local v2    # "existingProductId":Ljava/lang/String;
    .end local v4    # "id":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private notifyTransactionUpdate(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "transaction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 159
    const-string v0, "transactionState"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/jesusla/storekit/GoogleProvider;->storeKit:Lcom/jesusla/storekit/StoreKit;

    const-string v1, "onTransactionUpdate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/jesusla/storekit/StoreKit;->asyncFlashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    return-void
.end method


# virtual methods
.method protected convertStateToType(Lcom/jesusla/google/Consts$PurchaseState;)Ljava/lang/String;
    .locals 3
    .param p1, "purchaseState"    # Lcom/jesusla/google/Consts$PurchaseState;

    .prologue
    .line 148
    sget-object v0, Lcom/jesusla/google/Consts$PurchaseState;->CANCELED:Lcom/jesusla/google/Consts$PurchaseState;

    if-ne p1, v0, :cond_0

    .line 149
    const-string v0, "FAILED"

    .line 155
    :goto_0
    return-object v0

    .line 150
    :cond_0
    sget-object v0, Lcom/jesusla/google/Consts$PurchaseState;->REFUNDED:Lcom/jesusla/google/Consts$PurchaseState;

    if-ne p1, v0, :cond_1

    .line 151
    const-string v0, "REVOKED"

    goto :goto_0

    .line 152
    :cond_1
    sget-object v0, Lcom/jesusla/google/Consts$PurchaseState;->PURCHASED:Lcom/jesusla/google/Consts$PurchaseState;

    if-ne p1, v0, :cond_2

    .line 153
    const-string v0, "PURCHASED"

    goto :goto_0

    .line 154
    :cond_2
    const-string v0, "Unknown purchaseState %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jesusla/storekit/GoogleProvider;->billing:Lcom/jesusla/google/BillingService;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/jesusla/storekit/GoogleProvider;->billing:Lcom/jesusla/google/BillingService;

    invoke-virtual {v0}, Lcom/jesusla/google/BillingService;->unbind()V

    .line 40
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jesusla/storekit/GoogleProvider;->billing:Lcom/jesusla/google/BillingService;

    .line 41
    return-void
.end method

.method public finishTransaction(Ljava/util/Map;)V
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
    .line 98
    .local p1, "transaction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "_updateId"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 99
    .local v1, "updateId":I
    const-string v2, "_notificationId"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, "notificationId":Ljava/lang/String;
    iget-object v2, p0, Lcom/jesusla/storekit/GoogleProvider;->billing:Lcom/jesusla/google/BillingService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/jesusla/google/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    .line 101
    return-void
.end method

.method public init([Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
    .locals 5
    .param p1, "productIdentifiers"    # [Ljava/lang/String;
    .param p2, "closure"    # Lcom/jesusla/ane/Closure;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/jesusla/storekit/GoogleProvider;->initializeProductIdentifiers([Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/jesusla/storekit/GoogleProvider;->billing:Lcom/jesusla/google/BillingService;

    new-instance v2, Lcom/jesusla/storekit/GoogleProvider$1;

    invoke-direct {v2, p0, p2}, Lcom/jesusla/storekit/GoogleProvider$1;-><init>(Lcom/jesusla/storekit/GoogleProvider;Lcom/jesusla/ane/Closure;)V

    invoke-virtual {v1, v4, v2}, Lcom/jesusla/google/BillingService;->checkBillingSupported(Ljava/lang/String;Lcom/jesusla/google/BillingSupportedCallback;)Z

    move-result v0

    .line 54
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 55
    const-string v1, "Unable to invoke Billing.checkBillingSupported. Returning false"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    if-eqz p2, :cond_0

    .line 57
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2, v4, v1}, Lcom/jesusla/ane/Closure;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    return-void
.end method

.method public requestPayment(Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
    .locals 7
    .param p1, "productIdentifier"    # Ljava/lang/String;
    .param p2, "closure"    # Lcom/jesusla/ane/Closure;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/jesusla/storekit/GoogleProvider;->cleanProductIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "cleanId":Ljava/lang/String;
    iget-object v2, p0, Lcom/jesusla/storekit/GoogleProvider;->billing:Lcom/jesusla/google/BillingService;

    const-string v3, "inapp"

    new-instance v4, Lcom/jesusla/storekit/GoogleProvider$2;

    invoke-direct {v4, p0, p2}, Lcom/jesusla/storekit/GoogleProvider$2;-><init>(Lcom/jesusla/storekit/GoogleProvider;Lcom/jesusla/ane/Closure;)V

    invoke-virtual {v2, v0, v3, v6, v4}, Lcom/jesusla/google/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jesusla/google/RequestPurchaseCallback;)Z

    move-result v1

    .line 89
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 90
    const-string v2, "Unable to invoke Billing.requestPurchase. Returning false"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    if-eqz p2, :cond_0

    .line 92
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2, v6, v2}, Lcom/jesusla/ane/Closure;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-void
.end method

.method public restoreCompletedTransactions(Lcom/jesusla/ane/Closure;)V
    .locals 5
    .param p1, "closure"    # Lcom/jesusla/ane/Closure;

    .prologue
    const/4 v4, 0x0

    .line 105
    iget-object v1, p0, Lcom/jesusla/storekit/GoogleProvider;->billing:Lcom/jesusla/google/BillingService;

    new-instance v2, Lcom/jesusla/storekit/GoogleProvider$3;

    invoke-direct {v2, p0, p1}, Lcom/jesusla/storekit/GoogleProvider$3;-><init>(Lcom/jesusla/storekit/GoogleProvider;Lcom/jesusla/ane/Closure;)V

    invoke-virtual {v1, v2}, Lcom/jesusla/google/BillingService;->restoreTransactions(Lcom/jesusla/google/RestoreTransactionsCallback;)Z

    move-result v0

    .line 112
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 113
    const-string v1, "Unable to invoke Billing.restoreTransactions. Returning false"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    if-eqz p1, :cond_0

    .line 115
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Lcom/jesusla/ane/Closure;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    return-void
.end method
