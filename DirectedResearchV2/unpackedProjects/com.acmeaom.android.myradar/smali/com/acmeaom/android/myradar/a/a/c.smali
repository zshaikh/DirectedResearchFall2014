.class Lcom/acmeaom/android/myradar/a/a/c;
.super Lcom/amazon/inapp/purchasing/BasePurchasingObserver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/a/a/a;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/myradar/a/a/a;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/acmeaom/android/myradar/a/a/c;->a:Lcom/acmeaom/android/myradar/a/a/a;

    .line 42
    invoke-direct {p0, p2}, Lcom/amazon/inapp/purchasing/BasePurchasingObserver;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onGetUserIdResponse(Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserIdRequestStatus()Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/a/c;->a:Lcom/acmeaom/android/myradar/a/a/a;

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/acmeaom/android/myradar/a/a/a;->a(Lcom/acmeaom/android/myradar/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;)Ljava/lang/String;

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/a/c;->a:Lcom/acmeaom/android/myradar/a/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/acmeaom/android/myradar/a/a/a;->a(Lcom/acmeaom/android/myradar/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemDataResponse(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 7

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v3

    .line 83
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-ne v0, v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/a/c;->a:Lcom/acmeaom/android/myradar/a/a/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/a/a;->a(Lcom/acmeaom/android/myradar/a/a/a;)Lcom/acmeaom/android/myradar/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/a/c;->a:Lcom/acmeaom/android/myradar/a/a/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/a/a;->a(Lcom/acmeaom/android/myradar/a/a/a;)Lcom/acmeaom/android/myradar/a/j;

    move-result-object v0

    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/vending/billing/h;->a:Lcom/android/vending/billing/h;

    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/Receipt;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/acmeaom/android/myradar/a/j;->a(Ljava/lang/String;Lcom/android/vending/billing/h;Ljava/lang/String;JLjava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ALREADY_ENTITLED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-ne v0, v1, :cond_2

    .line 89
    const-string v0, "Purchase failed, already entitled. Restoring previous purchase."

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->g(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/a/c;->a:Lcom/acmeaom/android/myradar/a/a/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/a/a/a;->a()V

    goto :goto_0

    .line 92
    :cond_2
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-eq v0, v1, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V
    .locals 9

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getPurchaseUpdatesRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    if-ne v0, v1, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getRevokedSkus()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->a()Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    sget-object v1, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v4, Lcom/android/vending/billing/h;->c:Lcom/android/vending/billing/h;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/acmeaom/android/myradar/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/billing/h;JLjava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getReceipts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/amazon/inapp/purchasing/Receipt;

    .line 109
    sget-object v0, Lcom/acmeaom/android/myradar/a/a/b;->a:[I

    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/Receipt;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Item$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/Receipt;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :pswitch_0
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->a()Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    sget-object v1, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/Receipt;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/vending/billing/h;->a:Lcom/android/vending/billing/h;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/acmeaom/android/myradar/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/billing/h;JLjava/lang/String;)I

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    .line 125
    :cond_2
    return-void

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSdkAvailable(Z)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
