.class public Lcom/facebook/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Response$PagedResults;,
        Lcom/facebook/Response$PagingDirection;,
        Lcom/facebook/Response$PagingInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final INVALID_SESSION_FACEBOOK_ERROR_CODE:I = 0xbe

.field public static final NON_JSON_RESPONSE_PROPERTY:Ljava/lang/String; = "FACEBOOK_NON_JSON_RESULT"

.field private static final RESPONSE_CACHE_TAG:Ljava/lang/String; = "ResponseCache"

.field private static final RESPONSE_LOG_TAG:Ljava/lang/String; = "Response"

.field private static responseCache:Lcom/facebook/internal/FileLruCache;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final error:Lcom/facebook/FacebookRequestError;

.field private final graphObject:Lcom/facebook/model/GraphObject;

.field private final graphObjectList:Lcom/facebook/model/GraphObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation
.end field

.field private final isFromCache:Z

.field private final request:Lcom/facebook/Request;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/facebook/Response;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/Response;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    .locals 1
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    .line 85
    iput-object p2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    .line 86
    iput-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    .line 87
    iput-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Response;->isFromCache:Z

    .line 89
    iput-object p3, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    .line 90
    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/model/GraphObject;Z)V
    .locals 1
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "graphObject"    # Lcom/facebook/model/GraphObject;
    .param p4, "isFromCache"    # Z

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    .line 66
    iput-object p2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    .line 67
    iput-object p3, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    .line 68
    iput-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    .line 69
    iput-boolean p4, p0, Lcom/facebook/Response;->isFromCache:Z

    .line 70
    iput-object v0, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/model/GraphObjectList;Z)V
    .locals 1
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p4, "isFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "graphObjects":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    .line 76
    iput-object p2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    .line 77
    iput-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    .line 78
    iput-object p3, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    .line 79
    iput-boolean p4, p0, Lcom/facebook/Response;->isFromCache:Z

    .line 80
    iput-object v0, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    .line 81
    return-void
.end method

