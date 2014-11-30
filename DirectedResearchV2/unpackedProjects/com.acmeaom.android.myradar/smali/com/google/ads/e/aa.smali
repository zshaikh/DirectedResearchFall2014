.class public Lcom/google/ads/e/aa;
.super Lcom/google/ads/b/ad;
.source "ProGuard"


# direct methods
.method public constructor <init>(Lcom/google/ads/b/w;Ljava/util/Map;ZZ)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/b/ad;-><init>(Lcom/google/ads/b/w;Ljava/util/Map;ZZ)V

    .line 69
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Landroid/webkit/WebResourceResponse;
    .locals 5

    .prologue
    .line 137
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 140
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/e/a;->a(Ljava/net/HttpURLConnection;Landroid/content/Context;)V

    .line 141
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 142
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/google/ads/e/a;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v1

    .line 145
    const-string v2, "UTF-8"

    .line 146
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 148
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v4, "application/javascript"

    invoke-direct {v1, v4, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .prologue
    .line 79
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, "mraid.js"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/google/ads/e/aa;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->k()Lcom/google/ads/b/n;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/ads/b/n;->c(Z)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/google/ads/e/aa;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->d:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/m$a;

    .line 100
    iget-object v1, p0, Lcom/google/ads/e/aa;->a:Lcom/google/ads/b/w;

    invoke-virtual {v1}, Lcom/google/ads/b/w;->i()Lcom/google/ads/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/n;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 101
    iget-boolean v1, p0, Lcom/google/ads/e/aa;->b:Z

    if-eqz v1, :cond_2

    .line 102
    iget-object v0, v0, Lcom/google/ads/m$a;->f:Lcom/google/ads/e/ag;

    invoke-virtual {v0}, Lcom/google/ads/e/ag;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldInterceptRequest("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/e/i;->a(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/e/aa;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 129
    :goto_1
    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/ads/e/aa;->a:Lcom/google/ads/b/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/ads/b/w;->a(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v1, "IOException fetching MRAID JS."

    invoke-static {v1, v0}, Lcom/google/ads/e/i;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/google/ads/b/ad;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_1

    .line 108
    :cond_2
    :try_start_1
    iget-object v0, v0, Lcom/google/ads/m$a;->e:Lcom/google/ads/e/ag;

    invoke-virtual {v0}, Lcom/google/ads/e/ag;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldInterceptRequest("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/e/i;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/e/aa;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_1

    .line 115
    :cond_3
    iget-object v0, v0, Lcom/google/ads/m$a;->g:Lcom/google/ads/e/ag;

    invoke-virtual {v0}, Lcom/google/ads/e/ag;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldInterceptRequest("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/e/i;->a(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/e/aa;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/webkit/WebResourceResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 124
    :catch_1
    move-exception v0

    .line 126
    const-string v1, "An unknown error occurred fetching MRAID JS."

    invoke-static {v1, v0}, Lcom/google/ads/e/i;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
