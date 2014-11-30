.class public Lcom/nativex/common/billingtracking/InAppBillingResponse;
.super Lcom/nativex/common/Response;
.source "InAppBillingResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nativex/common/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseObject()Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;
    .locals 4

    .prologue
    .line 31
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/nativex/common/billingtracking/InAppBillingResponse;->getResponse()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/nativex/common/billingtracking/InAppBillingResponse;
    check-cast p0, Lcom/nativex/common/billingtracking/InAppPurchaseResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    .line 35
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "InAppBillingResponse: Caught unexpected exception in getRespnseObject()"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/4 v1, 0x0

    goto :goto_0
.end method
