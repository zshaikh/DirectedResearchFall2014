.class public Lorg/d/d/g;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/io/InputStream;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 29
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lorg/d/d/g;->a:I

    .line 30
    invoke-direct {p0, p1}, Lorg/d/d/g;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/d/d/g;->d:Ljava/util/Map;

    .line 31
    invoke-virtual {p0}, Lorg/d/d/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/d/d/g;->c:Ljava/io/InputStream;

    .line 37
    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Lorg/d/b/b;

    const-string v2, "The IP address of a host could not be determined."

    invoke-direct {v1, v2, v0}, Lorg/d/b/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 48
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_0
    return-object v2
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/d/d/g;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/d/g/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/d/d/g;->b:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lorg/d/d/g;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/d/d/g;->d()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/d/d/g;->d()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/d/d/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/d/d/g;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/d/d/g;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/d/d/g;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/d/d/g;->a:I

    return v0
.end method
