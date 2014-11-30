.class Lretrofit/client/ApacheClient$GenericHttpRequest;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "ApacheClient.java"


# instance fields
.field private final method:Ljava/lang/String;


# direct methods
.method constructor <init>(Lretrofit/client/Request;)V
    .locals 4

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 108
    invoke-virtual {p1}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit/client/ApacheClient$GenericHttpRequest;->method:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit/client/ApacheClient$GenericHttpRequest;->setURI(Ljava/net/URI;)V

    .line 112
    invoke-virtual {p1}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/client/Header;

    .line 113
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v0}, Lretrofit/client/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lretrofit/client/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lretrofit/client/ApacheClient$GenericHttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    new-instance v1, Lretrofit/client/ApacheClient$TypedOutputEntity;

    invoke-direct {v1, v0}, Lretrofit/client/ApacheClient$TypedOutputEntity;-><init>(Lretrofit/mime/TypedOutput;)V

    invoke-virtual {p0, v1}, Lretrofit/client/ApacheClient$GenericHttpRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 121
    :cond_1
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lretrofit/client/ApacheClient$GenericHttpRequest;->method:Ljava/lang/String;

    return-object v0
.end method
