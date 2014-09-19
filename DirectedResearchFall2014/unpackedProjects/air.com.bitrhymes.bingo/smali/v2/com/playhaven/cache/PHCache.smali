.class public Lv2/com/playhaven/cache/PHCache;
.super Ljava/lang/Object;
.source "PHCache.java"


# static fields
.field private static final BUFFER_SIZE:Ljava/lang/Integer; = null

.field private static final CACHE_DIR:Ljava/lang/String; = "playhaven.cache"

.field private static sharedCache:Lv2/com/playhaven/cache/PHCache;


# instance fields
.field private final FILE_PREFIX:Ljava/lang/String;

.field private cacheDirectory:Ljava/io/File;

.field private cachedMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/URL;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lv2/com/playhaven/cache/PHCache;->BUFFER_SIZE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "cacheDirectory"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "file://"

    iput-object v0, p0, Lv2/com/playhaven/cache/PHCache;->FILE_PREFIX:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/cache/PHCache;->cachedMapping:Ljava/util/HashMap;

    .line 93
    iput-object p1, p0, Lv2/com/playhaven/cache/PHCache;->cacheDirectory:Ljava/io/File;

    .line 94
    return-void
.end method

.method public static getSharedCache()Lv2/com/playhaven/cache/PHCache;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lv2/com/playhaven/cache/PHCache;->sharedCache:Lv2/com/playhaven/cache/PHCache;

    return-object v0
.end method

.method public static hasBeenInstalled()Z
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lv2/com/playhaven/cache/PHCache;->sharedCache:Lv2/com/playhaven/cache/PHCache;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasNotBeenInstalled()Z
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lv2/com/playhaven/cache/PHCache;->hasBeenInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static installCache(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "playhaven.cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 88
    :cond_0
    new-instance v1, Lv2/com/playhaven/cache/PHCache;

    invoke-direct {v1, v0}, Lv2/com/playhaven/cache/PHCache;-><init>(Ljava/io/File;)V

    sput-object v1, Lv2/com/playhaven/cache/PHCache;->sharedCache:Lv2/com/playhaven/cache/PHCache;

    .line 89
    return-void
.end method

.method public static useTestingCache(Lv2/com/playhaven/cache/PHCache;)V
    .locals 0
    .parameter "testing_cache"

    .prologue
    .line 74
    sput-object p0, Lv2/com/playhaven/cache/PHCache;->sharedCache:Lv2/com/playhaven/cache/PHCache;

    .line 75
    return-void
.end method


# virtual methods
.method public cacheFile(Ljava/net/URL;Ljava/io/InputStream;Z)V
    .locals 7
    .parameter "requestUrl"
    .parameter "content"
    .parameter "isCompressed"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lv2/com/playhaven/cache/PHCache;->convertToFilename(Ljava/net/URL;)Ljava/io/File;

    move-result-object v4

    .line 143
    .local v4, outputFile:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caching url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to local file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 147
    if-eqz p3, :cond_0

    .line 148
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p2
    .local v3, content:Ljava/io/InputStream;
    move-object p2, v3

    .line 153
    .end local v3           #content:Ljava/io/InputStream;
    .restart local p2
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 155
    .local v2, cachedFile:Ljava/io/BufferedOutputStream;
    sget-object v5, Lv2/com/playhaven/cache/PHCache;->BUFFER_SIZE:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v0, v5, [B

    .line 158
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 159
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 167
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v2           #cachedFile:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v5

    .line 170
    :goto_1
    return-void

    .line 162
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v2       #cachedFile:Ljava/io/BufferedOutputStream;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 163
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 165
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public convertToFilename(Ljava/net/URL;)Ljava/io/File;
    .locals 5
    .parameter "url"

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, clean_slug:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lv2/com/playhaven/cache/PHCache;->sharedCache:Lv2/com/playhaven/cache/PHCache;

    invoke-virtual {v3}, Lv2/com/playhaven/cache/PHCache;->getRootCacheDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, new_file:Ljava/io/File;
    return-object v1
.end method

.method public getCachedFile(Ljava/net/URL;)Ljava/io/File;
    .locals 3
    .parameter "url"

    .prologue
    .line 179
    iget-object v1, p0, Lv2/com/playhaven/cache/PHCache;->cachedMapping:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 181
    .local v0, file:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking cache for URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 183
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 200
    :goto_0
    return-object v1

    .line 189
    :cond_0
    invoke-virtual {p0, p1}, Lv2/com/playhaven/cache/PHCache;->convertToFilename(Ljava/net/URL;)Ljava/io/File;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking cache for file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lv2/com/playhaven/cache/PHCache;->cachedMapping:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 196
    goto :goto_0

    .line 200
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCachedFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 212
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lv2/com/playhaven/cache/PHCache;->getCachedFile(Ljava/net/URL;)Ljava/io/File;

    move-result-object v1

    .line 215
    .local v1, file:Ljava/io/File;
    if-nez v1, :cond_0

    move-object v2, v4

    .line 222
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-object v2

    .line 218
    .restart local v1       #file:Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 220
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/net/MalformedURLException;
    move-object v2, v4

    .line 222
    goto :goto_0
.end method

.method public getRootCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lv2/com/playhaven/cache/PHCache;->cacheDirectory:Ljava/io/File;

    return-object v0
.end method
