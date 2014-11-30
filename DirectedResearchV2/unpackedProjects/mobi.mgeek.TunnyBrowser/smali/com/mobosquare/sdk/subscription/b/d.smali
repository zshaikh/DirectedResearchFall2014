.class public abstract Lcom/mobosquare/sdk/subscription/b/d;
.super Ljava/lang/Object;
.source "WebServiceClient.java"


# static fields
.field private static final a:Ljava/lang/String;

.field protected static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mobosquare/sdk/subscription/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/mobosquare/sdk/subscription/b/d;->b:Ljava/lang/String;

    .line 105
    const-class v0, Lcom/mobosquare/sdk/subscription/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobosquare/sdk/subscription/b/d;->a:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobosquare/sdk/subscription/b/d;->d:Ljava/util/Map;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobosquare/sdk/subscription/b/d;->e:Ljava/util/Map;

    .line 218
    iput-object p1, p0, Lcom/mobosquare/sdk/subscription/b/d;->c:Ljava/lang/String;

    .line 219
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/mobosquare/sdk/subscription/b/e;
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b/d;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobosquare/sdk/subscription/b/e;

    .line 819
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/mobosquare/sdk/subscription/b/e;->c:Z

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/mobosquare/sdk/subscription/b/d;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    .locals 2

    .prologue
    .line 241
    iget-object v1, p0, Lcom/mobosquare/sdk/subscription/b/d;->d:Ljava/util/Map;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b/d;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b/d;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    monitor-exit v1

    .line 246
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a(Z)Lcom/mobosquare/sdk/subscription/b/f;
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b/d;->c:Ljava/lang/String;

    .line 381
    if-eqz p1, :cond_0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    const-string v1, "http"

    const-string v2, "https"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    :cond_0
    new-instance v1, Lcom/mobosquare/sdk/subscription/b/f;

    invoke-direct {v1, v0}, Lcom/mobosquare/sdk/subscription/b/f;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected varargs a(Lorg/apache/http/HttpRequest;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 760
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 489
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v0, p2, p3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0, p3}, Lorg/apache/http/entity/StringEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0, p1, v0}, Lcom/mobosquare/sdk/subscription/b/d;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Z

    move-result v0

    return v0
.end method

.method protected final a(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 393
    const/4 v2, 0x0

    .line 395
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mobosquare/sdk/subscription/b/d;->b(Ljava/lang/String;)Lcom/mobosquare/sdk/subscription/c/d;

    move-result-object v3

    .line 397
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 398
    if-eqz p2, :cond_0

    .line 399
    invoke-virtual {v4, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 401
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, p1, v5}, Lcom/mobosquare/sdk/subscription/b/d;->a(Lorg/apache/http/HttpRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    sget-object v5, Lcom/mobosquare/sdk/subscription/b/d;->a:Ljava/lang/String;

    const-string v6, "POST content to url %s."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v5, v6, v7}, Lcom/mobosquare/sdk/subscription/c/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 403
    invoke-virtual {v3, v4}, Lcom/mobosquare/sdk/subscription/c/d;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 404
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 405
    sget-object v4, Lcom/mobosquare/sdk/subscription/b/d;->a:Ljava/lang/String;

    const-string v5, "Responsed from url %s : %d."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/mobosquare/sdk/subscription/c/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    const/16 v4, 0xc8

    if-ne v4, v3, :cond_1

    .line 415
    invoke-direct {p0, p1, v2}, Lcom/mobosquare/sdk/subscription/b/d;->a(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    .line 417
    :goto_0
    return v0

    .line 409
    :cond_1
    :try_start_1
    sget-object v0, Lcom/mobosquare/sdk/subscription/b/d;->a:Ljava/lang/String;

    const-string v3, "Server response error : %s "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/mobosquare/sdk/subscription/c/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    invoke-direct {p0, p1, v2}, Lcom/mobosquare/sdk/subscription/b/d;->a(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    :goto_1
    move v0, v1

    .line 417
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    :try_start_2
    sget-object v3, Lcom/mobosquare/sdk/subscription/b/d;->a:Ljava/lang/String;

    const-string v4, "Failed to post content."

    invoke-static {v3, v4}, Lcom/mobosquare/sdk/subscription/c/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    invoke-direct {p0, p1, v2}, Lcom/mobosquare/sdk/subscription/b/d;->a(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    .line 414
    :catchall_0
    move-exception v0

    .line 415
    invoke-direct {p0, p1, v2}, Lcom/mobosquare/sdk/subscription/b/d;->a(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    .line 416
    throw v0
.end method

.method protected b()Lcom/mobosquare/sdk/subscription/b/f;
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobosquare/sdk/subscription/b/d;->a(Z)Lcom/mobosquare/sdk/subscription/b/f;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)Lcom/mobosquare/sdk/subscription/c/d;
    .locals 5

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/mobosquare/sdk/subscription/b/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-virtual {p0}, Lcom/mobosquare/sdk/subscription/b/d;->a()Z

    move-result v1

    .line 804
    invoke-direct {p0, p1}, Lcom/mobosquare/sdk/subscription/b/d;->a(Ljava/lang/String;)Lcom/mobosquare/sdk/subscription/b/e;

    move-result-object v2

    .line 805
    if-eqz v2, :cond_1

    .line 806
    iget-boolean v1, v2, Lcom/mobosquare/sdk/subscription/b/e;->b:Z

    .line 807
    iget-object v3, v2, Lcom/mobosquare/sdk/subscription/b/e;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    move v4, v1

    move-object v1, v0

    move v0, v4

    .line 809
    :goto_1
    invoke-static {v1, v0}, Lcom/mobosquare/sdk/subscription/c/d;->a(Ljava/lang/String;Z)Lcom/mobosquare/sdk/subscription/c/d;

    move-result-object v0

    return-object v0

    .line 807
    :cond_0
    iget-object v0, v2, Lcom/mobosquare/sdk/subscription/b/e;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_1
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 474
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/mobosquare/sdk/subscription/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 478
    :goto_0
    return v0

    .line 475
    :catch_0
    move-exception v0

    .line 478
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    return-object v0
.end method
