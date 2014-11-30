.class public Lcom/gamesys/android/tools/ane/cache/GamesysCache;
.super Lcom/google/android/filecache/FileResponseCache;
.source "GamesysCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GamesysCache"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/filecache/FileResponseCache;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/cache/GamesysCache;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 124
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "filecache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .end local v0    # "dir":Ljava/io/File;
    .local v1, "dir":Ljava/io/File;
    return-object v1
.end method

.method public static install(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    .line 107
    .local v1, "responseCache":Ljava/net/ResponseCache;
    instance-of v3, v1, Lcom/gamesys/android/tools/ane/cache/GamesysCache;

    if-eqz v3, :cond_0

    .line 108
    const-string v3, "GamesysCache"

    const-string v4, "Cache has already been installed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-void

    .line 109
    :cond_0
    if-nez v1, :cond_1

    .line 110
    new-instance v0, Lcom/gamesys/android/tools/ane/cache/GamesysCache;

    invoke-direct {v0, p0}, Lcom/gamesys/android/tools/ane/cache/GamesysCache;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, "dropCache":Lcom/gamesys/android/tools/ane/cache/GamesysCache;
    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    goto :goto_0

    .line 113
    .end local v0    # "dropCache":Lcom/gamesys/android/tools/ane/cache/GamesysCache;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 114
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/net/ResponseCache;>;"
    const-string v3, "GamesysCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Another ResponseCache has already been installed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getFile(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Ljava/io/File;
    .locals 10
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 81
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    iget-object v8, p0, Lcom/gamesys/android/tools/ane/cache/GamesysCache;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/gamesys/android/tools/ane/cache/GamesysCache;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 82
    .local v7, "parent":Ljava/io/File;
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 83
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 84
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 86
    .local v6, "output":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, v6

    if-lt v5, v8, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v3, "file":Ljava/io/File;
    return-object v3

    .line 88
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filename":Ljava/lang/String;
    :cond_0
    aget-byte v8, v6, v5

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "i":I
    .end local v6    # "output":[B
    .end local v7    # "parent":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 95
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 96
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method protected isStale(Ljava/io/File;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "requestMethod"    # Ljava/lang/String;
    .param p5, "cookie"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p4, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    instance-of v3, p5, Ljava/lang/Long;

    if-eqz v3, :cond_0

    move-object v2, p5

    .line 65
    check-cast v2, Ljava/lang/Long;

    .line 66
    .local v2, "maxAge":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 67
    .local v0, "age":J
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 68
    const/4 v3, 0x1

    .line 71
    .end local v0    # "age":J
    .end local v2    # "maxAge":Ljava/lang/Long;
    :goto_0
    return v3

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/android/filecache/FileResponseCache;->isStale(Ljava/io/File;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method
