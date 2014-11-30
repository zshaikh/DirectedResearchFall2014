.class public Lcom/jesusla/google/BillingService$RequestPurchase;
.super Lcom/jesusla/google/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jesusla/google/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPurchase"
.end annotation


# instance fields
.field private final mCallback:Lcom/jesusla/google/RequestPurchaseCallback;

.field public final mDeveloperPayload:Ljava/lang/String;

.field public final mProductId:Ljava/lang/String;

.field public final mProductType:Ljava/lang/String;

.field final synthetic this$0:Lcom/jesusla/google/BillingService;


# direct methods
.method public constructor <init>(Lcom/jesusla/google/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jesusla/google/RequestPurchaseCallback;)V
    .locals 1
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "developerPayload"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/jesusla/google/RequestPurchaseCallback;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/jesusla/google/BillingService$RequestPurchase;->this$0:Lcom/jesusla/google/BillingService;

    .line 253
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/jesusla/google/BillingService$BillingRequest;-><init>(Lcom/jesusla/google/BillingService;I)V

    .line 254
    iput-object p2, p0, Lcom/jesusla/google/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    .line 255
    iput-object p4, p0, Lcom/jesusla/google/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 256
    iput-object p3, p0, Lcom/jesusla/google/BillingService$RequestPurchase;->mProductType:Ljava/lang/String;

    .line 257
    iput-object p5, p0, Lcom/jesusla/google/BillingService$RequestPurchase;->mCallback:Lcom/jesusla/google/RequestPurchaseCallback;

    .line 258
    return-void
.end method


# virtual methods
.method public bridge synthetic getStartId()I
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Lcom/jesusla/google/BillingService$BillingRequest;->getStartId()I

    move-result v0

    return v0
.end method

.method protected responseCodeReceived(Lcom/jesusla/google/Consts$ResponseCode;)V
    .locals 4
    .param p1, "responseCode"    # Lcom/jesusla/google/Consts$ResponseCode;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/jesusla/google/BillingService$RequestPurchase;->mCallback:Lcom/jesusla/google/RequestPurchaseCallback;

    iget-object v1, p0, Lcom/jesusla/google/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    iget-object v2, p0, Lcom/jesusla/google/BillingService$RequestPurchase;->mProductType:Ljava/lang/String;

    iget-object v3, p0, Lcom/jesusla/google/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/jesusla/google/RequestPurchaseCallback;->requestPurchaseResponse(Lcom/jesusla/google/Consts$ResponseCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method protected run()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v10, "BillingService"

    .line 262
    const-string v0, "REQUEST_PURCHASE"

    invoke-virtual {p0, v0}, Lcom/jesusla/google/BillingService$RequestPurchase;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 263
    .local v8, "request":Landroid/os/Bundle;
    const-string v0, "ITEM_ID"

    iget-object v1, p0, Lcom/jesusla/google/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "ITEM_TYPE"

    iget-object v1, p0, Lcom/jesusla/google/BillingService$RequestPurchase;->mProductType:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/jesusla/google/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "DEVELOPER_PAYLOAD"

    iget-object v1, p0, Lcom/jesusla/google/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    # getter for: Lcom/jesusla/google/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/jesusla/google/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 270
    .local v9, "response":Landroid/os/Bundle;
    const-string v0, "PURCHASE_INTENT"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 272
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v7, :cond_1

    .line 273
    const-string v0, "BillingService"

    const-string v0, "Error with requestPurchase"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sget-wide v0, Lcom/jesusla/google/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 284
    :goto_0
    return-wide v0

    .line 277
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v0, p0, Lcom/jesusla/google/BillingService$RequestPurchase;->this$0:Lcom/jesusla/google/BillingService;

    # getter for: Lcom/jesusla/google/BillingService;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/jesusla/google/BillingService;->access$400(Lcom/jesusla/google/BillingService;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    const-string v0, "REQUEST_ID"

    sget-wide v3, Lcom/jesusla/google/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v9, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 281
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "BillingService"

    const-string v0, "error starting activity"

    invoke-static {v10, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    sget-wide v0, Lcom/jesusla/google/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    goto :goto_0
.end method

.method public bridge synthetic runIfConnected()Z
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Lcom/jesusla/google/BillingService$BillingRequest;->runIfConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic runRequest()Z
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Lcom/jesusla/google/BillingService$BillingRequest;->runRequest()Z

    move-result v0

    return v0
.end method
