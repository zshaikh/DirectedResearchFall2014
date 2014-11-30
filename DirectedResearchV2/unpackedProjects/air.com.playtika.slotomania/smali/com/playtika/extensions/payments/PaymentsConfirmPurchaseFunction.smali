.class public Lcom/playtika/extensions/payments/PaymentsConfirmPurchaseFunction;
.super Ljava/lang/Object;
.source "PaymentsConfirmPurchaseFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 13
    const/4 v5, 0x0

    .line 14
    .local v5, "result":Lcom/adobe/fre/FREObject;
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;

    move-object v1, v0

    .line 20
    .local v1, "ctx":Lcom/playtika/extensions/payments/PaymentsExtensionContext;
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 21
    .local v4, "order_id":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "notification_id":Ljava/lang/String;
    invoke-virtual {v1, v4, v3}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->confirmPurchase(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 30
    .end local v3    # "notification_id":Ljava/lang/String;
    .end local v4    # "order_id":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 25
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 27
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
