.class public Lcom/fusepowered/fuseapi/MessagingTask;
.super Ljava/lang/Object;
.source "MessagingTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MessagingTask"


# instance fields
.field private actionType:Lcom/fusepowered/util/ActionType;

.field public fuseCallback:Lcom/fusepowered/util/FuseCallback;

.field private jsonObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field networkService:Lcom/fusepowered/fuseapi/NetworkService;

.field private response:Lcom/fusepowered/util/Response;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;Lcom/fusepowered/util/ActionType;)V
    .locals 1
    .parameter
    .parameter "callback"
    .parameter "actionType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            "Lcom/fusepowered/util/ActionType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, jsonObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/fuseapi/MessagingTask;->actionType:Lcom/fusepowered/util/ActionType;

    .line 33
    new-instance v0, Lcom/fusepowered/fuseapi/NetworkService;

    invoke-direct {v0}, Lcom/fusepowered/fuseapi/NetworkService;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/fuseapi/MessagingTask;->networkService:Lcom/fusepowered/fuseapi/NetworkService;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/fuseapi/MessagingTask;->jsonObjects:Ljava/util/ArrayList;

    .line 37
    iget-object v0, p0, Lcom/fusepowered/fuseapi/MessagingTask;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    iput-object p3, p0, Lcom/fusepowered/fuseapi/MessagingTask;->actionType:Lcom/fusepowered/util/ActionType;

    .line 39
    iput-object p2, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    .line 40
    return-void
.end method

.method public static generateURL(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .parameter "hostName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, commonParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 62
    .local v4, set:Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 63
    .local v0, i:Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 64
    .local v3, queryString:Lcom/fusepowered/util/QueryString;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 67
    .local v1, me:Ljava/util/Map$Entry;
    if-nez v3, :cond_0

    .line 68
    new-instance v3, Lcom/fusepowered/util/QueryString;

    .end local v3           #queryString:Lcom/fusepowered/util/QueryString;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/fusepowered/util/QueryString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3       #queryString:Lcom/fusepowered/util/QueryString;
    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/fusepowered/util/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v1           #me:Ljava/util/Map$Entry;
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 76
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 77
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    .restart local v1       #me:Ljava/util/Map$Entry;
    if-nez v3, :cond_2

    .line 81
    new-instance v3, Lcom/fusepowered/util/QueryString;

    .end local v3           #queryString:Lcom/fusepowered/util/QueryString;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/fusepowered/util/QueryString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3       #queryString:Lcom/fusepowered/util/QueryString;
    goto :goto_1

    .line 84
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/fusepowered/util/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    .end local v1           #me:Ljava/util/Map$Entry;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/fusepowered/util/QueryString;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, message:Ljava/lang/String;
    return-object v2
.end method

.method private processError(Lcom/fusepowered/util/FuseGameDataError;Lcom/fusepowered/util/FuseLoginError;)V
    .locals 2
    .parameter "gameDataError"
    .parameter "error"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    instance-of v0, v0, Lcom/fusepowered/util/FuseGameDataCallback;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    check-cast v0, Lcom/fusepowered/util/FuseGameDataCallback;

    invoke-virtual {v0, p1}, Lcom/fusepowered/util/FuseGameDataCallback;->setFuseGameDataError(Lcom/fusepowered/util/FuseGameDataError;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    instance-of v0, v0, Lcom/fusepowered/util/FuseAdCallback;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0, p2}, Lcom/fusepowered/util/FuseCallback;->sessionLoginError(Lcom/fusepowered/util/FuseLoginError;)V

    .line 181
    iget-object v0, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    check-cast v0, Lcom/fusepowered/util/FuseAdCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseAdCallback;->adWillClose()V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/fuseapi/MessagingTask;->actionType:Lcom/fusepowered/util/ActionType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/fuseapi/MessagingTask;->actionType:Lcom/fusepowered/util/ActionType;

    sget-object v1, Lcom/fusepowered/util/ActionType;->ACTION_SESSION_START:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0, p2}, Lcom/fusepowered/util/FuseCallback;->sessionLoginError(Lcom/fusepowered/util/FuseLoginError;)V

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseCallback;->callback()V

    .line 187
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/fusepowered/fuseapi/MessagingTask;->sendJsonMessage()V

    .line 192
    return-void
