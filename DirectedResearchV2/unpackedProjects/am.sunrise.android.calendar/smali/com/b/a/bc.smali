.class Lcom/b/a/bc;
.super Ljava/lang/Object;
.source "UrlConnectionDownloader.java"


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 91
    invoke-static {p0}, Lcom/b/a/bd;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 92
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    invoke-static {v1}, Lcom/b/a/bd;->a(Ljava/io/File;)J

    move-result-wide v2

    .line 95
    invoke-static {v1, v2, v3}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;

    move-result-object v0

    .line 97
    :cond_0
    return-object v0
.end method
