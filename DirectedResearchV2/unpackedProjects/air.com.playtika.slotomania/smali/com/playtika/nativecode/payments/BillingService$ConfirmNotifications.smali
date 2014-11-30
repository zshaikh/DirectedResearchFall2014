.class Lcom/playtika/nativecode/payments/BillingService$ConfirmNotifications;
.super Lcom/playtika/nativecode/payments/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/nativecode/payments/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfirmNotifications"
.end annotation


# instance fields
.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/playtika/nativecode/payments/BillingService;


# direct methods
.method public constructor <init>(Lcom/playtika/nativecode/payments/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "startId"    # I
    .param p3, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/playtika/nativecode/payments/BillingService$ConfirmNotifications;->this$0:Lcom/playtika/nativecode/payments/BillingService;

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/playtika/nativecode/payments/BillingService$BillingRequest;-><init>(Lcom/playtika/nativecode/payments/BillingService;I)V

    .line 267
    iput-object p3, p0, Lcom/playtika/nativecode/payments/BillingService$ConfirmNotifications;->mNotifyIds:[Ljava/lang/String;

    .line 268
    return-void
.end method


# virtual methods
.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    const-string v2, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v2}, Lcom/playtika/nativecode/payments/BillingService$ConfirmNotifications;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 273
    .local v0, "request":Landroid/os/Bundle;
    const-string v2, "NOTIFY_IDS"

    iget-object v3, p0, Lcom/playtika/nativecode/payments/BillingService$ConfirmNotifications;->mNotifyIds:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 274
    # getter for: Lcom/playtika/nativecode/payments/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/playtika/nativecode/payments/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 275
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "confirmNotifications"

    invoke-virtual {p0, v2, v1}, Lcom/playtika/nativecode/payments/BillingService$ConfirmNotifications;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 276
    const-string v2, "REQUEST_ID"

    .line 277
    sget-wide v3, Lcom/playtika/nativecode/payments/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 276
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
