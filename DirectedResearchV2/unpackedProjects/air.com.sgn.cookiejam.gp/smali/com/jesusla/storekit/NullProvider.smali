.class public Lcom/jesusla/storekit/NullProvider;
.super Ljava/lang/Object;
.source "NullProvider.java"

# interfaces
.implements Lcom/jesusla/storekit/Provider;


# direct methods
.method public constructor <init>(Lcom/jesusla/storekit/StoreKit;)V
    .locals 0
    .param p1, "storeKit"    # Lcom/jesusla/storekit/StoreKit;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 13
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
    .line 27
    .local p1, "transaction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public init([Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
    .locals 4
    .param p1, "productIdentifiers"    # [Ljava/lang/String;
    .param p2, "closure"    # Lcom/jesusla/ane/Closure;

    .prologue
    const/4 v3, 0x0

    .line 17
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Lcom/jesusla/ane/Closure;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public requestPayment(Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
    .locals 4
    .param p1, "productIdentifier"    # Ljava/lang/String;
    .param p2, "closure"    # Lcom/jesusla/ane/Closure;

    .prologue
    const/4 v3, 0x0

    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Lcom/jesusla/ane/Closure;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public restoreCompletedTransactions(Lcom/jesusla/ane/Closure;)V
    .locals 4
    .param p1, "closure"    # Lcom/jesusla/ane/Closure;

    .prologue
    const/4 v3, 0x0

    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/jesusla/ane/Closure;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method
