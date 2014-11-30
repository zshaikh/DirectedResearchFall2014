.class Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;
.super Ljava/net/ContentHandler;
.source "FileResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filecache/FileResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileResponseCacheContentHandler"
.end annotation


# instance fields
.field private final mContentHandler:Ljava/net/ContentHandler;

.field private final mCookie:Ljava/lang/Object;

.field private final mFileResponseCache:Lcom/google/android/filecache/FileResponseCache;


# direct methods
.method public constructor <init>(Ljava/net/ContentHandler;Lcom/google/android/filecache/FileResponseCache;Ljava/lang/Object;)V
    .locals 0
    .param p1, "contentHandler"    # Ljava/net/ContentHandler;
    .param p2, "fileResponseCache"    # Lcom/google/android/filecache/FileResponseCache;
    .param p3, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 528
    iput-object p1, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    .line 529
    iput-object p2, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mFileResponseCache:Lcom/google/android/filecache/FileResponseCache;

    .line 530
    iput-object p3, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mCookie:Ljava/lang/Object;

    .line 531
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 5
    .param p1, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 536
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 538
    :cond_0
    new-instance v2, Lcom/google/android/filecache/FileResponseCache$Frame;

    iget-object v4, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mCookie:Ljava/lang/Object;

    invoke-direct {v2, p1, v4}, Lcom/google/android/filecache/FileResponseCache$Frame;-><init>(Ljava/net/URLConnection;Ljava/lang/Object;)V

    .line 539
    .local v2, "frame":Lcom/google/android/filecache/FileResponseCache$Frame;
    iget-object v4, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mFileResponseCache:Lcom/google/android/filecache/FileResponseCache;

    # getter for: Lcom/google/android/filecache/FileResponseCache;->mStack:Ljava/lang/ThreadLocal;
    invoke-static {v4}, Lcom/google/android/filecache/FileResponseCache;->access$0(Lcom/google/android/filecache/FileResponseCache;)Ljava/lang/ThreadLocal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Stack;

    .line 540
    .local v3, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/android/filecache/FileResponseCache$Frame;>;"
    if-nez v3, :cond_1

    .line 541
    new-instance v3, Ljava/util/Stack;

    .end local v3    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/android/filecache/FileResponseCache$Frame;>;"
    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 542
    .restart local v3    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/android/filecache/FileResponseCache$Frame;>;"
    iget-object v4, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mFileResponseCache:Lcom/google/android/filecache/FileResponseCache;

    # getter for: Lcom/google/android/filecache/FileResponseCache;->mStack:Ljava/lang/ThreadLocal;
    invoke-static {v4}, Lcom/google/android/filecache/FileResponseCache;->access$0(Lcom/google/android/filecache/FileResponseCache;)Ljava/lang/ThreadLocal;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 544
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :try_start_0
    iget-object v4, p0, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {v4, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 547
    .local v0, "content":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/google/android/filecache/FileResponseCache$Frame;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 548
    return-object v0

    .line 549
    .end local v0    # "content":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/filecache/FileResponseCache$Frame;->abort()V

    .line 551
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 559
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 560
    throw v4

    .line 552
    :catch_1
    move-exception v1

    .line 553
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/filecache/FileResponseCache$Frame;->abort()V

    .line 554
    throw v1

    .line 555
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 556
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v2}, Lcom/google/android/filecache/FileResponseCache$Frame;->abort()V

    .line 557
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
