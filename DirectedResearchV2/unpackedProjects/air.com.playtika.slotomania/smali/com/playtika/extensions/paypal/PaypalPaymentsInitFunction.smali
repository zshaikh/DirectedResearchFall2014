.class public Lcom/playtika/extensions/paypal/PaypalPaymentsInitFunction;
.super Ljava/lang/Object;
.source "PaypalPaymentsInitFunction.java"

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
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-string v6, "PAYPAL"

    .line 15
    const/4 v3, 0x0

    .line 17
    .local v3, "result":Lcom/adobe/fre/FREObject;
    if-nez p2, :cond_0

    .line 19
    const-string v4, "PAYPAL"

    const-string v4, "Not enough parameters!"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v4, 0x0

    .line 33
    :goto_0
    return-object v4

    .line 25
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;

    move-object v1, v0

    .line 26
    .local v1, "ctx":Lcom/playtika/extensions/paypal/PaypalExtensionContext;
    invoke-virtual {v1}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->initPayments()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "ctx":Lcom/playtika/extensions/paypal/PaypalExtensionContext;
    :goto_1
    move-object v4, v3

    .line 33
    goto :goto_0

    .line 28
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 30
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PAYPAL"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
