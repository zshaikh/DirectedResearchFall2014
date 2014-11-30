.class public Lcom/playtika/extensions/amazon/AmazonConfirmPurchaseFunction;
.super Ljava/lang/Object;
.source "AmazonConfirmPurchaseFunction.java"

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
    .locals 6
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 13
    const/4 v4, 0x0

    .line 14
    .local v4, "result":Lcom/adobe/fre/FREObject;
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/amazon/AmazonExtensionContext;

    move-object v1, v0

    .line 18
    .local v1, "ctx":Lcom/playtika/extensions/amazon/AmazonExtensionContext;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 19
    .local v3, "order_id":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->confirmPurchase(Ljava/lang/String;)V

    .line 20
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 27
    .end local v3    # "order_id":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 22
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 24
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
