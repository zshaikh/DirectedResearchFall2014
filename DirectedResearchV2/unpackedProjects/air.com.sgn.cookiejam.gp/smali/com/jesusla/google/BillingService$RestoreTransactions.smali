.class public Lcom/jesusla/google/BillingService$RestoreTransactions;
.super Lcom/jesusla/google/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jesusla/google/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreTransactions"
.end annotation


# instance fields
.field private final mCallback:Lcom/jesusla/google/RestoreTransactionsCallback;

.field mNonce:J

.field final synthetic this$0:Lcom/jesusla/google/BillingService;


# direct methods
.method public constructor <init>(Lcom/jesusla/google/BillingService;Lcom/jesusla/google/RestoreTransactionsCallback;)V
    .locals 1
    .param p2, "callback"    # Lcom/jesusla/google/RestoreTransactionsCallback;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/jesusla/google/BillingService$RestoreTransactions;->this$0:Lcom/jesusla/google/BillingService;

    .line 359
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/jesusla/google/BillingService$BillingRequest;-><init>(Lcom/jesusla/google/BillingService;I)V

    .line 360
    iput-object p2, p0, Lcom/jesusla/google/BillingService$RestoreTransactions;->mCallback:Lcom/jesusla/google/RestoreTransactionsCallback;

    .line 361
    return-void
.end method


# virtual methods
.method public bridge synthetic getStartId()I
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Lcom/jesusla/google/BillingService$BillingRequest;->getStartId()I

    move-result v0

    return v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/jesusla/google/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 378
    iget-wide v0, p0, Lcom/jesusla/google/BillingService$RestoreTransactions;->mNonce:J

    invoke-static {v0, v1}, Lcom/jesusla/google/Security;->removeNonce(J)V

    .line 379
    return-void
.end method

.method protected responseCodeReceived(Lcom/jesusla/google/Consts$ResponseCode;)V
    .locals 1
    .param p1, "responseCode"    # Lcom/jesusla/google/Consts$ResponseCode;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/jesusla/google/BillingService$RestoreTransactions;->mCallback:Lcom/jesusla/google/RestoreTransactionsCallback;

    invoke-interface {v0, p1}, Lcom/jesusla/google/RestoreTransactionsCallback;->restoreTransactionsResponse(Lcom/jesusla/google/Consts$ResponseCode;)V

    .line 384
    return-void
.end method

.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Lcom/jesusla/google/Security;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jesusla/google/BillingService$RestoreTransactions;->mNonce:J

    .line 367
    const-string v2, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v2}, Lcom/jesusla/google/BillingService$RestoreTransactions;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 368
    .local v0, "request":Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lcom/jesusla/google/BillingService$RestoreTransactions;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 369
    # getter for: Lcom/jesusla/google/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/jesusla/google/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 370
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "restoreTransactions"

    invoke-virtual {p0, v2, v1}, Lcom/jesusla/google/BillingService$RestoreTransactions;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 371
    const-string v2, "REQUEST_ID"

    sget-wide v3, Lcom/jesusla/google/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public bridge synthetic runIfConnected()Z
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Lcom/jesusla/google/BillingService$BillingRequest;->runIfConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic runRequest()Z
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Lcom/jesusla/google/BillingService$BillingRequest;->runRequest()Z

    move-result v0

    return v0
.end method
