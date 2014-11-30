.class Lcom/playtika/extensions/amazon/AmazonExtensionContext$AmazonPaymentExtensionPurchaseObserver;
.super Lcom/amazon/inapp/purchasing/BasePurchasingObserver;
.source "AmazonExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/amazon/AmazonExtensionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmazonPaymentExtensionPurchaseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/amazon/AmazonExtensionContext;


# direct methods
.method public constructor <init>(Lcom/playtika/extensions/amazon/AmazonExtensionContext;)V
    .locals 1

    .prologue
    .line 181
    iput-object p1, p0, Lcom/playtika/extensions/amazon/AmazonExtensionContext$AmazonPaymentExtensionPurchaseObserver;->this$0:Lcom/playtika/extensions/amazon/AmazonExtensionContext;

    .line 182
    invoke-virtual {p1}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/inapp/purchasing/BasePurchasingObserver;-><init>(Landroid/content/Context;)V

    .line 183
    return-void
.end method


# virtual methods
.method public onGetUserIdResponse(Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V
    .locals 0
    .param p1, "getUserIdResponse"    # Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    .prologue
    .line 236
    return-void
.end method

.method public onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 17
    .param p1, "purchaseResponse"    # Lcom/amazon/inapp/purchasing/PurchaseResponse;

    .prologue
    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-virtual {v1, v2}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-nez v1, :cond_1

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v16

    .line 204
    .local v16, "responseData":Lcom/amazon/inapp/purchasing/Receipt;
    invoke-virtual/range {v16 .. v16}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "productId":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/amazon/inapp/purchasing/Receipt;->getPurchaseToken()Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, "purchaseToken":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getUserId()Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, "userId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "requestId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/amazon/AmazonExtensionContext$AmazonPaymentExtensionPurchaseObserver;->this$0:Lcom/playtika/extensions/amazon/AmazonExtensionContext;

    move-object v1, v0

    const-string v3, ""

    .line 211
    sget-object v5, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->transaction_id:Ljava/lang/String;

    .line 210
    # invokes: Lcom/playtika/extensions/amazon/AmazonExtensionContext;->trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v7}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->access$0(Lcom/playtika/extensions/amazon/AmazonExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/amazon/AmazonExtensionContext$AmazonPaymentExtensionPurchaseObserver;->this$0:Lcom/playtika/extensions/amazon/AmazonExtensionContext;

    move-object v8, v0

    const-string v9, "PURCHASED"

    .line 215
    sget-object v11, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->transaction_id:Ljava/lang/String;

    const/4 v15, 0x0

    move-object v10, v4

    move-object v12, v6

    move-object v13, v7

    move-object v14, v2

    .line 214
    # invokes: Lcom/playtika/extensions/amazon/AmazonExtensionContext;->pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v8 .. v15}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->access$1(Lcom/playtika/extensions/amazon/AmazonExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v2    # "requestId":Ljava/lang/String;
    .end local v4    # "productId":Ljava/lang/String;
    .end local v6    # "purchaseToken":Ljava/lang/String;
    .end local v7    # "userId":Ljava/lang/String;
    .end local v16    # "responseData":Lcom/amazon/inapp/purchasing/Receipt;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->transaction_id:Ljava/lang/String;

    .line 231
    return-void

    .line 218
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-virtual {v1, v2}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-nez v1, :cond_2

    .line 220
    const-string v1, "AmazonExtensionContext"

    const-string v2, "FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v2

    .line 222
    .restart local v2    # "requestId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/amazon/AmazonExtensionContext$AmazonPaymentExtensionPurchaseObserver;->this$0:Lcom/playtika/extensions/amazon/AmazonExtensionContext;

    move-object v1, v0

    const-string v3, "ERROR"

    const-string v4, "FAILED"

    # invokes: Lcom/playtika/extensions/amazon/AmazonExtensionContext;->pushEventToASWithError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, v2, v4}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->access$2(Lcom/playtika/extensions/amazon/AmazonExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    .end local v2    # "requestId":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->INVALID_SKU:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-virtual {v1, v2}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-nez v1, :cond_0

    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v2

    .line 227
    .restart local v2    # "requestId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/amazon/AmazonExtensionContext$AmazonPaymentExtensionPurchaseObserver;->this$0:Lcom/playtika/extensions/amazon/AmazonExtensionContext;

    move-object v1, v0

    const-string v3, "ERROR"

    const-string v4, "INVALID_SKU"

    # invokes: Lcom/playtika/extensions/amazon/AmazonExtensionContext;->pushEventToASWithError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, v2, v4}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->access$2(Lcom/playtika/extensions/amazon/AmazonExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSdkAvailable(Z)V
    .locals 2
    .param p1, "isSandboxMode"    # Z

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/playtika/extensions/amazon/AmazonExtensionContext$AmazonPaymentExtensionPurchaseObserver;->this$0:Lcom/playtika/extensions/amazon/AmazonExtensionContext;

    const-string v1, "false"

    # invokes: Lcom/playtika/extensions/amazon/AmazonExtensionContext;->pushEventToASWithSandboxAvailability(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->access$3(Lcom/playtika/extensions/amazon/AmazonExtensionContext;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/playtika/extensions/amazon/AmazonExtensionContext$AmazonPaymentExtensionPurchaseObserver;->this$0:Lcom/playtika/extensions/amazon/AmazonExtensionContext;

    const-string v1, "true"

    # invokes: Lcom/playtika/extensions/amazon/AmazonExtensionContext;->pushEventToASWithSandboxAvailability(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->access$3(Lcom/playtika/extensions/amazon/AmazonExtensionContext;Ljava/lang/String;)V

    goto :goto_0
.end method
