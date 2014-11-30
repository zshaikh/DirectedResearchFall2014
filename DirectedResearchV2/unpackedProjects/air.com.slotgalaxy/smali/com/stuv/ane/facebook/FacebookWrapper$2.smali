.class Lcom/stuv/ane/facebook/FacebookWrapper$2;
.super Ljava/lang/Object;
.source "FacebookWrapper.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/facebook/FacebookWrapper;->graph(Ljava/lang/String;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    const-string v3, "Fb"

    const-string v2, "graph"

    .line 227
    const-string v0, "Fb"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "graph onCompleted "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "graph"

    new-instance v0, Lcom/stuv/ane/facebook/ErrorData;

    invoke-direct {v0}, Lcom/stuv/ane/facebook/ErrorData;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stuv/ane/facebook/ErrorData;->addRequestError(Lcom/facebook/FacebookRequestError;)Lcom/stuv/ane/facebook/ErrorData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/Response;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stuv/ane/facebook/ErrorData;->addConnectionInfo(Ljava/net/HttpURLConnection;)Lcom/stuv/ane/facebook/ErrorData;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchError(Ljava/lang/String;Lcom/stuv/ane/facebook/ErrorData;)V

    .line 241
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 234
    const-string v0, "graph"

    const-string v0, "Graph response null"

    invoke-static {v2, v0}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchAssert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_1
    const-string v0, "Fb"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "graph"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/Response;->getIsFromCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/Response;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v0, "graph"

    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/stuv/ane/facebook/FacebookWrapper;->dispatchSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
