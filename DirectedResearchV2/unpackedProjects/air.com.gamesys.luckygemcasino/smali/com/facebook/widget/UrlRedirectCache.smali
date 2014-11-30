.class Lcom/facebook/widget/UrlRedirectCache;
.super Ljava/lang/Object;
.source "UrlRedirectCache.java"


# static fields
.field private static final REDIRECT_CONTENT_TAG:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;

.field private static volatile urlRedirectCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lcom/facebook/widget/UrlRedirectCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/UrlRedirectCache;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/facebook/widget/UrlRedirectCache;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_Redirect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cacheUrlRedirect(Landroid/content/Context;Ljava/net/URL;Ljava/net/URL;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fromUrl"    # Ljava/net/URL;
    .param p2, "toUrl"    # Ljava/net/URL;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const/4 v1, 0x0

    .line 94
    .local v1, "redirectStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/facebook/widget/UrlRedirectCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object v0

    .line 95
    .local v0, "cache":Lcom/facebook/internal/FileLruCache;
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/widget/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 96
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 97
    .end local v0    # "cache":Lcom/facebook/internal/FileLruCache;
    :catch_0
    move-exception v2

    .line 100
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v2

    .line 100
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 101
    throw v2
.end method

.method static declared-synchronized getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    const-class v1, Lcom/facebook/widget/UrlRedirectCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/widget/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/facebook/internal/FileLruCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/facebook/widget/UrlRedirectCache;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v4}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/internal/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v0, Lcom/facebook/widget/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    .line 42
    :cond_0
    sget-object v0, Lcom/facebook/widget/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getRedirectedUrl(Landroid/content/Context;Ljava/net/URL;)Ljava/net/URL;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    const/4 v3, 0x0

    .line 84
    :goto_0
    return-object v3

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    .line 51
    .local v10, "urlString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 52
    .local v3, "finalUrl":Ljava/net/URL;
    const/4 v5, 0x0

    .line 55
    .local v5, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {p0}, Lcom/facebook/widget/UrlRedirectCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 56
    .local v2, "cache":Lcom/facebook/internal/FileLruCache;
    const/4 v7, 0x0

    .local v7, "redirectExists":Z
    move-object v6, v5

    .line 57
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .local v6, "reader":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_1
    sget-object v11, Lcom/facebook/widget/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .local v8, "stream":Ljava/io/InputStream;
    if-nez v8, :cond_2

    .line 74
    if-eqz v7, :cond_1

    .line 75
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v3    # "finalUrl":Ljava/net/URL;
    .local v4, "finalUrl":Ljava/net/URL;
    move-object v3, v4

    .line 81
    .end local v4    # "finalUrl":Ljava/net/URL;
    .restart local v3    # "finalUrl":Ljava/net/URL;
    :cond_1
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_0

    .line 58
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :cond_2
    const/4 v7, 0x1

    .line 61
    :try_start_2
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    const/16 v11, 0x80

    :try_start_3
    new-array v0, v11, [C

    .line 64
    .local v0, "buffer":[C
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v9, "urlBuilder":Ljava/lang/StringBuilder;
    :goto_2
    const/4 v11, 0x0

    array-length v12, v0

    invoke-virtual {v5, v0, v11, v12}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .local v1, "bufferLength":I
    if-gtz v1, :cond_3

    .line 68
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v5

    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    goto :goto_1

    .line 66
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {v9, v0, v11, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 77
    .end local v0    # "buffer":[C
    .end local v1    # "bufferLength":I
    .end local v2    # "cache":Lcom/facebook/internal/FileLruCache;
    .end local v7    # "redirectExists":Z
    .end local v8    # "stream":Ljava/io/InputStream;
    .end local v9    # "urlBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v11

    .line 81
    :goto_3
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 79
    :catch_1
    move-exception v11

    .line 81
    :goto_4
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v11

    .line 81
    :goto_5
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 82
    throw v11

    .line 80
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "cache":Lcom/facebook/internal/FileLruCache;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "redirectExists":Z
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_5

    .line 79
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v11

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 77
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v11

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_3
.end method
