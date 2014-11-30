.class public final Lcom/a/a/a/h;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# instance fields
.field private a:Lorg/apache/http/StatusLine;

.field private b:Lorg/apache/http/HttpEntity;

.field private c:Lcom/a/a/k;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 3

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/h;->a:Lorg/apache/http/StatusLine;

    .line 244
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/h;->b:Lorg/apache/http/HttpEntity;

    .line 245
    const-string v0, "HttpUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[HttpRequestResult] status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/a/a/h;->a:Lorg/apache/http/StatusLine;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v0, "HttpUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[HttpRequestResult] entity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/a/a/h;->b:Lorg/apache/http/HttpEntity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/h;->b:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/a/a/a/a;->b(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/a/a/k;->a(Ljava/lang/String;)Lcom/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/h;->c:Lcom/a/a/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/a/h;)Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/a/a/a/h;->b:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/a/h;)Lorg/apache/http/StatusLine;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/a/a/a/h;->a:Lorg/apache/http/StatusLine;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Lorg/apache/http/StatusLine;
    .locals 1

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/h;->a:Lorg/apache/http/StatusLine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/h;->b:Lorg/apache/http/HttpEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lcom/a/a/k;
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/h;->c:Lcom/a/a/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
