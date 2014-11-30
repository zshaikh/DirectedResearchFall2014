.class public Lcom/gamesys/android/billing/google/util/Inventory;
.super Ljava/lang/Object;
.source "Inventory.java"


# instance fields
.field mPurchaseItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/gamesys/android/billing/google/util/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field mSkuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/gamesys/android/billing/google/util/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mSkuItems:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mPurchaseItems:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public addPurchaseDetails(Lcom/gamesys/android/billing/google/util/Purchase;)V
    .locals 2
    .param p1, "p"    # Lcom/gamesys/android/billing/google/util/Purchase;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mPurchaseItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/gamesys/android/billing/google/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method addSkuDetails(Lcom/gamesys/android/billing/google/util/SkuDetails;)V
    .locals 2
    .param p1, "d"    # Lcom/gamesys/android/billing/google/util/SkuDetails;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mSkuItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public getAllBuyableItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mSkuItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    return-object v1

    .line 114
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/billing/google/util/SkuDetails;

    .line 115
    .local v0, "p":Lcom/gamesys/android/billing/google/util/SkuDetails;
    invoke-virtual {v0}, Lcom/gamesys/android/billing/google/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAllOwnedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mPurchaseItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    return-object v1

    .line 102
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/billing/google/util/Purchase;

    .line 103
    .local v0, "p":Lcom/gamesys/android/billing/google/util/Purchase;
    invoke-virtual {v0}, Lcom/gamesys/android/billing/google/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getAllOwnedItems(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mPurchaseItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    return-object v1

    .line 88
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/billing/google/util/Purchase;

    .line 89
    .local v0, "p":Lcom/gamesys/android/billing/google/util/Purchase;
    invoke-virtual {v0}, Lcom/gamesys/android/billing/google/util/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/gamesys/android/billing/google/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPurchaseDetails(Ljava/lang/String;)Lcom/gamesys/android/billing/google/util/Purchase;
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mPurchaseItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/billing/google/util/Purchase;

    return-object v0
.end method

.method public getPurchases()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/gamesys/android/billing/google/util/Purchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mPurchaseItems:Ljava/util/Map;

    return-object v0
.end method

.method public getSkuDetails(Ljava/lang/String;)Lcom/gamesys/android/billing/google/util/SkuDetails;
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mSkuItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/billing/google/util/SkuDetails;

    return-object v0
.end method

.method public hasDetails(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mSkuItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPurchased(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mPurchaseItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removePurchase(Ljava/lang/String;)V
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mPurchaseItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mPurchaseItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    return-void
.end method

.method public updatePurchases(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/gamesys/android/billing/google/util/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "purchases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/gamesys/android/billing/google/util/Purchase;>;"
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mPurchaseItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 152
    iput-object p1, p0, Lcom/gamesys/android/billing/google/util/Inventory;->mPurchaseItems:Ljava/util/Map;

    .line 153
    return-void
.end method
