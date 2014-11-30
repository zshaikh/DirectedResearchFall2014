.class Lcom/google/android/filecache/FileResponseCache$UnabortableCacheRequest;
.super Ljava/net/CacheRequest;
.source "FileResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filecache/FileResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnabortableCacheRequest"
.end annotation


# instance fields
.field private final mCacheRequest:Ljava/net/CacheRequest;


# direct methods
.method public constructor <init>(Ljava/net/CacheRequest;)V
    .locals 1
    .param p1, "cacheRequest"    # Ljava/net/CacheRequest;

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    .line 635
    if-nez p1, :cond_0

    .line 636
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 638
    :cond_0
    iput-object p1, p0, Lcom/google/android/filecache/FileResponseCache$UnabortableCacheRequest;->mCacheRequest:Ljava/net/CacheRequest;

    .line 639
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 653
    return-void
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/android/filecache/FileResponseCache$UnabortableCacheRequest;->mCacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