.end method

.method public sendJsonMessage()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v7, "reqID"

    const-string v7, "action"

    .line 93
    new-instance v7, Lcom/fusepowered/util/Response;

    invoke-direct {v7}, Lcom/fusepowered/util/Response;-><init>()V

    iput-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->response:Lcom/fusepowered/util/Response;

    .line 96
    :try_start_0
    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->response:Lcom/fusepowered/util/Response;

    iget-object v8, p0, Lcom/fusepowered/fuseapi/MessagingTask;->networkService:Lcom/fusepowered/fuseapi/NetworkService;

    iget-object v9, p0, Lcom/fusepowered/fuseapi/MessagingTask;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/fusepowered/fuseapi/MessagingTask;->actionType:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v8, v9, v10}, Lcom/fusepowered/fuseapi/NetworkService;->sendRequest(Ljava/lang/String;Lcom/fusepowered/util/ActionType;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fusepowered/util/Response;->setXml(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->response:Lcom/fusepowered/util/Response;

    invoke-virtual {v7}, Lcom/fusepowered/util/Response;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 106
    const/4 v6, 0x1

    .line 107
    .local v6, success:Z
    :goto_0
    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->jsonObjects:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_4

    .line 108
    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 110
    .local v4, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v7, "action"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 111
    const-string v7, "action"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, actionCode:Ljava/lang/String;
    const/4 v3, 0x0

    .line 113
    .local v3, gameDataRequestId:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/fusepowered/util/ActionType;->getActionTypeByCode(I)Lcom/fusepowered/util/ActionType;

    move-result-object v1

    .line 114
    .local v1, actionType:Lcom/fusepowered/util/ActionType;
    sget-object v7, Lcom/fusepowered/util/ActionType;->ACTION_GET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    if-eq v1, v7, :cond_0

    sget-object v7, Lcom/fusepowered/util/ActionType;->ACTION_SET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    if-ne v1, v7, :cond_1

    .line 115
    :cond_0
    const-string v7, "reqID"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 116
    const-string v7, "reqID"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    if-eqz v7, :cond_3

    .line 123
    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    iget-object v8, p0, Lcom/fusepowered/fuseapi/MessagingTask;->response:Lcom/fusepowered/util/Response;

    invoke-virtual {v7, v8, v1, v3}, Lcom/fusepowered/util/FuseCallback;->parseResponse(Lcom/fusepowered/util/Response;Lcom/fusepowered/util/ActionType;Ljava/lang/String;)Z

    move-result v6

    .line 125
    sget-object v7, Lcom/fusepowered/util/ActionType;->ACTION_SET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    if-ne v1, v7, :cond_7

    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v12, :cond_7

    if-eqz v6, :cond_7

    .line 126
    if-eqz v3, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v5, v7

    .line 131
    .local v5, reqId:I
    :goto_2
    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    check-cast v7, Lcom/fusepowered/util/FuseGameDataCallback;

    invoke-virtual {v7, v5}, Lcom/fusepowered/util/FuseGameDataCallback;->gameDataSetAcknowledged(I)V

    .line 143
    .end local v5           #reqId:I
    :cond_2
    :goto_3
    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    iget-boolean v7, v7, Lcom/fusepowered/util/FuseCallback;->isClientRequestAd:Z

    if-eqz v7, :cond_9

    .line 146
    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/fusepowered/util/FuseCallback;->isClientRequestAd:Z

    .line 147
    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    sget-object v8, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v8}, Lcom/fusepowered/util/ResponseValues;->peekAd()Lcom/fusepowered/util/Ad;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fusepowered/util/Ad;->hasHtmlBody()Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v12

    :goto_4
    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/fusepowered/util/FuseCallback;->adAvailabilityResponse(II)V

    .line 159
    .end local v0           #actionCode:Ljava/lang/String;
    .end local v1           #actionType:Lcom/fusepowered/util/ActionType;
    .end local v3           #gameDataRequestId:Ljava/lang/String;
    :cond_3
    :goto_5
    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->jsonObjects:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 161
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 162
    .local v2, e:Lorg/json/JSONException;
    sget-object v7, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_XML_PARSE_ERROR:Lcom/fusepowered/util/FuseGameDataError;

    sget-object v8, Lcom/fusepowered/util/FuseLoginError;->FUSE_ERROR_XML_PARSE_ERROR:Lcom/fusepowered/util/FuseLoginError;

    invoke-direct {p0, v7, v8}, Lcom/fusepowered/fuseapi/MessagingTask;->processError(Lcom/fusepowered/util/FuseGameDataError;Lcom/fusepowered/util/FuseLoginError;)V

    goto/16 :goto_0

    .line 98
    .end local v2           #e:Lorg/json/JSONException;
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .end local v6           #success:Z
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 99
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "FuseAPI"

    const-string v8, "sendJsonMessage NetworkException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    sget-object v7, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NOT_CONNECTED:Lcom/fusepowered/util/FuseGameDataError;

    sget-object v8, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_NOT_CONNECTED:Lcom/fusepowered/util/FuseLoginError;

    invoke-direct {p0, v7, v8}, Lcom/fusepowered/fuseapi/MessagingTask;->processError(Lcom/fusepowered/util/FuseGameDataError;Lcom/fusepowered/util/FuseLoginError;)V

    .line 101
    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->response:Lcom/fusepowered/util/Response;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/fusepowered/util/Response;->setXml(Ljava/lang/String;)V

    .line 169
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    :goto_6
    return-void

    .line 119
    .restart local v0       #actionCode:Ljava/lang/String;
    .restart local v1       #actionType:Lcom/fusepowered/util/ActionType;
    .restart local v3       #gameDataRequestId:Ljava/lang/String;
    .restart local v4       #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #success:Z
    :cond_5
    :try_start_2
    const-string v7, "MessagingTask"

    const-string v8, "Missing game data request id"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move v5, v11

    .line 126
    goto :goto_2

    .line 134
    :cond_7
    sget-object v7, Lcom/fusepowered/util/ActionType;->ACTION_GET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    if-ne v1, v7, :cond_2

    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v12, :cond_2

    .line 138
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/fusepowered/util/ResponseValues;->setGameKeyValuePairs(Lcom/fusepowered/util/GameKeyValuePairs;)V

    goto :goto_3

    :cond_8
    move v8, v11

    .line 147
    goto :goto_4

    .line 150
    :cond_9
    iget-object v7, p0, Lcom/fusepowered/fuseapi/MessagingTask;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-virtual {v7}, Lcom/fusepowered/util/FuseCallback;->callback()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 167
    .end local v0           #actionCode:Ljava/lang/String;
    .end local v1           #actionType:Lcom/fusepowered/util/ActionType;
    .end local v3           #gameDataRequestId:Ljava/lang/String;
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .end local v6           #success:Z
    :cond_a
    sget-object v7, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_REQUEST_FAILED:Lcom/fusepowered/util/FuseGameDataError;

    sget-object v8, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_REQUEST_FAILED:Lcom/fusepowered/util/FuseLoginError;

    invoke-direct {p0, v7, v8}, Lcom/fusepowered/fuseapi/MessagingTask;->processError(Lcom/fusepowered/util/FuseGameDataError;Lcom/fusepowered/util/FuseLoginError;)V

    goto :goto_6
.end method
