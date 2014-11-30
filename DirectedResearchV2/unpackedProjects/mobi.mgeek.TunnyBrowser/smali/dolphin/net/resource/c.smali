.class Ldolphin/net/resource/c;
.super Ljava/lang/Thread;
.source "ImageHandler.java"


# instance fields
.field final synthetic a:Ldolphin/net/resource/b;


# direct methods
.method constructor <init>(Ldolphin/net/resource/b;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Ldolphin/net/resource/c;->a:Ldolphin/net/resource/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Ldolphin/net/resource/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v0, "Connection"

    const-string v2, "Close"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 62
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc8

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 64
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Ldolphin/net/resource/c;->a:Ldolphin/net/resource/b;

    invoke-virtual {v1, v0}, Ldolphin/net/resource/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    iget-object v0, p0, Ldolphin/net/resource/c;->a:Ldolphin/net/resource/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldolphin/net/resource/b;->a(Ldolphin/net/resource/b;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 73
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-static {}, Ldolphin/net/resource/a;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update image conf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