.method static constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    .locals 6
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "error"    # Lcom/facebook/FacebookException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/FacebookException;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Request;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 449
    .local v0, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 450
    .local v3, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 454
    return-object v3

    .line 451
    :cond_0
    new-instance v2, Lcom/facebook/Response;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/Request;

    new-instance v5, Lcom/facebook/FacebookRequestError;

    invoke-direct {v5, p1, p2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v2, v4, p1, v5}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 452
    .local v2, "response":Lcom/facebook/Response;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static createResponseFromObject(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/Response;
    .locals 10
    .param p0, "request"    # Lcom/facebook/Request;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "isFromCache"    # Z
    .param p4, "originalResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 409
    instance-of v7, p2, Lorg/json/JSONObject;

    if-eqz v7, :cond_4

    .line 410
    move-object v0, p2

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    .line 413
    .local v5, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v5, p4, p1}, Lcom/facebook/FacebookRequestError;->checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;

    move-result-object v2

    .line 414
    .local v2, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v2, :cond_1

    .line 415
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v7

    const/16 v8, 0xbe

    if-ne v7, v8, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/facebook/Request;->getSession()Lcom/facebook/Session;

    move-result-object v6

    .line 417
    .local v6, "session":Lcom/facebook/Session;
    if-eqz v6, :cond_0

    .line 418
    invoke-virtual {v6}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 421
    .end local v6    # "session":Lcom/facebook/Session;
    :cond_0
    new-instance v7, Lcom/facebook/Response;

    invoke-direct {v7, p0, p1, v2}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 439
    .end local v2    # "error":Lcom/facebook/FacebookRequestError;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v7

    .line 424
    .restart local v2    # "error":Lcom/facebook/FacebookRequestError;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const-string v7, "body"

    const-string v8, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {v5, v7, v8}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 426
    .local v1, "body":Ljava/lang/Object;
    instance-of v7, v1, Lorg/json/JSONObject;

    if-eqz v7, :cond_2

    .line 427
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "body":Ljava/lang/Object;
    invoke-static {v1}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v3

    .line 428
    .local v3, "graphObject":Lcom/facebook/model/GraphObject;
    new-instance v7, Lcom/facebook/Response;

    invoke-direct {v7, p0, p1, v3, p3}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/model/GraphObject;Z)V

    goto :goto_0

    .line 429
    .end local v3    # "graphObject":Lcom/facebook/model/GraphObject;
    .restart local v1    # "body":Ljava/lang/Object;
    :cond_2
    instance-of v7, v1, Lorg/json/JSONArray;

    if-eqz v7, :cond_3

    .line 431
    check-cast v1, Lorg/json/JSONArray;

    .end local v1    # "body":Ljava/lang/Object;
    const-class v7, Lcom/facebook/model/GraphObject;

    .line 430
    invoke-static {v1, v7}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v4

    .line 432
    .local v4, "graphObjectList":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    new-instance v7, Lcom/facebook/Response;

    invoke-direct {v7, p0, p1, v4, p3}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/model/GraphObjectList;Z)V

    goto :goto_0

    .line 435
    .end local v4    # "graphObjectList":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    .restart local v1    # "body":Ljava/lang/Object;
    :cond_3
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 438
    .end local v1    # "body":Ljava/lang/Object;
    .end local v2    # "error":Lcom/facebook/FacebookRequestError;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p2, v7, :cond_5

    .line 439
    new-instance v7, Lcom/facebook/Response;

    const/4 v8, 0x0

    invoke-direct {v7, p0, p1, v8, p3}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/model/GraphObject;Z)V

    goto :goto_0

    .line 441
    :cond_5
    new-instance v7, Lcom/facebook/FacebookException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Got unexpected object type in response, class: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 441
    invoke-direct {v7, v8}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;
    .locals 8
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "isFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Request;>;"
    sget-boolean v1, Lcom/facebook/Response;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    if-nez p3, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0    # "connection":Ljava/net/HttpURLConnection;
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 358
    .restart local p0    # "connection":Ljava/net/HttpURLConnection;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 359
    .local v3, "numRequests":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 360
    .local v6, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    move-object v4, p2

    .line 362
    .local v4, "originalResult":Ljava/lang/Object;
    const/4 v1, 0x1

    if-ne v3, v1, :cond_1

    .line 363
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/Request;

    .line 368
    .local v5, "request":Lcom/facebook/Request;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 369
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "body"

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 371
    .local v1, "responseCode":I
    :goto_0
    const-string v7, "code"

    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 373
    new-instance v1, Lorg/json/JSONArray;

    .end local v1    # "responseCode":I
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 374
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 377
    move-object p2, v1

    .line 385
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "request":Lcom/facebook/Request;
    .end local p2    # "object":Ljava/lang/Object;
    :cond_1
    :goto_1
    instance-of v1, p2, Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    move-object v0, p2

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 386
    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    .end local p0    # "connection":Ljava/net/HttpURLConnection;
    const-string p1, "Unexpected number of results"

    .end local p1    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Request;>;"
    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 387
    .local p0, "exception":Lcom/facebook/FacebookException;
    throw p0

    .line 370
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "request":Lcom/facebook/Request;
    .local p0, "connection":Ljava/net/HttpURLConnection;
    .restart local p1    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Request;>;"
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_3
    const/16 v1, 0xc8

    goto :goto_0

    .line 378
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/facebook/Response;

    new-instance v7, Lcom/facebook/FacebookRequestError;

    invoke-direct {v7, p0, v1}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v2, v5, p0, v7}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 380
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 381
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/facebook/Response;

    new-instance v7, Lcom/facebook/FacebookRequestError;

    invoke-direct {v7, p0, v1}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v2, v5, p0, v7}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 390
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "request":Lcom/facebook/Request;
    .end local p2    # "object":Ljava/lang/Object;
    :cond_4
    move-object v0, p2

    check-cast v0, Lorg/json/JSONArray;

    move-object v2, v0

    .line 392
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 p2, 0x0

    .local p2, "i":I
    move v1, p2

    .end local v3    # "numRequests":I
    .end local p2    # "i":I
    .local v1, "i":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lt v1, p2, :cond_5

    .line 404
    return-object v6

    .line 393
    :cond_5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/Request;

    .line 395
    .local v3, "request":Lcom/facebook/Request;
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 396
    .local p2, "obj":Ljava/lang/Object;
    invoke-static {v3, p0, p2, p3, v4}, Lcom/facebook/Response;->createResponseFromObject(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/Response;

    move-result-object p2

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_3

    .line 392
    :goto_3
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "i":I
    .local p2, "i":I
    move v1, p2

    .end local p2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 397
    :catch_2
    move-exception p2

    .line 398
    .local p2, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/facebook/Response;

    new-instance v7, Lcom/facebook/FacebookRequestError;

    invoke-direct {v7, p0, p2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v3, p0, v7}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 399
    .end local p2    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception p2

    .line 400
    .local p2, "e":Lcom/facebook/FacebookException;
    new-instance v5, Lcom/facebook/Response;

    new-instance v7, Lcom/facebook/FacebookRequestError;

    invoke-direct {v7, p0, p2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v3, p0, v7}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method static createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/RequestBatch;
    .param p3, "isFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-static {p0}, Lcom/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "responseString":Ljava/lang/String;
    sget-object v1, Lcom/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

    const-string v2, "Response"

    .line 336
    const-string v3, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 337
    aput-object v0, v4, v5

    .line 335
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-static {v0, p1, p2, p3}, Lcom/facebook/Response;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    .locals 9
    .param p0, "responseString"    # Ljava/lang/String;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/RequestBatch;
    .param p3, "isFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 345
    .local v2, "tokener":Lorg/json/JSONTokener;
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 347
    .local v1, "resultObject":Ljava/lang/Object;
    invoke-static {p1, p2, v1, p3}, Lcom/facebook/Response;->createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    .line 348
    .local v0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    sget-object v3, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v4, "Response"

    const-string v5, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 349
    invoke-virtual {p2}, Lcom/facebook/RequestBatch;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    .line 348
    invoke-static {v3, v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    return-object v0
.end method

.method static fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    .locals 13
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "requests"    # Lcom/facebook/RequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "Response <Error>: %s"

    const-string v8, "Response"

    .line 265
    const/4 v7, 0x0

    .line 267
    .local v7, "stream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 268
    .local v1, "cache":Lcom/facebook/internal/FileLruCache;
    const/4 v2, 0x0

    .line 269
    .local v2, "cacheKey":Ljava/lang/String;
    instance-of v8, p1, Lcom/facebook/internal/CacheableRequestBatch;

    if-eqz v8, :cond_2

    .line 270
    move-object v0, p1

    check-cast v0, Lcom/facebook/internal/CacheableRequestBatch;

    move-object v3, v0

    .line 271
    .local v3, "cacheableRequestBatch":Lcom/facebook/internal/CacheableRequestBatch;
    invoke-static {}, Lcom/facebook/Response;->getResponseCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v1

    .line 272
    invoke-virtual {v3}, Lcom/facebook/internal/CacheableRequestBatch;->getCacheKeyOverride()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->size()I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 276
    invoke-virtual {p1, v9}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v2

    .line 284
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/internal/CacheableRequestBatch;->getForceRoundTrip()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v1, :cond_2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 286
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 287
    if-eqz v7, :cond_4

    .line 288
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v8, p1, v9}, Lcom/facebook/Response;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 294
    invoke-static {v7}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 325
    .end local v3    # "cacheableRequestBatch":Lcom/facebook/internal/CacheableRequestBatch;
    :goto_1
    return-object v8

    .line 278
    .restart local v3    # "cacheableRequestBatch":Lcom/facebook/internal/CacheableRequestBatch;
    :cond_1
    sget-object v8, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v9, "ResponseCache"

    .line 279
    const-string v10, "Not using cache for cacheable request because no key was specified"

    .line 278
    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :catch_0
    move-exception v8

    .line 294
    invoke-static {v7}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 301
    .end local v3    # "cacheableRequestBatch":Lcom/facebook/internal/CacheableRequestBatch;
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0x190

    if-lt v8, v9, :cond_5

    .line 302
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    .line 313
    :cond_3
    :goto_3
    const/4 v8, 0x0

    invoke-static {v7, p0, p1, v8}, Lcom/facebook/Response;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    :try_end_1
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 327
    invoke-static {v7}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 291
    .restart local v3    # "cacheableRequestBatch":Lcom/facebook/internal/CacheableRequestBatch;
    :catch_1
    move-exception v8

    .line 294
    invoke-static {v7}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 292
    :catch_2
    move-exception v8

    .line 294
    invoke-static {v7}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 293
    :catchall_0
    move-exception v8

    .line 294
    invoke-static {v7}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 295
    throw v8

    .line 294
    :cond_4
    invoke-static {v7}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 304
    .end local v3    # "cacheableRequestBatch":Lcom/facebook/internal/CacheableRequestBatch;
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 305
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-eqz v7, :cond_3

    .line 306
    invoke-virtual {v1, v2, v7}, Lcom/facebook/internal/FileLruCache;->interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_2
    .catch Lcom/facebook/FacebookException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 307
    .local v6, "interceptStream":Ljava/io/InputStream;
    if-eqz v6, :cond_3

    .line 308
    move-object v7, v6

    goto :goto_3

    .line 314
    .end local v6    # "interceptStream":Ljava/io/InputStream;
    :catch_3
    move-exception v8

    move-object v5, v8

    .line 315
    .local v5, "facebookException":Lcom/facebook/FacebookException;
    :try_start_3
    sget-object v8, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v9, "Response"

    const-string v10, "Response <Error>: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-static {v8, v9, v10, v11}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    invoke-static {p1, p0, v5}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .line 327
    invoke-static {v7}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 317
    .end local v5    # "facebookException":Lcom/facebook/FacebookException;
    :catch_4
    move-exception v8

    move-object v4, v8

    .line 318
    .local v4, "exception":Lorg/json/JSONException;
    :try_start_4
    sget-object v8, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v9, "Response"

    const-string v10, "Response <Error>: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v8, v9, v10, v11}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    new-instance v8, Lcom/facebook/FacebookException;

    invoke-direct {v8, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v8}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v8

    .line 327
    invoke-static {v7}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 320
    .end local v4    # "exception":Lorg/json/JSONException;
    :catch_5
    move-exception v8

    move-object v4, v8

    .line 321
    .local v4, "exception":Ljava/io/IOException;
    :try_start_5
    sget-object v8, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v9, "Response"

    const-string v10, "Response <Error>: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v8, v9, v10, v11}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    new-instance v8, Lcom/facebook/FacebookException;

    invoke-direct {v8, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v8}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v8

    .line 327
    invoke-static {v7}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 323
    .end local v4    # "exception":Ljava/io/IOException;
    :catch_6
    move-exception v8

    move-object v4, v8

    .line 324
    .local v4, "exception":Ljava/lang/SecurityException;
    :try_start_6
    sget-object v8, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v9, "Response"

    const-string v10, "Response <Error>: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v8, v9, v10, v11}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    new-instance v8, Lcom/facebook/FacebookException;

    invoke-direct {v8, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v8}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v8

    .line 327
    invoke-static {v7}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 326
    .end local v4    # "exception":Ljava/lang/SecurityException;
    :catchall_1
    move-exception v8

    .line 327
    invoke-static {v7}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 328
    throw v8
.end method

.method static getResponseCache()Lcom/facebook/internal/FileLruCache;
    .locals 4

    .prologue
    .line 253
    sget-object v1, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    if-nez v1, :cond_0

    .line 254
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v0

    .line 255
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 256
    new-instance v1, Lcom/facebook/internal/FileLruCache;

    const-string v2, "ResponseCache"

    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v1, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    .line 260
    .end local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    sget-object v1, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    return-object v1
.end method


# virtual methods
.method public final getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final getError()Lcom/facebook/FacebookRequestError;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    return-object v0
.end method

.method public final getGraphObject()Lcom/facebook/model/GraphObject;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    return-object v0
.end method

.method public final getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    .line 121
    :cond_0
    if-nez p1, :cond_1

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must pass in a valid interface that extends GraphObject"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-interface {v0, p1}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final getGraphObjectList()Lcom/facebook/model/GraphObjectList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    return-object v0
.end method

.method public final getGraphObjectListAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/model/GraphObjectList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    invoke-interface {v0, p1}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getIsFromCache()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/facebook/Response;->isFromCache:Z

    return v0
.end method

.method public getRequest()Lcom/facebook/Request;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    return-object v0
.end method

.method public getRequestForPagedResults(Lcom/facebook/Response$PagingDirection;)Lcom/facebook/Request;
    .locals 8
    .param p1, "direction"    # Lcom/facebook/Response$PagingDirection;

    .prologue
    const/4 v7, 0x0

    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, "link":Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v5, :cond_0

    .line 195
    iget-object v5, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    const-class v6, Lcom/facebook/Response$PagedResults;

    invoke-interface {v5, v6}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v2

    check-cast v2, Lcom/facebook/Response$PagedResults;

    .line 196
    .local v2, "pagedResults":Lcom/facebook/Response$PagedResults;
    invoke-interface {v2}, Lcom/facebook/Response$PagedResults;->getPaging()Lcom/facebook/Response$PagingInfo;

    move-result-object v3

    .line 197
    .local v3, "pagingInfo":Lcom/facebook/Response$PagingInfo;
    if-eqz v3, :cond_0

    .line 198
    sget-object v5, Lcom/facebook/Response$PagingDirection;->NEXT:Lcom/facebook/Response$PagingDirection;

    if-ne p1, v5, :cond_1

    .line 199
    invoke-interface {v3}, Lcom/facebook/Response$PagingInfo;->getNext()Ljava/lang/String;

    move-result-object v1

    .line 205
    .end local v2    # "pagedResults":Lcom/facebook/Response$PagedResults;
    .end local v3    # "pagingInfo":Lcom/facebook/Response$PagingInfo;
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v7

    .line 222
    :goto_1
    return-object v5

    .line 201
    .restart local v2    # "pagedResults":Lcom/facebook/Response$PagedResults;
    .restart local v3    # "pagingInfo":Lcom/facebook/Response$PagingInfo;
    :cond_1
    invoke-interface {v3}, Lcom/facebook/Response$PagingInfo;->getPrevious()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 209
    .end local v2    # "pagedResults":Lcom/facebook/Response$PagedResults;
    .end local v3    # "pagingInfo":Lcom/facebook/Response$PagingInfo;
    :cond_2
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    invoke-virtual {v5}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v7

    .line 212
    goto :goto_1

    .line 217
    :cond_3
    :try_start_0
    new-instance v4, Lcom/facebook/Request;

    iget-object v5, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    invoke-virtual {v5}, Lcom/facebook/Request;->getSession()Lcom/facebook/Session;

    move-result-object v5

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .local v4, "pagingRequest":Lcom/facebook/Request;
    move-object v5, v4

    .line 222
    goto :goto_1

    .line 218
    .end local v4    # "pagingRequest":Lcom/facebook/Request;
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, "e":Ljava/net/MalformedURLException;
    move-object v5, v7

    .line 219
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 232
    :try_start_0
    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 237
    .local v1, "responseCode":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " responseCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    const-string v3, ", graphObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    const-string v3, ", isFromCache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/facebook/Response;->isFromCache:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 240
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    return-object v2

    .line 232
    .end local v1    # "responseCode":Ljava/lang/String;
    :cond_0
    const/16 v5, 0xc8

    goto :goto_0

    .line 233
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 234
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "unknown"

    .restart local v1    # "responseCode":Ljava/lang/String;
    goto :goto_1
.end method
