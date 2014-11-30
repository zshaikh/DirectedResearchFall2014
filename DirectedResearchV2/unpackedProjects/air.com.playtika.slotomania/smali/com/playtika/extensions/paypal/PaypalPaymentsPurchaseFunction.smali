.class public Lcom/playtika/extensions/paypal/PaypalPaymentsPurchaseFunction;
.super Ljava/lang/Object;
.source "PaypalPaymentsPurchaseFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-string v7, "PAYPAL"

    .line 15
    const/4 v3, 0x0

    .line 17
    .local v3, "result":Lcom/adobe/fre/FREObject;
    if-eqz p2, :cond_0

    array-length v5, p2

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 19
    :cond_0
    const-string v5, "PAYPAL"

    const-string v5, "Not enough parameters!"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v5, 0x0

    .line 35
    :goto_0
    return-object v5

    .line 25
    :cond_1
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "transaction_id":Ljava/lang/String;
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;

    move-object v1, v0

    .line 28
    .local v1, "ctx":Lcom/playtika/extensions/paypal/PaypalExtensionContext;
    invoke-virtual {v1, v4}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->purchase(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "ctx":Lcom/playtika/extensions/paypal/PaypalExtensionContext;
    .end local v4    # "transaction_id":Ljava/lang/String;
    :goto_1
    move-object v5, v3

    .line 35
    goto :goto_0

    .line 30
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 32
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "PAYPAL"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
