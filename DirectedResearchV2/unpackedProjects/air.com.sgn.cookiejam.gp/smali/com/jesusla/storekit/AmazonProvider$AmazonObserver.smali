.class Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;
.super Lcom/amazon/inapp/purchasing/BasePurchasingObserver;
.source "AmazonProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jesusla/storekit/AmazonProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmazonObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jesusla/storekit/AmazonProvider;


# direct methods
.method public constructor <init>(Lcom/jesusla/storekit/AmazonProvider;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;->this$0:Lcom/jesusla/storekit/AmazonProvider;

    .line 71
    invoke-direct {p0, p2}, Lcom/amazon/inapp/purchasing/BasePurchasingObserver;-><init>(Landroid/content/Context;)V

    .line 72
    return-void
.end method


# virtual methods
.method public onGetUserIdResponse(Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V
    .locals 7
    .param p1, "getUserIdResponse"    # Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    const-string v1, "Amazon: onGetUserIdResponse(%s)"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;->this$0:Lcom/jesusla/storekit/AmazonProvider;

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserId()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/jesusla/storekit/AmazonProvider;->userId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jesusla/storekit/AmazonProvider;->access$002(Lcom/jesusla/storekit/AmazonProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    const-string v1, "Received user Id: %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;->this$0:Lcom/jesusla/storekit/AmazonProvider;

    # getter for: Lcom/jesusla/storekit/AmazonProvider;->userId:Ljava/lang/String;
    invoke-static {v3}, Lcom/jesusla/storekit/AmazonProvider;->access$000(Lcom/jesusla/storekit/AmazonProvider;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserIdRequestStatus()Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    move-result-object v0

    .line 80
    .local v0, "status":Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;
    iget-object v1, p0, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;->this$0:Lcom/jesusla/storekit/AmazonProvider;

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getRequestId()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    if-ne v0, v4, :cond_0

    move v4, v6

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    # invokes: Lcom/jesusla/storekit/AmazonProvider;->callback(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/jesusla/storekit/AmazonProvider;->access$100(Lcom/jesusla/storekit/AmazonProvider;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-void

    :cond_0
    move v4, v5

    .line 80
    goto :goto_0
.end method

.method public onItemDataResponse(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V
    .locals 7
    .param p1, "itemDataResponse"    # Lcom/amazon/inapp/purchasing/ItemDataResponse;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 85
    const-string v2, "Amazon: onItemDataResponse(%s)"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v2, p0, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;->this$0:Lcom/jesusla/storekit/AmazonProvider;

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemData()Ljava/util/Map;

    move-result-object v3

    # setter for: Lcom/jesusla/storekit/AmazonProvider;->items:Ljava/util/Map;
    invoke-static {v2, v3}, Lcom/jesusla/storekit/AmazonProvider;->access$202(Lcom/jesusla/storekit/AmazonProvider;Ljava/util/Map;)Ljava/util/Map;

    .line 87
    const-string v2, "Received items: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;->this$0:Lcom/jesusla/storekit/AmazonProvider;

    # getter for: Lcom/jesusla/storekit/AmazonProvider;->items:Ljava/util/Map;
    invoke-static {v4}, Lcom/jesusla/storekit/AmazonProvider;->access$200(Lcom/jesusla/storekit/AmazonProvider;)Ljava/util/Map;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemDataRequestStatus()Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    move-result-object v1

    .line 89
    .local v1, "status":Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;
    iget-object v2, p0, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;->this$0:Lcom/jesusla/storekit/AmazonProvider;

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getRequestId()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/jesusla/storekit/AmazonProvider;->releaseCallback(Ljava/lang/String;)Lcom/jesusla/ane/Closure;
    invoke-static {v2, v3}, Lcom/jesusla/storekit/AmazonProvider;->access$300(Lcom/jesusla/storekit/AmazonProvider;Ljava/lang/String;)Lcom/jesusla/ane/Closure;

    move-result-object v0

    .line 90
    .local v0, "callback":Lcom/jesusla/ane/Closure;
    sget-object v2, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    if-ne v1, v2, :cond_0

    .line 91
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;->this$0:Lcom/jesusla/storekit/AmazonProvider;

    # invokes: Lcom/jesusla/storekit/AmazonProvider;->requestUserId(Lcom/jesusla/ane/Closure;)V
    invoke-static {v2, v0}, Lcom/jesusla/storekit/AmazonProvider;->access$400(Lcom/jesusla/storekit/AmazonProvider;Lcom/jesusla/ane/Closure;)V

    goto :goto_0
.end method

.method public onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 7
    .param p1, "purchaseResponse"    # Lcom/amazon/inapp/purchasing/PurchaseResponse;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    const-string v3, "Amazon: onPurchaseResponse(%s)"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v0

    .line 100
    .local v0, "status":Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;
    sget-object v3, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-ne v0, v3, :cond_0

    move v1, v6

    .line 101
    .local v1, "success":Z
    :goto_0
    if-eqz v1, :cond_1

    const-string v3, "VERIFY"

    move-object v2, v3

    .line 102
    .local v2, "transactionState":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;->this$0:Lcom/jesusla/storekit/AmazonProvider;

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/jesusla/storekit/AmazonProvider;->notifyUpdatedTransaction(Ljava/lang/String;Lcom/amazon/inapp/purchasing/Receipt;Ljava/lang/String;)V

    .line 103
    return-void

    .end local v1    # "success":Z
    .end local v2    # "transactionState":Ljava/lang/String;
    :cond_0
    move v1, v5

    .line 100
    goto :goto_0

    .line 101
    .restart local v1    # "success":Z
    :cond_1
    const-string v3, "FAILED"

    move-object v2, v3

    goto :goto_1
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V
    .locals 11
    .param p1, "purchaseUpdatesResponse"    # Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 107
    const-string v7, "Amazon: onPurchaseUpdatesResponse(%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getPurchaseUpdatesRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    move-result-object v7

    sget-object v8, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    if-ne v7, v8, :cond_0

    move v5, v10

    .line 109
    .local v5, "success":Z
    :goto_0
    iget-object v7, p0, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;->this$0:Lcom/jesusla/storekit/AmazonProvider;

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getRequestId()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/jesusla/storekit/AmazonProvider;->releaseCallback(Ljava/lang/String;)Lcom/jesusla/ane/Closure;
    invoke-static {v7, v8}, Lcom/jesusla/storekit/AmazonProvider;->access$300(Lcom/jesusla/storekit/AmazonProvider;Ljava/lang/String;)Lcom/jesusla/ane/Closure;

    move-result-object v0

    .line 110
    .local v0, "callback":Lcom/jesusla/ane/Closure;
    if-nez v5, :cond_1

    .line 111
    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v0, v7}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    .line 125
    :goto_1
    return-void

    .end local v0    # "callback":Lcom/jesusla/ane/Closure;
    .end local v5    # "success":Z
    :cond_0
    move v5, v9

    .line 108
    goto :goto_0

    .line 113
    .restart local v0    # "callback":Lcom/jesusla/ane/Closure;
    .restart local v5    # "success":Z
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "userId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getReceipts()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/inapp/purchasing/Receipt;

    .line 115
    .local v3, "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    iget-object v7, p0, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;->this$0:Lcom/jesusla/storekit/AmazonProvider;

    const-string v8, "PURCHASED"

    invoke-virtual {v7, v8, v3, v6}, Lcom/jesusla/storekit/AmazonProvider;->notifyUpdatedTransaction(Ljava/lang/String;Lcom/amazon/inapp/purchasing/Receipt;Ljava/lang/String;)V

    goto :goto_2

    .line 116
    .end local v3    # "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getRevokedSkus()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    .local v4, "sku":Ljava/lang/String;
    iget-object v7, p0, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;->this$0:Lcom/jesusla/storekit/AmazonProvider;

    # invokes: Lcom/jesusla/storekit/AmazonProvider;->notifyRevokedSKU(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v4, v6}, Lcom/jesusla/storekit/AmazonProvider;->access$500(Lcom/jesusla/storekit/AmazonProvider;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 118
    .end local v4    # "sku":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->isMore()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 119
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getOffset()Lcom/amazon/inapp/purchasing/Offset;

    move-result-object v7

    invoke-static {v7}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/jesusla/storekit/AmazonProvider$AmazonObserver;->this$0:Lcom/jesusla/storekit/AmazonProvider;

    # invokes: Lcom/jesusla/storekit/AmazonProvider;->registerCallback(Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
    invoke-static {v7, v2, v0}, Lcom/jesusla/storekit/AmazonProvider;->access$600(Lcom/jesusla/storekit/AmazonProvider;Ljava/lang/String;Lcom/jesusla/ane/Closure;)V

    goto :goto_1

    .line 123
    .end local v2    # "id":Ljava/lang/String;
    :cond_4
    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v0, v7}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    goto :goto_1
.end method
