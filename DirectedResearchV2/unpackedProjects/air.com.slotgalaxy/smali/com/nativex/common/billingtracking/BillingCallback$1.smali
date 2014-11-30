.class final Lcom/nativex/common/billingtracking/BillingCallback$1;
.super Ljava/lang/Object;
.source "BillingCallback.java"

# interfaces
.implements Lcom/nativex/common/OnRequestCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/common/billingtracking/BillingCallback;->trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(ZLcom/nativex/common/Response;)V
    .locals 2
    .param p1, "succeded"    # Z
    .param p2, "response"    # Lcom/nativex/common/Response;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    if-eqz p2, :cond_0

    .line 53
    check-cast p2, Lcom/nativex/common/billingtracking/InAppBillingResponse;

    .end local p2    # "response":Lcom/nativex/common/Response;
    invoke-virtual {p2}, Lcom/nativex/common/billingtracking/InAppBillingResponse;->getResponseObject()Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;

    move-result-object v0

    .line 54
    .local v0, "responseObject":Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;->isSuccessful()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const-string v1, "InAppBilling response successful."

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 63
    .end local v0    # "responseObject":Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v1, "InAppBilling response failed."

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
