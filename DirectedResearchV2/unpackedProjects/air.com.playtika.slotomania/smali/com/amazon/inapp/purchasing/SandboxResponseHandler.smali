.class final Lcom/amazon/inapp/purchasing/SandboxResponseHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/inapp/purchasing/ResponseHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "SandboxResponseHandler"


# instance fields
.field private final _handler:Lcom/amazon/inapp/purchasing/HandlerAdapter;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/amazon/inapp/purchasing/HandlerManager;->getMainHandlerAdapter()Lcom/amazon/inapp/purchasing/HandlerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->_handler:Lcom/amazon/inapp/purchasing/HandlerAdapter;

    return-void
.end method

.method private getItem(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amazon/inapp/purchasing/Item;
    .locals 7

    const-string v0, "itemType"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/Item$ItemType;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v3

    const-string v0, "price"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "title"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "description"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "smallIconUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/amazon/inapp/purchasing/Item;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/inapp/purchasing/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item$ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getItemDataResponse(Landroid/content/Intent;)Lcom/amazon/inapp/purchasing/ItemDataResponse;
    .locals 9

    const/4 v6, 0x0

    sget-object v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "itemDataOutput"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "requestId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :try_start_2
    sget-object v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    if-eq v3, v0, :cond_2

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    const-string v0, "unavailableSkus"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "items"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->getItem(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amazon/inapp/purchasing/Item;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v5

    move-object v8, v3

    move-object v3, v4

    move-object v4, v2

    move-object v2, v8

    :goto_2
    const-string v5, "SandboxResponseHandler"

    const-string v6, "Error parsing item data output"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    :goto_3
    new-instance v4, Lcom/amazon/inapp/purchasing/ItemDataResponse;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/amazon/inapp/purchasing/ItemDataResponse;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;Ljava/util/Map;)V

    return-object v4

    :cond_1
    move-object v0, v5

    move-object v1, v4

    :goto_4
    move-object v8, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v6

    move-object v4, v6

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v3, v6

    move-object v4, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v6

    move-object v4, v2

    move-object v2, v3

    move-object v3, v6

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v6

    move-object v8, v3

    move-object v3, v4

    move-object v4, v2

    move-object v2, v8

    goto :goto_2

    :cond_2
    move-object v0, v6

    move-object v1, v6

    goto :goto_4
.end method

.method private getPurchaseResponse(Landroid/content/Intent;)Lcom/amazon/inapp/purchasing/PurchaseResponse;
    .locals 9

    const/4 v6, 0x0

    sget-object v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "purchaseOutput"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "requestId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    const-string v3, "userId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :try_start_2
    const-string v4, "purchaseStatus"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v0

    const-string v4, "receipt"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->getReceipt(Lorg/json/JSONObject;)Lcom/amazon/inapp/purchasing/Receipt;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    :goto_0
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    :goto_1
    new-instance v4, Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-direct {v4, v3, v2, v0, v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Receipt;Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;)V

    return-object v4

    :catch_0
    move-exception v1

    move-object v2, v6

    move-object v3, v6

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    const-string v4, "SandboxResponseHandler"

    const-string v5, "Error parsing purchase output"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v3, v2

    move-object v2, v6

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_2

    :cond_0
    move-object v1, v6

    goto :goto_0
.end method

.method private getPurchaseUpdatesResponse(Landroid/content/Intent;)Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;
    .locals 13

    const/4 v11, 0x0

    const/4 v8, 0x0

    sget-object v0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "purchaseUpdatesOutput"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "requestId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    move-result-object v0

    const-string v3, "offset"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :try_start_2
    const-string v4, "isMore"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    :try_start_3
    const-string v5, "userId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v5

    :try_start_4
    sget-object v6, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    if-ne v0, v6, :cond_2

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    const-string v8, "receipts"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_0

    move v9, v11

    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_0

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->getReceipt(Lorg/json/JSONObject;)Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const-string v8, "revokedSkus"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    move v8, v11

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v7

    :goto_2
    move v7, v4

    move-object v4, v6

    move-object v6, v3

    move-object v3, v0

    move-object v12, v1

    move-object v1, v2

    move-object v2, v5

    move-object v5, v12

    :goto_3
    new-instance v0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    invoke-static {v6}, Lcom/amazon/inapp/purchasing/Offset;->fromString(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Offset;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/inapp/purchasing/Offset;Z)V

    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v8

    move-object v3, v0

    move v4, v11

    move-object v5, v8

    move-object v6, v8

    move-object v7, v8

    move-object v0, v1

    move-object v1, v8

    :goto_4
    const-string v8, "SandboxResponseHandler"

    const-string v9, "Error parsing purchase updates output"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v12, v1

    move-object v1, v7

    move v7, v4

    move-object v4, v2

    move-object v2, v6

    move-object v6, v5

    move-object v5, v12

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v3, v0

    move v4, v11

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    move-object v2, v8

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    :catch_2
    move-exception v1

    move v4, v11

    move-object v5, v3

    move-object v6, v8

    move-object v7, v2

    move-object v2, v8

    move-object v3, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v5, v3

    move-object v6, v8

    move-object v7, v2

    move-object v3, v0

    move-object v2, v8

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v6, v5

    move-object v7, v2

    move-object v2, v8

    move-object v5, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v7, v2

    move-object v2, v6

    move-object v6, v5

    move-object v5, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v12, v1

    move-object v1, v7

    move-object v7, v2

    move-object v2, v6

    move-object v6, v5

    move-object v5, v3

    move-object v3, v0

    move-object v0, v12

    goto :goto_4

    :cond_2
    move-object v1, v8

    move-object v6, v8

    goto :goto_2
.end method

.method private getReceipt(Lorg/json/JSONObject;)Lcom/amazon/inapp/purchasing/Receipt;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v0, "sku"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "itemType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/Item$ItemType;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v2

    const-string v0, "subscripionPeriod"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v4, Lcom/amazon/inapp/purchasing/Item$ItemType;->SUBSCRIPTION:Lcom/amazon/inapp/purchasing/Item$ItemType;

    if-ne v2, v4, :cond_2

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v5, "startTime"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    const-string v6, "endTime"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v0, v7

    :goto_0
    new-instance v4, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    invoke-direct {v4, v5, v0}, Lcom/amazon/inapp/purchasing/SubscriptionPeriod;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    :goto_1
    const-string v0, "token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/amazon/inapp/purchasing/Receipt;

    invoke-direct/range {v0 .. v5}, Lcom/amazon/inapp/purchasing/Receipt;-><init>(Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item$ItemType;ZLcom/amazon/inapp/purchasing/SubscriptionPeriod;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v4, v7

    goto :goto_1
.end method

.method private getUserIdResponse(Landroid/content/Intent;)Lcom/amazon/inapp/purchasing/GetUserIdResponse;
    .locals 7

    const/4 v5, 0x0

    sget-object v0, Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "userOutput"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "requestId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;->valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    move-result-object v0

    sget-object v3, Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    if-ne v0, v3, :cond_0

    const-string v3, "userId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    new-instance v3, Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    invoke-direct {v3, v2, v0, v1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;-><init>(Ljava/lang/String;Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;Ljava/lang/String;)V

    return-object v3

    :catch_0
    move-exception v1

    move-object v2, v5

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    const-string v3, "SandboxResponseHandler"

    const-string v4, "Error parsing userid output"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v1, v5

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :cond_0
    move-object v1, v5

    goto :goto_0
.end method

.method private handleItemDataResponse(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->getItemDataResponse(Landroid/content/Intent;)Lcom/amazon/inapp/purchasing/ItemDataResponse;

    move-result-object v0

    new-instance v1, Lcom/amazon/inapp/purchasing/SandboxResponseHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler$2;-><init>(Lcom/amazon/inapp/purchasing/SandboxResponseHandler;Lcom/amazon/inapp/purchasing/ItemDataResponse;)V

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->_handler:Lcom/amazon/inapp/purchasing/HandlerAdapter;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/HandlerAdapter;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handlePurchaseResponse(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->getPurchaseResponse(Landroid/content/Intent;)Lcom/amazon/inapp/purchasing/PurchaseResponse;

    move-result-object v0

    new-instance v1, Lcom/amazon/inapp/purchasing/SandboxResponseHandler$4;

    invoke-direct {v1, p0, v0}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler$4;-><init>(Lcom/amazon/inapp/purchasing/SandboxResponseHandler;Lcom/amazon/inapp/purchasing/PurchaseResponse;)V

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->_handler:Lcom/amazon/inapp/purchasing/HandlerAdapter;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/HandlerAdapter;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handlePurchaseUpdatesResponse(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->getPurchaseUpdatesResponse(Landroid/content/Intent;)Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    move-result-object v0

    new-instance v1, Lcom/amazon/inapp/purchasing/SandboxResponseHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler$1;-><init>(Lcom/amazon/inapp/purchasing/SandboxResponseHandler;Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->_handler:Lcom/amazon/inapp/purchasing/HandlerAdapter;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/HandlerAdapter;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleUserIdResponse(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->getUserIdResponse(Landroid/content/Intent;)Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    move-result-object v0

    new-instance v1, Lcom/amazon/inapp/purchasing/SandboxResponseHandler$3;

    invoke-direct {v1, p0, v0}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler$3;-><init>(Lcom/amazon/inapp/purchasing/SandboxResponseHandler;Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->_handler:Lcom/amazon/inapp/purchasing/HandlerAdapter;

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/HandlerAdapter;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public handleResponse(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v2, "SandboxResponseHandler"

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SandboxResponseHandler"

    const-string v0, "handleResponse"

    invoke-static {v2, v0}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "responseType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.testclient.iap.purchase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->handlePurchaseResponse(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "com.amazon.testclient.iap.appUserId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->handleUserIdResponse(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SandboxResponseHandler"

    const-string v1, "Error handling response."

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "com.amazon.testclient.iap.itemData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p2}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->handleItemDataResponse(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v1, "com.amazon.testclient.iap.purchaseUpdates"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;->handlePurchaseUpdatesResponse(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method