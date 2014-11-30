.class public Lcom/jesusla/storekit/StoreKit;
.super Lcom/jesusla/ane/Context;
.source "StoreKit.java"


# instance fields
.field private provider:Lcom/jesusla/storekit/Provider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/jesusla/ane/Context;-><init>()V

    .line 13
    const-string v0, "init"

    invoke-virtual {p0, v0}, Lcom/jesusla/storekit/StoreKit;->registerFunction(Ljava/lang/String;)V

    .line 14
    const-string v0, "requestPayment"

    invoke-virtual {p0, v0}, Lcom/jesusla/storekit/StoreKit;->registerFunction(Ljava/lang/String;)V

    .line 15
    const-string v0, "finishTransaction"

    invoke-virtual {p0, v0}, Lcom/jesusla/storekit/StoreKit;->registerFunction(Ljava/lang/String;)V

    .line 16
    const-string v0, "restoreCompletedTransactions"

    invoke-virtual {p0, v0}, Lcom/jesusla/storekit/StoreKit;->registerFunction(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jesusla/storekit/StoreKit;->provider:Lcom/jesusla/storekit/Provider;

    invoke-interface {v0}, Lcom/jesusla/storekit/Provider;->dispose()V

    .line 35
    return-void
.end method

.method public finishTransaction(Ljava/util/Map;)V
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
    .line 46
    .local p1, "transaction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/jesusla/storekit/StoreKit;->provider:Lcom/jesusla/storekit/Provider;

    invoke-interface {v0, p1}, Lcom/jesusla/storekit/Provider;->finishTransaction(Ljava/util/Map;)V

    .line 47
    return-void
.end method

.method public init([Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
    .locals 1
    .param p1, "productIdentifiers"    # [Ljava/lang/String;
    .param p2, "closure"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jesusla/storekit/StoreKit;->provider:Lcom/jesusla/storekit/Provider;

    invoke-interface {v0, p1, p2}, Lcom/jesusla/storekit/Provider;->init([Ljava/lang/String;Lcom/jesusla/ane/Closure;)V

    .line 39
    return-void
.end method

.method protected initContext()V
    .locals 4

    .prologue
    .line 21
    const-string v1, "SKProvider"

    invoke-virtual {p0, v1}, Lcom/jesusla/storekit/StoreKit;->getRequiredProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "providerType":Ljava/lang/String;
    const-string v1, "GOOGLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    new-instance v1, Lcom/jesusla/storekit/GoogleProvider;

    invoke-direct {v1, p0}, Lcom/jesusla/storekit/GoogleProvider;-><init>(Lcom/jesusla/storekit/StoreKit;)V

    iput-object v1, p0, Lcom/jesusla/storekit/StoreKit;->provider:Lcom/jesusla/storekit/Provider;

    .line 30
    :goto_0
    return-void

    .line 24
    :cond_0
    const-string v1, "AMAZON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    new-instance v1, Lcom/jesusla/storekit/AmazonProvider;

    invoke-direct {v1, p0}, Lcom/jesusla/storekit/AmazonProvider;-><init>(Lcom/jesusla/storekit/StoreKit;)V

    iput-object v1, p0, Lcom/jesusla/storekit/StoreKit;->provider:Lcom/jesusla/storekit/Provider;

    goto :goto_0

    .line 27
    :cond_1
    const-string v1, "Unknown provider [%s]. StoreKit will be disabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v1, Lcom/jesusla/storekit/NullProvider;

    invoke-direct {v1, p0}, Lcom/jesusla/storekit/NullProvider;-><init>(Lcom/jesusla/storekit/StoreKit;)V

    iput-object v1, p0, Lcom/jesusla/storekit/StoreKit;->provider:Lcom/jesusla/storekit/Provider;

    goto :goto_0
.end method

.method public requestPayment(Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
    .locals 1
    .param p1, "productIdentifier"    # Ljava/lang/String;
    .param p2, "closure"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jesusla/storekit/StoreKit;->provider:Lcom/jesusla/storekit/Provider;

    invoke-interface {v0, p1, p2}, Lcom/jesusla/storekit/Provider;->requestPayment(Ljava/lang/String;Lcom/jesusla/ane/Closure;)V

    .line 43
    return-void
.end method

.method public restoreCompletedTransactions(Lcom/jesusla/ane/Closure;)V
    .locals 1
    .param p1, "closure"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jesusla/storekit/StoreKit;->provider:Lcom/jesusla/storekit/Provider;

    invoke-interface {v0, p1}, Lcom/jesusla/storekit/Provider;->restoreCompletedTransactions(Lcom/jesusla/ane/Closure;)V

    .line 51
    return-void
.end method
