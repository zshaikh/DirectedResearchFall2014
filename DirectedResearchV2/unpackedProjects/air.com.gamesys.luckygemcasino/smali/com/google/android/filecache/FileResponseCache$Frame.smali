.class Lcom/google/android/filecache/FileResponseCache$Frame;
.super Ljava/lang/Object;
.source "FileResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filecache/FileResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Frame"
.end annotation


# static fields
.field private static final GINGERBREAD:I = 0x9

.field private static final SDK:I


# instance fields
.field private mCacheRequest:Ljava/net/CacheRequest;

.field private final mConnection:Ljava/net/URLConnection;

.field private final mCookie:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 576
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/filecache/FileResponseCache$Frame;->SDK:I

    .line 578
    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;Ljava/lang/Object;)V
    .locals 1
    .param p1, "connection"    # Ljava/net/URLConnection;
    .param p2, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    if-nez p1, :cond_0

    .line 588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 590
    :cond_0
    iput-object p1, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mConnection:Ljava/net/URLConnection;

    .line 591
    iput-object p2, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mCookie:Ljava/lang/Object;

    .line 592
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mCacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mCacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    .line 616
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    sget v1, Lcom/google/android/filecache/FileResponseCache$Frame;->SDK:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 603
    iget-object v1, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mCacheRequest:Ljava/net/CacheRequest;

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mCacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v1}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 605
    .local v0, "output":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 610
    .end local v0    # "output":Ljava/io/OutputStream;
    :cond_0
    return-void
.end method

.method public getConnection()Ljava/net/URLConnection;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mConnection:Ljava/net/URLConnection;

    return-object v0
.end method

.method public getCookie()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mCookie:Ljava/lang/Object;

    return-object v0
.end method

.method public setCacheRequest(Ljava/net/CacheRequest;)V
    .locals 1
    .param p1, "cacheRequest"    # Ljava/net/CacheRequest;

    .prologue
    .line 595
    if-nez p1, :cond_0

    .line 596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 598
    :cond_0
    iput-object p1, p0, Lcom/google/android/filecache/FileResponseCache$Frame;->mCacheRequest:Ljava/net/CacheRequest;

    .line 599
    return-void
.end method
