.class public Lcom/dolphin/browser/search/d/f;
.super Ljava/lang/Object;
.source "SearchRedirectRequester.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/search/d/g;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dolphin/browser/search/d/f;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/search/d/f;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/dolphin/browser/search/d/h;->a:Lcom/dolphin/browser/search/d/f;

    return-object v0
.end method

.method protected static a(Ljava/io/InputStream;)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 91
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 95
    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 99
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_1
    return-object v0
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-static {}, Lcom/dolphin/browser/search/d/i;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 110
    invoke-static {}, Lcom/dolphin/browser/search/j;->a()Lcom/dolphin/browser/search/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/search/j;->d()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 113
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public b()Ljava/util/LinkedHashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/dolphin/browser/search/d/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-object v1

    .line 57
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/search/j;->a()Lcom/dolphin/browser/search/j;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lcom/dolphin/browser/search/j;->c()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/Header;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "If-Modified-Since"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v4

    .line 64
    :goto_1
    new-instance v2, Lcom/dolphin/browser/Network/h;

    const-string v4, "http://dn.dolphin.com/dndata.txt"

    invoke-direct {v2, v4}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/Network/h;->a([Lorg/apache/http/Header;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const-string v2, "RedirectData"

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 68
    :try_start_0
    invoke-virtual {v0}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 69
    :try_start_1
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_2

    .line 70
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->a:Lorg/apache/http/HttpResponse;

    const-string v4, "Last-Modified"

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->a:Lorg/apache/http/HttpResponse;

    const-string v4, "Last-Modified"

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v3, v0}, Lcom/dolphin/browser/search/j;->a(Ljava/lang/String;)V

    .line 76
    :cond_1
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->e(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/search/d/f;->a(Ljava/io/InputStream;)Ljava/util/LinkedHashMap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 82
    :cond_2
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    .line 84
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/dolphin/browser/search/j;->a(J)V

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 80
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 79
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
