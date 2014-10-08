.class public Lcom/fusepowered/fuseapi/MessagingService;
.super Ljava/lang/Object;
.source "MessagingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/fuseapi/MessagingService$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessagingService"

.field private static gameJsonObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static jsonObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static lock:Ljava/lang/Object;

.field private static sessionInitiated:Z

.field static threadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/fuseapi/MessagingService;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusepowered/fuseapi/MessagingService;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    return-void
.end method

.method private static addRequestToJsonList(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/fusepowered/fuseapi/MessagingService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 46
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    .line 48
    :cond_1
    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 49
    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_2
    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 53
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    .line 55
    :cond_4
    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 56
    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_5
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static addRequestToJsonList(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->addRequestToJsonList(Ljava/util/HashMap;)V

    .line 32
    invoke-static {p1}, Lcom/fusepowered/fuseapi/MessagingService;->isData(Ljava/util/HashMap;)Z

    move-result v0

    .line 33
    .local v0, "isData":Z
    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    if-nez v0, :cond_0

    .line 35
    :try_start_0
    sget-object v2, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/fusepowered/fuseapi/MessagingService;->mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :goto_0
    monitor-exit v1

    .line 41
    return-void

    .line 38
    :cond_0
    sget-object v2, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/fusepowered/fuseapi/MessagingService;->mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static flush(Lcom/fusepowered/util/ActionType;Lcom/fusepowered/util/FuseCallback;)V
    .locals 8
    .param p0, "actionType"    # Lcom/fusepowered/util/ActionType;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    const/4 v7, 0x1

    const-string v5, "session_id"

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    sget-object v5, Lcom/fusepowered/fuseapi/MessagingService;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 159
    :try_start_0
    sget-object v6, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v7, :cond_3

    .line 160
    new-instance v2, Lcom/fusepowered/fuseapi/MessagingTask;

    sget-object v6, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-direct {v2, v6, p1, p0}, Lcom/fusepowered/fuseapi/MessagingTask;-><init>(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;Lcom/fusepowered/util/ActionType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    .end local v1    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .local v2, "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :try_start_1
    sget-object v6, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 162
    sget-object v6, Lcom/fusepowered/fuseapi/MessagingService;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 165
    :goto_0
    sget-object v6, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v7, :cond_2

    .line 167
    sget-object v6, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 169
    .local v3, "x":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/json/JSONObject;>;"
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .local v4, "y":Lorg/json/JSONObject;
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    :try_start_2
    const-string v6, "session_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 173
    const-string v6, "session_id"

    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v7}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :cond_0
    :goto_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "y":Lorg/json/JSONObject;
    check-cast v4, Lorg/json/JSONObject;

    .restart local v4    # "y":Lorg/json/JSONObject;
    goto :goto_1

    .line 174
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 176
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 184
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "x":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/json/JSONObject;>;"
    .end local v4    # "y":Lorg/json/JSONObject;
    :catchall_0
    move-exception v6

    move-object v1, v2

    .end local v2    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v1    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :goto_3
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 180
    .end local v1    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v2    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v3    # "x":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/json/JSONObject;>;"
    .restart local v4    # "y":Lorg/json/JSONObject;
    :cond_1
    :try_start_5
    new-instance v1, Lcom/fusepowered/fuseapi/MessagingTask;

    sget-object v6, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-direct {v1, v6, p1, p0}, Lcom/fusepowered/fuseapi/MessagingTask;-><init>(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;Lcom/fusepowered/util/ActionType;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    .end local v2    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v1    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :try_start_6
    sget-object v6, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 182
    sget-object v6, Lcom/fusepowered/fuseapi/MessagingService;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 184
    .end local v3    # "x":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/json/JSONObject;>;"
    .end local v4    # "y":Lorg/json/JSONObject;
    :goto_4
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 186
    return-void

    .line 184
    :catchall_1
    move-exception v6

    goto :goto_3

    .end local v1    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v2    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :cond_2
    move-object v1, v2

    .end local v2    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v1    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    goto :goto_4

    :cond_3
    move-object v2, v1

    .end local v1    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v2    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    goto :goto_0
.end method

.method private static getRequestActionType(Ljava/util/HashMap;)Lcom/fusepowered/util/ActionType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/util/ActionType;"
        }
    .end annotation

    .prologue
    .local p0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "action"

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "actionType":Lcom/fusepowered/util/ActionType;
    const-string v1, "action"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "action"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/fusepowered/util/ActionType;->getActionTypeByCode(I)Lcom/fusepowered/util/ActionType;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0
.end method

.method private static getRequestActionType(Lorg/json/JSONObject;)Lcom/fusepowered/util/ActionType;
    .locals 5
    .param p0, "params"    # Lorg/json/JSONObject;

    .prologue
    const-string v4, "action"

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "actionType":Lcom/fusepowered/util/ActionType;
    const-string v3, "action"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    :try_start_0
    const-string v3, "action"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 96
    .local v2, "param":Ljava/lang/Object;
    check-cast v2, Ljava/lang/String;

    .end local v2    # "param":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/fusepowered/util/ActionType;->getActionTypeByCode(I)Lcom/fusepowered/util/ActionType;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 99
    .local v1, "jse":Lorg/json/JSONException;
    const-string v3, "MessagingService"

    const-string v4, "Unexpected exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isData(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->getRequestActionType(Ljava/util/HashMap;)Lcom/fusepowered/util/ActionType;

    move-result-object v0

    .line 80
    .local v0, "actionType":Lcom/fusepowered/util/ActionType;
    invoke-static {v0}, Lcom/fusepowered/util/ActionType;->isDataAction(Lcom/fusepowered/util/ActionType;)Z

    move-result v1

    return v1
.end method

.method private static isSessionInitiated(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "session_id"

    .line 106
    const-string v0, "session_id"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "session_id"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/fuseapi/MessagingService;->sessionInitiated:Z

    .line 111
    :cond_0
    sget-boolean v0, Lcom/fusepowered/fuseapi/MessagingService;->sessionInitiated:Z

    return v0
.end method

.method private static isTimeToFlush(Lcom/fusepowered/util/ActionType;Z)Z
    .locals 5
    .param p0, "actionType"    # Lcom/fusepowered/util/ActionType;
    .param p1, "isSessionInitiated"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 190
    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService$1;->$SwitchMap$com$fusepowered$util$ActionType:[I

    invoke-virtual {p0}, Lcom/fusepowered/util/ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 201
    if-nez p1, :cond_0

    .line 202
    sput-boolean v4, Lcom/fusepowered/fuseapi/MessagingService;->sessionInitiated:Z

    move v1, v4

    .line 229
    :goto_0
    return v1

    :pswitch_0
    move v1, v3

    .line 195
    goto :goto_0

    .line 205
    :cond_0
    sget-boolean v1, Lcom/fusepowered/fuseapi/MessagingService;->sessionInitiated:Z

    if-nez v1, :cond_1

    .line 206
    sput-boolean v3, Lcom/fusepowered/fuseapi/MessagingService;->sessionInitiated:Z

    move v1, v3

    .line 207
    goto :goto_0

    .line 210
    :cond_1
    invoke-static {p0}, Lcom/fusepowered/util/ActionType;->isDataAction(Lcom/fusepowered/util/ActionType;)Z

    move-result v0

    .line 211
    .local v0, "isData":Z
    if-nez v0, :cond_2

    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_3

    :cond_2
    move v1, v3

    .line 212
    goto :goto_0

    .line 215
    :cond_3
    sget-object v1, Lcom/fusepowered/fuseapi/MessagingService$1;->$SwitchMap$com$fusepowered$util$ActionType:[I

    invoke-virtual {p0}, Lcom/fusepowered/util/ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    move v1, v4

    .line 229
    goto :goto_0

    :pswitch_1
    move v1, v3

    .line 227
    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 215
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;*>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    .local v3, "k":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 69
    .local v4, "v":Ljava/lang/Object;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "k":Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "FuseAPI"

    const-string v6, "mapToJson JSONException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v2

    .line 69
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "k":Ljava/lang/String;
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_1
    :try_start_1
    const-string v5, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V
    .locals 1
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;Z)V

    .line 116
    return-void
.end method

.method public static sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;Z)V
    .locals 4
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;
    .param p3, "doSendNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->addRequestToJsonList(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 120
    if-eqz p3, :cond_0

    .line 121
    invoke-static {p1}, Lcom/fusepowered/fuseapi/MessagingService;->getRequestActionType(Ljava/util/HashMap;)Lcom/fusepowered/util/ActionType;

    move-result-object v0

    .line 122
    .local v0, "actionType":Lcom/fusepowered/util/ActionType;
    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->isSessionInitiated(Ljava/util/HashMap;)Z

    move-result v1

    .line 123
    .local v1, "isSessionInitiated":Z
    invoke-static {v0, v1}, Lcom/fusepowered/fuseapi/MessagingService;->isTimeToFlush(Lcom/fusepowered/util/ActionType;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    sget-object v2, Lcom/fusepowered/fuseapi/MessagingService;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 125
    :try_start_0
    invoke-static {v0, p2}, Lcom/fusepowered/fuseapi/MessagingService;->flush(Lcom/fusepowered/util/ActionType;Lcom/fusepowered/util/FuseCallback;)V

    .line 126
    monitor-exit v2

    .line 129
    .end local v0    # "actionType":Lcom/fusepowered/util/ActionType;
    .end local v1    # "isSessionInitiated":Z
    :cond_0
    return-void

    .line 126
    .restart local v0    # "actionType":Lcom/fusepowered/util/ActionType;
    .restart local v1    # "isSessionInitiated":Z
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static sendJsonMessage(Ljava/util/HashMap;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseCallback;Z)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;
    .param p3, "doSendNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lcom/fusepowered/util/FuseCallback;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->addRequestToJsonList(Ljava/util/HashMap;)V

    .line 133
    sget-object v2, Lcom/fusepowered/fuseapi/MessagingService;->gameJsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    if-eqz p3, :cond_0

    .line 135
    invoke-static {p1}, Lcom/fusepowered/fuseapi/MessagingService;->getRequestActionType(Lorg/json/JSONObject;)Lcom/fusepowered/util/ActionType;

    move-result-object v0

    .line 136
    .local v0, "actionType":Lcom/fusepowered/util/ActionType;
    invoke-static {p0}, Lcom/fusepowered/fuseapi/MessagingService;->isSessionInitiated(Ljava/util/HashMap;)Z

    move-result v1

    .line 137
    .local v1, "isSessionInitiated":Z
    invoke-static {v0, v1}, Lcom/fusepowered/fuseapi/MessagingService;->isTimeToFlush(Lcom/fusepowered/util/ActionType;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    sget-object v2, Lcom/fusepowered/fuseapi/MessagingService;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 139
    :try_start_0
    invoke-static {v0, p2}, Lcom/fusepowered/fuseapi/MessagingService;->flush(Lcom/fusepowered/util/ActionType;Lcom/fusepowered/util/FuseCallback;)V

    .line 140
    monitor-exit v2

    .line 143
    .end local v0    # "actionType":Lcom/fusepowered/util/ActionType;
    .end local v1    # "isSessionInitiated":Z
    :cond_0
    return-void

    .line 140
    .restart local v0    # "actionType":Lcom/fusepowered/util/ActionType;
    .restart local v1    # "isSessionInitiated":Z
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static declared-synchronized sendSyncJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "commonParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v2, Lcom/fusepowered/fuseapi/MessagingService;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->addRequestToJsonList(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    sget-object v3, Lcom/fusepowered/fuseapi/MessagingService;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    :try_start_1
    new-instance v1, Lcom/fusepowered/fuseapi/MessagingTask;

    sget-object v4, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/fusepowered/fuseapi/MessagingService;->getRequestActionType(Ljava/util/HashMap;)Lcom/fusepowered/util/ActionType;

    move-result-object v5

    invoke-direct {v1, v4, p2, v5}, Lcom/fusepowered/fuseapi/MessagingTask;-><init>(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;Lcom/fusepowered/util/ActionType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v0    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .local v1, "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :try_start_2
    sget-object v4, Lcom/fusepowered/fuseapi/MessagingService;->jsonObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 151
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 152
    :try_start_3
    invoke-virtual {v1}, Lcom/fusepowered/fuseapi/MessagingTask;->sendJsonMessage()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    monitor-exit v2

    return-void

    .line 151
    .end local v1    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v0    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :catchall_0
    move-exception v4

    :goto_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 146
    .end local v0    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :catchall_1
    move-exception v3

    monitor-exit v2

    throw v3

    .line 151
    .restart local v1    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    :catchall_2
    move-exception v4

    move-object v0, v1

    .end local v1    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    .restart local v0    # "messagingTask":Lcom/fusepowered/fuseapi/MessagingTask;
    goto :goto_0
.end method
