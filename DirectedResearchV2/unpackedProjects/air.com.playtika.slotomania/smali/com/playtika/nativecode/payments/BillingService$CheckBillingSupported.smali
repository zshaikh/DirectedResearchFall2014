.class Lcom/playtika/nativecode/payments/BillingService$CheckBillingSupported;
.super Lcom/playtika/nativecode/payments/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/nativecode/payments/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckBillingSupported"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/nativecode/payments/BillingService;


# direct methods
.method public constructor <init>(Lcom/playtika/nativecode/payments/BillingService;)V
    .locals 1

    .prologue
    .line 180
    iput-object p1, p0, Lcom/playtika/nativecode/payments/BillingService$CheckBillingSupported;->this$0:Lcom/playtika/nativecode/payments/BillingService;

    .line 184
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/playtika/nativecode/payments/BillingService$BillingRequest;-><init>(Lcom/playtika/nativecode/payments/BillingService;I)V

    .line 185
    return-void
.end method


# virtual methods
.method protected run()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, "request":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 192
    .local v3, "response":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v5}, Lcom/playtika/nativecode/payments/BillingService$CheckBillingSupported;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 193
    # getter for: Lcom/playtika/nativecode/payments/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/playtika/nativecode/payments/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 200
    const-string v5, "RESPONSE_CODE"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 205
    .local v4, "responseCode":I
    sget-object v5, Lcom/playtika/nativecode/payments/Consts$ResponseCode;->RESULT_OK:Lcom/playtika/nativecode/payments/Consts$ResponseCode;

    invoke-virtual {v5}, Lcom/playtika/nativecode/payments/Consts$ResponseCode;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v5, 0x1

    move v0, v5

    .line 206
    .local v0, "billingSupported":Z
    :goto_0
    invoke-static {v0}, Lcom/playtika/nativecode/payments/ResponseHandler;->checkBillingSupportedResponse(Z)V

    .line 207
    sget-wide v5, Lcom/playtika/nativecode/payments/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .end local v0    # "billingSupported":Z
    .end local v4    # "responseCode":I
    :goto_1
    return-wide v5

    .line 194
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 198
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-wide v5, Lcom/playtika/nativecode/payments/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    goto :goto_1

    .line 205
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "responseCode":I
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method
