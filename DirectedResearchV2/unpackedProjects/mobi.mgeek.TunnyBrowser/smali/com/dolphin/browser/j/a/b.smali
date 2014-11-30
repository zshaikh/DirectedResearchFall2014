.class public Lcom/dolphin/browser/j/a/b;
.super Ljava/lang/Object;
.source "WebServiceClient.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dolphin/browser/j/a/b;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private a(Lcom/dolphin/browser/j/a/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dolphin/browser/j/a/d",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    invoke-interface {p1}, Lcom/dolphin/browser/j/a/d;->b()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Lcom/dolphin/browser/j/a/e;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/j/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 78
    :catch_1
    move-exception v0

    .line 79
    new-instance v1, Lcom/dolphin/browser/j/a/e;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/j/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :catch_2
    move-exception v0

    .line 81
    new-instance v1, Lcom/dolphin/browser/j/a/e;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/j/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 82
    :catch_3
    move-exception v0

    .line 83
    new-instance v1, Lcom/dolphin/browser/j/a/e;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/j/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/dolphin/browser/j/a/b;Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/dolphin/browser/j/a/b;->a(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 53
    new-instance v0, Lcom/dolphin/browser/Network/h;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dolphin/browser/j/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 55
    const-string v1, "Request URL: %s."

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/Network/d;->b(Z)Lcom/dolphin/browser/Network/n;

    move-result-object v0

    .line 58
    iget-object v2, v0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 59
    invoke-virtual {v1}, Lcom/dolphin/browser/util/cw;->a()J

    .line 61
    const/16 v1, 0x130

    if-eq v2, v1, :cond_0

    const/16 v1, 0xc8

    if-eq v2, v1, :cond_0

    .line 63
    new-instance v1, Lorg/apache/http/HttpException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request failed with status code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    const-string v1, "WebServiceClient"

    const-string v2, "Url %s request success. "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 69
    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/dolphin/browser/j/a/a;)Lcom/dolphin/browser/j/a/a;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/dolphin/browser/j/a/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/j/a/c;-><init>(Lcom/dolphin/browser/j/a/b;Ljava/lang/String;Lcom/dolphin/browser/j/a/a;)V

    invoke-direct {p0, v0}, Lcom/dolphin/browser/j/a/b;->a(Lcom/dolphin/browser/j/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/j/a/a;

    return-object v0
.end method
