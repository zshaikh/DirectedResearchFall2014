.class public Lcom/nativex/common/billingtracking/BillingCallback;
.super Ljava/lang/Object;
.source "BillingCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "storeProductId"    # Ljava/lang/String;
    .param p1, "storeTransactionId"    # Ljava/lang/String;
    .param p2, "storeTransactionTimeUTC"    # Ljava/lang/String;
    .param p3, "costPerItem"    # F
    .param p4, "currencyLocale"    # Ljava/lang/String;
    .param p5, "quantity"    # I
    .param p6, "productTitle"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static/range {p0 .. p6}, Lcom/nativex/advertiser/JsonRequestManager;->getInAppBillingBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "json":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v1, Lcom/nativex/common/billingtracking/InAppBillingRequest;

    invoke-direct {v1}, Lcom/nativex/common/billingtracking/InAppBillingRequest;-><init>()V

    .line 44
    .local v1, "request":Lcom/nativex/common/billingtracking/InAppBillingRequest;
    invoke-virtual {v1, v0}, Lcom/nativex/common/billingtracking/InAppBillingRequest;->setJsonData(Ljava/lang/String;)V

    .line 45
    new-instance v2, Lcom/nativex/common/billingtracking/BillingCallback$1;

    invoke-direct {v2}, Lcom/nativex/common/billingtracking/BillingCallback$1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nativex/common/billingtracking/InAppBillingRequest;->setListener(Lcom/nativex/common/OnRequestCompletedListener;)V

    .line 66
    new-instance v2, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;

    invoke-direct {v2}, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;-><init>()V

    invoke-virtual {v2, v1}, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->execute(Lcom/nativex/common/Request;)V

    goto :goto_0
.end method
