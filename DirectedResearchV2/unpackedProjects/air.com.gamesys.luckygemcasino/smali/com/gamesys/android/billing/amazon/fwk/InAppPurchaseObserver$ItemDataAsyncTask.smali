.class Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;
.super Landroid/os/AsyncTask;
.source "InAppPurchaseObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemDataAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/amazon/inapp/purchasing/ItemDataResponse;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus:[I


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;


# direct methods
.method static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus()[I
    .locals 3

    .prologue
    .line 257
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->values()[Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL_WITH_UNAVAILABLE_SKUS:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;-><init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)V

    return-void
.end method

.method private getSuccessJson(Lcom/amazon/inapp/purchasing/ItemDataResponse;)Lorg/json/JSONArray;
    .locals 14
    .param p1, "itemDataResponse"    # Lcom/amazon/inapp/purchasing/ItemDataResponse;

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemData()Ljava/util/Map;

    move-result-object v10

    .line 295
    .local v10, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item;>;"
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 296
    .local v7, "array":Lorg/json/JSONArray;
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    return-object v7

    .line 296
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 297
    .local v11, "key":Ljava/lang/String;
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/inapp/purchasing/Item;

    .line 298
    .local v9, "i":Lcom/amazon/inapp/purchasing/Item;
    if-eqz v9, :cond_1

    .line 300
    :try_start_0
    invoke-virtual {v9}, Lcom/amazon/inapp/purchasing/Item;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/amazon/inapp/purchasing/Item;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/amazon/inapp/purchasing/Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/amazon/inapp/purchasing/Item;->getDescription()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 301
    const/4 v6, 0x0

    .line 300
    invoke-static/range {v0 .. v6}, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->formatItemDetailFromStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 302
    .local v12, "o":Lorg/json/JSONObject;
    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v12    # "o":Lorg/json/JSONObject;
    :goto_1
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$1()Ljava/lang/String;

    move-result-object v0

    .line 309
    const-string v1, "Item: %s\n Type: %s\n SKU: %s\n Price: %s\n Description: %s\n"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v9}, Lcom/amazon/inapp/purchasing/Item;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v9}, Lcom/amazon/inapp/purchasing/Item;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v9}, Lcom/amazon/inapp/purchasing/Item;->getSku()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 310
    invoke-virtual {v9}, Lcom/amazon/inapp/purchasing/Item;->getPrice()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v9}, Lcom/amazon/inapp/purchasing/Item;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 309
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :catch_0
    move-exception v8

    .line 304
    .local v8, "e":Ljava/lang/Exception;
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create JSON for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/amazon/inapp/purchasing/Item;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 312
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find sku detail for item : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/amazon/inapp/purchasing/ItemDataResponse;

    invoke-virtual {p0, p1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;->doInBackground([Lcom/amazon/inapp/purchasing/ItemDataResponse;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/amazon/inapp/purchasing/ItemDataResponse;)Lorg/json/JSONArray;
    .locals 8
    .param p1, "params"    # [Lcom/amazon/inapp/purchasing/ItemDataResponse;

    .prologue
    .line 261
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "ItemDataAsyncTask"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 263
    const/4 v4, 0x0

    aget-object v0, p1, v4

    .line 264
    .local v0, "itemDataResponse":Lcom/amazon/inapp/purchasing/ItemDataResponse;
    const/4 v1, 0x0

    .line 266
    .local v1, "result":Lorg/json/JSONArray;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus()[I

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemDataRequestStatus()Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 286
    :goto_0
    return-object v1

    .line 269
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 275
    invoke-direct {p0, v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;->getSuccessJson(Lcom/amazon/inapp/purchasing/ItemDataResponse;)Lorg/json/JSONArray;

    move-result-object v1

    .line 276
    goto :goto_0

    .line 270
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 271
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$1()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unavailable SKU:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 279
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;->getSuccessJson(Lcom/amazon/inapp/purchasing/ItemDataResponse;)Lorg/json/JSONArray;

    move-result-object v1

    .line 280
    goto :goto_0

    .line 282
    :pswitch_2
    iget-object v4, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v4}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v4

    const-string v5, "com.gamesys.android.billing.common.ane.CODE_QUERY_ITEM_STORE_ERROR"

    const-string v6, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE"

    invoke-virtual {v4, v5, v6}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;->onPostExecute(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "result"    # Lorg/json/JSONArray;

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 321
    if-eqz p1, :cond_0

    .line 323
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Formatted store info :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE_SUCCESS"

    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$2(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Z)V

    .line 327
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->notifyActionDone()V

    .line 328
    return-void
.end method
