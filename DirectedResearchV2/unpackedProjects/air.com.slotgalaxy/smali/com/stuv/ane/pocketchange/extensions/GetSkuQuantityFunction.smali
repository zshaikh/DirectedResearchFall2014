.class public Lcom/stuv/ane/pocketchange/extensions/GetSkuQuantityFunction;
.super Ljava/lang/Object;
.source "GetSkuQuantityFunction.java"

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
    .line 15
    move-object v0, p1

    check-cast v0, Lcom/stuv/ane/pocketchange/extensions/ExtensionContext;

    move-object v3, v0

    .line 17
    .local v3, "fbContext":Lcom/stuv/ane/pocketchange/extensions/ExtensionContext;
    invoke-virtual {v3}, Lcom/stuv/ane/pocketchange/extensions/ExtensionContext;->initialise()V

    .line 19
    const/4 v5, 0x0

    .line 23
    .local v5, "sku":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 30
    invoke-static {v5}, Lcom/stuv/ane/pocketchange/extensions/PocketChangeWrapper;->getQuantityPurchasedForProduct(Ljava/lang/String;)I

    move-result v1

    .line 32
    .local v1, "count":I
    const/4 v4, 0x0

    .line 36
    .local v4, "result":Lcom/adobe/fre/FREObject;
    :try_start_1
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_0
    move-object v6, v4

    .line 43
    .end local v1    # "count":I
    .end local v4    # "result":Lcom/adobe/fre/FREObject;
    :goto_1
    return-object v6

    .line 25
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 27
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_1

    .line 38
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "count":I
    .restart local v4    # "result":Lcom/adobe/fre/FREObject;
    :catch_1
    move-exception v6

    goto :goto_0
.end method
