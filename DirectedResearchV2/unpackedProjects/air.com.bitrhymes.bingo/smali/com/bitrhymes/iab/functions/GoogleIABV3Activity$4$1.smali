.class Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4$1;
.super Ljava/lang/Object;
.source "GoogleIABV3Activity.java"

# interfaces
.implements Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4;->onIabSetupFinished(Lcom/bitrhymes/iab/util/IabResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4;


# direct methods
.method constructor <init>(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4$1;->this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Inventory;)V
    .locals 12
    .param p1, "result"    # Lcom/bitrhymes/iab/util/IabResult;
    .param p2, "inventory"    # Lcom/bitrhymes/iab/util/Inventory;

    .prologue
    const/4 v8, 0x0

    const-string v11, "InApp"

    const-string v10, ""

    const-string v9, "PURCHASE_STATE_CHANGE"

    .line 302
    const-string v6, "InApp"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "callGetPurchaseInfo:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p1}, Lcom/bitrhymes/iab/util/IabResult;->isFailure()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 306
    invoke-static {v8}, Lcom/bitrhymes/iab/functions/Utils;->setInAppActivity(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V

    .line 307
    iget-object v6, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4$1;->this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4;

    # getter for: Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;
    invoke-static {v6}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4;->access$0(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4;)Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->finish()V

    .line 308
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v6

    const-string v7, "PURCHASE_STATE_CHANGE"

    const-string v7, ""

    invoke-virtual {v6, v9, v10}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-static {v8}, Lcom/bitrhymes/iab/functions/Utils;->setInAppActivity(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V

    .line 314
    iget-object v6, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4$1;->this$1:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4;

    # getter for: Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4;->this$0:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;
    invoke-static {v6}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4;->access$0(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4;)Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->finish()V

    .line 315
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 317
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {p2}, Lcom/bitrhymes/iab/util/Inventory;->getPurchaseMap()Ljava/util/Map;

    move-result-object v1

    .line 319
    .local v1, "inventoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/bitrhymes/iab/util/Purchase;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 332
    const-string v6, "InApp"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PURCHASE_STATE_CHANGE:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v6

    const-string v7, "PURCHASE_STATE_CHANGE"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 320
    .local v5, "skuId":Ljava/lang/String;
    invoke-virtual {p2, v5}, Lcom/bitrhymes/iab/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/bitrhymes/iab/util/Purchase;

    move-result-object v4

    .line 322
    .local v4, "purObj":Lcom/bitrhymes/iab/util/Purchase;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 323
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string v7, "0"

    invoke-virtual {v4}, Lcom/bitrhymes/iab/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v7, "1"

    invoke-virtual {v4}, Lcom/bitrhymes/iab/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 326
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 327
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 328
    invoke-static {}, Lcom/bitrhymes/iab/functions/Utils;->getFREContext()Lcom/adobe/fre/FREContext;

    move-result-object v7

    const-string v8, "PURCHASE_STATE_CHANGE"

    const-string v8, ""

    invoke-virtual {v7, v9, v10}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
