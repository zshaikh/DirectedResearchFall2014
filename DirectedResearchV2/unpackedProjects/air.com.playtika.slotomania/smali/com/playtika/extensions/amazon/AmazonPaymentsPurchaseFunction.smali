.class public Lcom/playtika/extensions/amazon/AmazonPaymentsPurchaseFunction;
.super Ljava/lang/Object;
.source "AmazonPaymentsPurchaseFunction.java"

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
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 13
    const/4 v5, 0x0

    .line 14
    .local v5, "result":Lcom/adobe/fre/FREObject;
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/amazon/AmazonExtensionContext;

    move-object v1, v0

    .line 18
    .local v1, "ctx":Lcom/playtika/extensions/amazon/AmazonExtensionContext;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 19
    .local v3, "product_id":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 21
    .local v6, "transaction_id":Ljava/lang/String;
    invoke-virtual {v1, v3, v6}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->purchase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    .local v4, "requestID":Ljava/lang/String;
    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 29
    .end local v3    # "product_id":Ljava/lang/String;
    .end local v4    # "requestID":Ljava/lang/String;
    .end local v6    # "transaction_id":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 24
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 26
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
