.class public Lcom/bitrhymes/facebookext/RequestThread;
.super Ljava/lang/Thread;
.source "RequestThread.java"


# instance fields
.field private callback:Ljava/lang/String;

.field private context:Lcom/adobe/fre/FREContext;

.field private graphPath:Ljava/lang/String;

.field private httpMethod:Ljava/lang/String;

.field private parameters:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/adobe/fre/FREContext;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "graphPath"
    .parameter "parameters"
    .parameter "httpMethod"
    .parameter "callback"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bitrhymes/facebookext/RequestThread;->context:Lcom/adobe/fre/FREContext;

    .line 22
    iput-object p2, p0, Lcom/bitrhymes/facebookext/RequestThread;->graphPath:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/bitrhymes/facebookext/RequestThread;->parameters:Landroid/os/Bundle;

    .line 24
    iput-object p4, p0, Lcom/bitrhymes/facebookext/RequestThread;->httpMethod:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/bitrhymes/facebookext/RequestThread;->callback:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, data:Ljava/lang/String;
    const-string v5, "INFO - RequestThread.run"

    invoke-static {v5}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 38
    :try_start_0
    iget-object v5, p0, Lcom/bitrhymes/facebookext/RequestThread;->parameters:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 39
    new-instance v3, Lcom/facebook/Request;

    sget-object v5, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    iget-object v6, p0, Lcom/bitrhymes/facebookext/RequestThread;->graphPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/bitrhymes/facebookext/RequestThread;->parameters:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/bitrhymes/facebookext/RequestThread;->httpMethod:Ljava/lang/String;

    invoke-static {v8}, Lcom/facebook/HttpMethod;->valueOf(Ljava/lang/String;)Lcom/facebook/HttpMethod;

    move-result-object v8

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 44
    .local v3, request:Lcom/facebook/Request;
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v4

    .line 45
    .local v4, response:Lcom/facebook/Response;
    invoke-virtual {v4}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 46
    invoke-virtual {v4}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "INFO - RequestThread.run, data = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v3           #request:Lcom/facebook/Request;
    .end local v4           #response:Lcom/facebook/Response;
    :goto_2
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/bitrhymes/facebookext/RequestThread;->callback:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "INFO - RequestThread.run, calling callback with data "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 67
    iget-object v5, p0, Lcom/bitrhymes/facebookext/RequestThread;->context:Lcom/adobe/fre/FREContext;

    iget-object v6, p0, Lcom/bitrhymes/facebookext/RequestThread;->callback:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    return-void

    .line 42
    :cond_2
    :try_start_1
    new-instance v3, Lcom/facebook/Request;

    sget-object v5, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    iget-object v6, p0, Lcom/bitrhymes/facebookext/RequestThread;->graphPath:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;)V

    .restart local v3       #request:Lcom/facebook/Request;
    goto :goto_0

    .line 47
    .restart local v4       #response:Lcom/facebook/Response;
    :cond_3
    invoke-virtual {v4}, Lcom/facebook/Response;->getGraphObjectList()Lcom/facebook/model/GraphObjectList;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 48
    invoke-virtual {v4}, Lcom/facebook/Response;->getGraphObjectList()Lcom/facebook/model/GraphObjectList;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 50
    invoke-virtual {v4}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getRequestResult()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 55
    .end local v3           #request:Lcom/facebook/Request;
    .end local v4           #response:Lcom/facebook/Response;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 57
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ERROR - RequestThread.run, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 60
    .local v2, error:Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lcom/bitrhymes/facebookext/RequestThread;->context:Lcom/adobe/fre/FREContext;

    iget-object v6, p0, Lcom/bitrhymes/facebookext/RequestThread;->callback:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 59
    .end local v2           #error:Ljava/lang/String;
    :cond_5
    const-string v5, ""

    move-object v2, v5

    goto :goto_3
.end method
