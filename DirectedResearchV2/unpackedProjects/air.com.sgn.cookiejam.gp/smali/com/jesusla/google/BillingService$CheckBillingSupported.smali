.class Lcom/jesusla/google/BillingService$CheckBillingSupported;
.super Lcom/jesusla/google/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jesusla/google/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckBillingSupported"
.end annotation


# instance fields
.field private final mCallback:Lcom/jesusla/google/BillingSupportedCallback;

.field public mProductType:Ljava/lang/String;

.field final synthetic this$0:Lcom/jesusla/google/BillingService;


# direct methods
.method public constructor <init>(Lcom/jesusla/google/BillingService;Ljava/lang/String;Lcom/jesusla/google/BillingSupportedCallback;)V
    .locals 1
    .param p2, "itemType"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/jesusla/google/BillingSupportedCallback;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/jesusla/google/BillingService$CheckBillingSupported;->this$0:Lcom/jesusla/google/BillingService;

    .line 209
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/jesusla/google/BillingService$BillingRequest;-><init>(Lcom/jesusla/google/BillingService;I)V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jesusla/google/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    .line 210
    iput-object p2, p0, Lcom/jesusla/google/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    .line 211
    iput-object p3, p0, Lcom/jesusla/google/BillingService$CheckBillingSupported;->mCallback:Lcom/jesusla/google/BillingSupportedCallback;

    .line 212
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
    .line 216
    const-string v4, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v4}, Lcom/jesusla/google/BillingService$CheckBillingSupported;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 217
    .local v1, "request":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/jesusla/google/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 218
    const-string v4, "ITEM_TYPE"

    iget-object v5, p0, Lcom/jesusla/google/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    # getter for: Lcom/jesusla/google/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/jesusla/google/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 221
    .local v2, "response":Landroid/os/Bundle;
    const-string v4, "RESPONSE_CODE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 223
    .local v3, "responseCode":I
    const-string v4, "BillingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckBillingSupported response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/jesusla/google/Consts$ResponseCode;->valueOf(I)Lcom/jesusla/google/Consts$ResponseCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v4, Lcom/jesusla/google/Consts$ResponseCode;->RESULT_OK:Lcom/jesusla/google/Consts$ResponseCode;

    invoke-virtual {v4}, Lcom/jesusla/google/Consts$ResponseCode;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    move v0, v4

    .line 227
    .local v0, "billingSupported":Z
    :goto_0
    iget-object v4, p0, Lcom/jesusla/google/BillingService$CheckBillingSupported;->mCallback:Lcom/jesusla/google/BillingSupportedCallback;

    iget-object v5, p0, Lcom/jesusla/google/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Lcom/jesusla/google/BillingSupportedCallback;->onBillingSupported(ZLjava/lang/String;)V

    .line 228
    sget-wide v4, Lcom/jesusla/google/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v4

    .line 226
    .end local v0    # "billingSupported":Z
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method
