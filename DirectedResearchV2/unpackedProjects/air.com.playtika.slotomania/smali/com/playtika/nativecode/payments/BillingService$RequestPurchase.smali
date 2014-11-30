.class public Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;
.super Lcom/playtika/nativecode/payments/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/nativecode/payments/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPurchase"
.end annotation


# instance fields
.field public final mDeveloperPayload:Ljava/lang/String;

.field public final mProductId:Ljava/lang/String;

.field final synthetic this$0:Lcom/playtika/nativecode/payments/BillingService;


# direct methods
.method public constructor <init>(Lcom/playtika/nativecode/payments/BillingService;Ljava/lang/String;)V
    .locals 1
    .param p2, "itemId"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;-><init>(Lcom/playtika/nativecode/payments/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Lcom/playtika/nativecode/payments/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;->this$0:Lcom/playtika/nativecode/payments/BillingService;

    .line 226
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/playtika/nativecode/payments/BillingService$BillingRequest;-><init>(Lcom/playtika/nativecode/payments/BillingService;I)V

    .line 227
    iput-object p2, p0, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 229
    return-void
.end method


# virtual methods
.method public bridge synthetic getStartId()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/playtika/nativecode/payments/BillingService$BillingRequest;->getStartId()I

    move-result v0

    return v0
.end method

.method protected responseCodeReceived(Lcom/playtika/nativecode/payments/Consts$ResponseCode;)V
    .locals 1
    .param p1, "responseCode"    # Lcom/playtika/nativecode/payments/Consts$ResponseCode;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;->this$0:Lcom/playtika/nativecode/payments/BillingService;

    invoke-static {v0, p0, p1}, Lcom/playtika/nativecode/payments/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;Lcom/playtika/nativecode/payments/Consts$ResponseCode;)V

    .line 256
    return-void
.end method

.method protected run()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    const-string v4, "REQUEST_PURCHASE"

    invoke-virtual {p0, v4}, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 234
    .local v2, "request":Landroid/os/Bundle;
    const-string v4, "ITEM_ID"

    iget-object v5, p0, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v4, p0, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 237
    const-string v4, "DEVELOPER_PAYLOAD"

    iget-object v5, p0, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    # getter for: Lcom/playtika/nativecode/payments/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/playtika/nativecode/payments/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 241
    .local v3, "response":Landroid/os/Bundle;
    const-string v4, "PURCHASE_INTENT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 242
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v1, :cond_1

    .line 243
    const-string v4, "BillingService"

    const-string v5, "Error with requestPurchase"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-wide v4, Lcom/playtika/nativecode/payments/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 249
    :goto_0
    return-wide v4

    .line 247
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v1, v0}, Lcom/playtika/nativecode/payments/ResponseHandler;->buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 249
    const-string v4, "REQUEST_ID"

    .line 250
    sget-wide v5, Lcom/playtika/nativecode/payments/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 249
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0
.end method

.method public bridge synthetic runIfConnected()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/playtika/nativecode/payments/BillingService$BillingRequest;->runIfConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic runRequest()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/playtika/nativecode/payments/BillingService$BillingRequest;->runRequest()Z

    move-result v0

    return v0
.end method
