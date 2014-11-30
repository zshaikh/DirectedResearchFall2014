.class public abstract Lcom/nativex/common/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/common/Request$HTTP_ACTION;
    }
.end annotation


# static fields
.field public static defaultClient:Lorg/apache/http/client/HttpClient;


# instance fields
.field private actionType:Ljava/lang/Integer;

.field private enableLogging:Z

.field private httpAction:Lcom/nativex/common/Request$HTTP_ACTION;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private listener:Lcom/nativex/common/OnRequestCompletedListener;

.field private request:Ljava/lang/String;

.field private requestType:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/common/Request;->defaultClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/nativex/common/Request;->listener:Lcom/nativex/common/OnRequestCompletedListener;

    .line 47
    iput-object v0, p0, Lcom/nativex/common/Request;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 48
    iput-object v0, p0, Lcom/nativex/common/Request;->actionType:Ljava/lang/Integer;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/common/Request;->enableLogging:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nativex/common/Request$HTTP_ACTION;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "requestType"    # Ljava/lang/String;
    .param p4, "action"    # Lcom/nativex/common/Request$HTTP_ACTION;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/nativex/common/Request;->listener:Lcom/nativex/common/OnRequestCompletedListener;

    .line 47
    iput-object v0, p0, Lcom/nativex/common/Request;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 48
    iput-object v0, p0, Lcom/nativex/common/Request;->actionType:Ljava/lang/Integer;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/common/Request;->enableLogging:Z

    .line 97
    iput-object p1, p0, Lcom/nativex/common/Request;->url:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/nativex/common/Request;->request:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/nativex/common/Request;->requestType:Ljava/lang/String;

    .line 100
    invoke-virtual {p0, p4}, Lcom/nativex/common/Request;->setHttpAction(Lcom/nativex/common/Request$HTTP_ACTION;)V

    .line 101
    return-void
.end method


# virtual methods
.method public executeListener(ZLcom/nativex/common/Response;)V
    .locals 1
    .param p1, "succeded"    # Z
    .param p2, "response"    # Lcom/nativex/common/Response;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nativex/common/Request;->listener:Lcom/nativex/common/OnRequestCompletedListener;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/nativex/common/Request;->listener:Lcom/nativex/common/OnRequestCompletedListener;

    invoke-interface {v0, p1, p2}, Lcom/nativex/common/OnRequestCompletedListener;->requestCompleted(ZLcom/nativex/common/Response;)V

    .line 247
    :cond_0
    return-void
.end method

.method public abstract generateRequest()V
.end method

.method public abstract generateResponse()Lcom/nativex/common/Response;
.end method

.method public getActionType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/nativex/common/Request;->actionType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAction()Lcom/nativex/common/Request$HTTP_ACTION;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nativex/common/Request;->httpAction:Lcom/nativex/common/Request$HTTP_ACTION;

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/nativex/common/Request;->defaultClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/nativex/common/Request;->defaultClient:Lorg/apache/http/client/HttpClient;

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nativex/common/Request;->httpClient:Lorg/apache/http/client/HttpClient;

    goto :goto_0
.end method

.method public getPrettyRequest()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 119
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v1, p0, Lcom/nativex/common/Request;->request:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRequest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nativex/common/Request;->request:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nativex/common/Request;->requestType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nativex/common/Request;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/nativex/common/Request;->enableLogging:Z

    return v0
.end method

.method public postExecute()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method protected postExecuteImmediatelyAfter()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public preExecute()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method protected preExecuteJustBefore()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public setActionType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/nativex/common/Request;->actionType:Ljava/lang/Integer;

    .line 258
    return-void
.end method

.method protected setHttpAction(Lcom/nativex/common/Request$HTTP_ACTION;)V
    .locals 0
    .param p1, "httpAction"    # Lcom/nativex/common/Request$HTTP_ACTION;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/nativex/common/Request;->httpAction:Lcom/nativex/common/Request$HTTP_ACTION;

    .line 201
    return-void
.end method

.method public setHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nativex/common/Request;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 63
    return-void
.end method

.method public setListener(Lcom/nativex/common/OnRequestCompletedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nativex/common/OnRequestCompletedListener;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/nativex/common/Request;->listener:Lcom/nativex/common/OnRequestCompletedListener;

    .line 231
    return-void
.end method

.method protected setLoggingEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/nativex/common/Request;->enableLogging:Z

    .line 277
    return-void
.end method

.method protected setRequest(Ljava/lang/String;)V
    .locals 0
    .param p1, "request"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/nativex/common/Request;->request:Ljava/lang/String;

    .line 133
    return-void
.end method

.method protected setRequestType(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestType"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/nativex/common/Request;->requestType:Ljava/lang/String;

    .line 173
    return-void
.end method

.method protected setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/nativex/common/Request;->url:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public abstract shouldExecute()Z
.end method
