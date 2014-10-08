.class final Lcom/fusepowered/m1/android/HttpRedirection;
.super Ljava/lang/Object;
.source "HttpRedirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;,
        Lcom/fusepowered/m1/android/HttpRedirection$Listener;
    }
.end annotation


# static fields
.field private static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field private static final LOG_URL_FORMAT:Ljava/lang/String; = "Redirecting to: %s"

.field private static final METHOD_GET:Ljava/lang/String; = "GET"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method static final navigateRedirects(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 31
    const/16 v4, 0xcc

    .line 33
    .local v4, "rc":I
    if-nez p0, :cond_0

    .line 34
    const/4 v6, 0x0

    .line 86
    :goto_0
    return-object v6

    .line 36
    :cond_0
    invoke-static {v6}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 41
    :goto_1
    :try_start_0
    const-string v6, "https"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_2
    move-object v6, p0

    .line 86
    goto :goto_0

    .line 45
    :cond_2
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 46
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 47
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v6, 0x2710

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 49
    const-string v6, "GET"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 51
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 53
    const/16 v6, 0x12c

    if-lt v4, v6, :cond_1

    const/16 v6, 0x190

    if-ge v4, v6, :cond_1

    .line 55
    const-string v6, "Location"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "locationUrl":Ljava/lang/String;
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 57
    .local v2, "locationUri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v6

    if-nez v6, :cond_4

    .line 59
    invoke-virtual {v5}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    .line 62
    :cond_3
    :goto_3
    const-string v6, "Redirecting to: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-static {v6, v7}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 69
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "locationUri":Ljava/net/URI;
    .end local v3    # "locationUrl":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 60
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "locationUri":Ljava/net/URI;
    .restart local v3    # "locationUrl":Ljava/lang/String;
    .restart local v5    # "url":Ljava/net/URL;
    :cond_4
    if-eqz v3, :cond_3

    .line 61
    move-object p0, v3

    goto :goto_3

    .line 73
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "locationUri":Ljava/net/URI;
    .end local v3    # "locationUrl":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 75
    .local v1, "e":Ljava/net/SocketTimeoutException;
    const-string v6, "Connection timeout."

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 81
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 83
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v6, "URI Syntax incorrect."

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 77
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method static startActivityFromUri(Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 2
    .param p0, "listener"    # Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;

    .prologue
    .line 174
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;->weakContext:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 179
    .local v0, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;>;"
    new-instance v1, Lcom/fusepowered/m1/android/HttpRedirection$1;

    invoke-direct {v1, v0}, Lcom/fusepowered/m1/android/HttpRedirection$1;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-static {v1}, Lcom/fusepowered/m1/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
