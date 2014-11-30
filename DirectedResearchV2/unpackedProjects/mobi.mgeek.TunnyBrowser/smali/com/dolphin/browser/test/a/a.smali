.class public Lcom/dolphin/browser/test/a/a;
.super Ljava/lang/Object;
.source "MeasurableHttpClient.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lorg/apache/http/client/HttpClient;


# instance fields
.field private a:Lorg/apache/http/client/HttpClient;

.field private b:Ljava/lang/String;

.field private c:Lorg/apache/http/conn/ClientConnectionManager;


# direct methods
.method public static final a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 250
    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 253
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method public static final a(Lorg/apache/http/client/HttpClient;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 263
    if-nez p0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    :try_start_0
    instance-of v0, p0, Lcom/dolphin/browser/test/a/a;

    if-eqz v0, :cond_2

    .line 268
    check-cast p0, Lcom/dolphin/browser/test/a/a;

    invoke-virtual {p0}, Lcom/dolphin/browser/test/a/a;->close()V

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    goto :goto_0

    .line 269
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    instance-of v0, p0, Lcom/dolphin/browser/test/a/b;

    if-eqz v0, :cond_0

    .line 271
    check-cast p0, Lcom/dolphin/browser/test/a/b;

    invoke-virtual {p0}, Lcom/dolphin/browser/test/a/b;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/test/a/a;->a:Lorg/apache/http/client/HttpClient;

    .line 322
    instance-of v1, v0, Lcom/dolphin/browser/test/a/b;

    if-eqz v1, :cond_1

    .line 323
    check-cast v0, Lcom/dolphin/browser/test/a/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/test/a/b;->a()V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    instance-of v1, v0, Landroid/net/http/AndroidHttpClient;

    if-eqz v1, :cond_0

    .line 325
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/dolphin/browser/test/a/a;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/dolphin/browser/test/a/a;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/test/a/a;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/dolphin/browser/test/a/a;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/test/a/a;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/test/a/a;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/dolphin/browser/test/a/a;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/dolphin/browser/test/a/a;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/dolphin/browser/test/a/a;->c:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/dolphin/browser/test/a/a;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 387
    new-instance v1, Lcom/dolphin/browser/test/a/d;

    iget-object v2, p0, Lcom/dolphin/browser/test/a/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/dolphin/browser/test/a/d;-><init>(Ljava/lang/String;Lorg/apache/http/conn/ClientConnectionManager;)V

    .line 388
    iput-object v1, p0, Lcom/dolphin/browser/test/a/a;->c:Lorg/apache/http/conn/ClientConnectionManager;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/test/a/a;->c:Lorg/apache/http/conn/ClientConnectionManager;

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/dolphin/browser/test/a/a;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
