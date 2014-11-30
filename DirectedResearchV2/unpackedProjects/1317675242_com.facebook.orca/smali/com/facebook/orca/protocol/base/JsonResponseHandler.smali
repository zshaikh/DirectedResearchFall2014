.class public Lcom/facebook/orca/protocol/base/JsonResponseHandler;
.super Ljava/lang/Object;
.source "JsonResponseHandler.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Lorg/codehaus/jackson/JsonNode;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/JsonResponseHandler;->a:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public a(Lorg/apache/http/HttpResponse;)Lorg/codehaus/jackson/JsonNode;
    .locals 4

    .prologue
    .line 26
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/JsonResponseHandler;->a:Lorg/apache/http/HttpResponse;

    .line 27
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 29
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 30
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 31
    const/16 v3, 0x12c

    if-lt v2, v3, :cond_3

    .line 32
    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 33
    :goto_0
    const/16 v3, 0x190

    if-ne v2, v3, :cond_0

    .line 34
    invoke-static {v1}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->a(Ljava/lang/String;)V

    .line 36
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    .line 37
    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_1
    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 32
    :cond_2
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 41
    :cond_3
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/base/JsonResponseHandler;->a(Lorg/apache/http/HttpResponse;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method
