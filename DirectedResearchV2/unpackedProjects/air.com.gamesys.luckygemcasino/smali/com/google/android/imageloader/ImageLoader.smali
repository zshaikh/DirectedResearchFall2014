.class public final Lcom/google/android/imageloader/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/imageloader/ImageLoader$BaseAdapterCallback;,
        Lcom/google/android/imageloader/ImageLoader$BaseExpandableListAdapterCallback;,
        Lcom/google/android/imageloader/ImageLoader$BindResult;,
        Lcom/google/android/imageloader/ImageLoader$Callback;,
        Lcom/google/android/imageloader/ImageLoader$ImageCallback;,
        Lcom/google/android/imageloader/ImageLoader$ImageError;,
        Lcom/google/android/imageloader/ImageLoader$ImageRequest;,
        Lcom/google/android/imageloader/ImageLoader$ImageTask;,
        Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_CACHE_SIZE:J

.field public static final DEFAULT_TASK_LIMIT:I = 0x3

.field public static final IMAGE_LOADER_SERVICE:Ljava/lang/String; = "com.google.android.imageloader"

.field private static final TAG:Ljava/lang/String; = "ImageLoader"


# instance fields
.field private mActiveTaskCount:I

.field private final mBitmapContentHandler:Ljava/net/ContentHandler;

.field private final mBitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/imageloader/ImageLoader$ImageError;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageViewBinding:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxTaskCount:I

.field private final mPrefetchContentHandler:Ljava/net/ContentHandler;

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/imageloader/ImageLoader$ImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mStreamHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mURLStreamHandlerFactory:Ljava/net/URLStreamHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    const-wide/32 v2, 0x1000000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/imageloader/ImageLoader;->DEFAULT_CACHE_SIZE:J

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 259
    const/4 v1, 0x3

    sget-wide v5, Lcom/google/android/imageloader/ImageLoader;->DEFAULT_CACHE_SIZE:J

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/imageloader/ImageLoader;-><init>(ILjava/net/URLStreamHandlerFactory;Ljava/net/ContentHandler;Ljava/net/ContentHandler;JLandroid/os/Handler;)V

    .line 260
    return-void
.end method

.method public constructor <init>(I)V
    .locals 8
    .param p1, "taskLimit"    # I

    .prologue
    const/4 v2, 0x0

    .line 270
    sget-wide v5, Lcom/google/android/imageloader/ImageLoader;->DEFAULT_CACHE_SIZE:J

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/imageloader/ImageLoader;-><init>(ILjava/net/URLStreamHandlerFactory;Ljava/net/ContentHandler;Ljava/net/ContentHandler;JLandroid/os/Handler;)V

    .line 271
    return-void
.end method

.method public constructor <init>(ILjava/net/URLStreamHandlerFactory;Ljava/net/ContentHandler;Ljava/net/ContentHandler;JLandroid/os/Handler;)V
    .locals 2
    .param p1, "taskLimit"    # I
    .param p2, "streamFactory"    # Ljava/net/URLStreamHandlerFactory;
    .param p3, "bitmapHandler"    # Ljava/net/ContentHandler;
    .param p4, "prefetchHandler"    # Ljava/net/ContentHandler;
    .param p5, "cacheSize"    # J
    .param p7, "handler"    # Landroid/os/Handler;

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Task limit must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p5, v0

    if-gez v0, :cond_1

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cache size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    iput p1, p0, Lcom/google/android/imageloader/ImageLoader;->mMaxTaskCount:I

    .line 237
    iput-object p2, p0, Lcom/google/android/imageloader/ImageLoader;->mURLStreamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    .line 238
    if-eqz p2, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mStreamHandlers:Ljava/util/HashMap;

    .line 239
    if-eqz p3, :cond_3

    .end local p3    # "bitmapHandler":Ljava/net/ContentHandler;
    :goto_1
    iput-object p3, p0, Lcom/google/android/imageloader/ImageLoader;->mBitmapContentHandler:Ljava/net/ContentHandler;

    .line 240
    iput-object p4, p0, Lcom/google/android/imageloader/ImageLoader;->mPrefetchContentHandler:Ljava/net/ContentHandler;

    .line 242
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mImageViewBinding:Ljava/util/Map;

    .line 244
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mRequests:Ljava/util/LinkedList;

    .line 249
    new-instance v0, Lcom/google/android/imageloader/BitmapCache;

    invoke-direct {v0, p5, p6}, Lcom/google/android/imageloader/BitmapCache;-><init>(J)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mBitmaps:Ljava/util/Map;

    .line 250
    new-instance v0, Lcom/google/android/imageloader/LruCache;

    invoke-direct {v0}, Lcom/google/android/imageloader/LruCache;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mErrors:Ljava/util/Map;

    .line 251
    return-void

    .line 238
    .restart local p3    # "bitmapHandler":Ljava/net/ContentHandler;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :cond_3
    new-instance p3, Lcom/google/android/imageloader/BitmapContentHandler;

    .end local p3    # "bitmapHandler":Ljava/net/ContentHandler;
    invoke-direct {p3}, Lcom/google/android/imageloader/BitmapContentHandler;-><init>()V

    goto :goto_1
.end method

.method public constructor <init>(J)V
    .locals 8
    .param p1, "cacheSize"    # J

    .prologue
    const/4 v2, 0x0

    .line 281
    const/4 v1, 0x3

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-wide v5, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/imageloader/ImageLoader;-><init>(ILjava/net/URLStreamHandlerFactory;Ljava/net/ContentHandler;Ljava/net/ContentHandler;JLandroid/os/Handler;)V

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 304
    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/imageloader/ContentURLStreamHandlerFactory;

    invoke-direct {v2, p1}, Lcom/google/android/imageloader/ContentURLStreamHandlerFactory;-><init>(Landroid/content/ContentResolver;)V

    sget-wide v5, Lcom/google/android/imageloader/ImageLoader;->DEFAULT_CACHE_SIZE:J

    move-object v0, p0

    move-object v4, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/imageloader/ImageLoader;-><init>(ILjava/net/URLStreamHandlerFactory;Ljava/net/ContentHandler;Ljava/net/ContentHandler;JLandroid/os/Handler;)V

    .line 305
    return-void
.end method

.method public constructor <init>(Ljava/net/ContentHandler;Ljava/net/ContentHandler;)V
    .locals 8
    .param p1, "bitmapHandler"    # Ljava/net/ContentHandler;
    .param p2, "prefetchHandler"    # Ljava/net/ContentHandler;

    .prologue
    const/4 v2, 0x0

    .line 293
    const/4 v1, 0x3

    sget-wide v5, Lcom/google/android/imageloader/ImageLoader;->DEFAULT_CACHE_SIZE:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/imageloader/ImageLoader;-><init>(ILjava/net/URLStreamHandlerFactory;Ljava/net/ContentHandler;Ljava/net/ContentHandler;JLandroid/os/Handler;)V

    .line 294
    return-void
.end method

.method public constructor <init>(Ljava/net/URLStreamHandlerFactory;)V
    .locals 8
    .param p1, "factory"    # Ljava/net/URLStreamHandlerFactory;

    .prologue
    const/4 v3, 0x0

    .line 317
    const/4 v1, 0x3

    sget-wide v5, Lcom/google/android/imageloader/ImageLoader;->DEFAULT_CACHE_SIZE:J

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/imageloader/ImageLoader;-><init>(ILjava/net/URLStreamHandlerFactory;Ljava/net/ContentHandler;Ljava/net/ContentHandler;JLandroid/os/Handler;)V

    .line 318
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/imageloader/ImageLoader;)Ljava/net/ContentHandler;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mBitmapContentHandler:Ljava/net/ContentHandler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;
    .locals 1

    .prologue
    .line 666
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/google/android/imageloader/ImageLoader;)I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/google/android/imageloader/ImageLoader;->mActiveTaskCount:I

    return v0
.end method

.method static synthetic access$11(Lcom/google/android/imageloader/ImageLoader;I)V
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lcom/google/android/imageloader/ImageLoader;->mActiveTaskCount:I

    return-void
.end method

.method static synthetic access$2(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 662
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    invoke-static {p0}, Lcom/google/android/imageloader/ImageLoader;->getProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/google/android/imageloader/ImageLoader;)Ljava/net/ContentHandler;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mPrefetchContentHandler:Ljava/net/ContentHandler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0, p1, p2}, Lcom/google/android/imageloader/ImageLoader;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$7(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 674
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->hasError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageError;)V
    .locals 0

    .prologue
    .line 658
    invoke-direct {p0, p1, p2}, Lcom/google/android/imageloader/ImageLoader;->putError(Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageError;)V

    return-void
.end method

.method static synthetic access$9(Lcom/google/android/imageloader/ImageLoader;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mImageViewBinding:Ljava/util/Map;

    return-object v0
.end method

.method private enqueueRequest(Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-virtual {p0}, Lcom/google/android/imageloader/ImageLoader;->flushRequests()V

    .line 350
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/imageloader/ImageLoader;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const-string v1, "com.google.android.imageloader"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/imageloader/ImageLoader;

    .line 92
    .local v0, "loader":Lcom/google/android/imageloader/ImageLoader;
    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 94
    const-string v1, "com.google.android.imageloader"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "loader":Lcom/google/android/imageloader/ImageLoader;
    check-cast v0, Lcom/google/android/imageloader/ImageLoader;

    .line 96
    .restart local v0    # "loader":Lcom/google/android/imageloader/ImageLoader;
    :cond_0
    if-nez v0, :cond_1

    .line 97
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ImageLoader not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_1
    return-object v0
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mBitmaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 667
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader;->mErrors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/imageloader/ImageLoader$ImageError;

    .line 668
    .local v0, "error":Lcom/google/android/imageloader/ImageLoader$ImageError;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/imageloader/ImageLoader$ImageError;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "error":Lcom/google/android/imageloader/ImageLoader$ImageError;
    :goto_0
    return-object v0

    .restart local v0    # "error":Lcom/google/android/imageloader/ImageLoader$ImageError;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 163
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 4
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mURLStreamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    .line 322
    .local v0, "factory":Ljava/net/URLStreamHandlerFactory;
    if-nez v0, :cond_0

    .line 323
    const/4 v1, 0x0

    .line 334
    :goto_0
    return-object v1

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader;->mStreamHandlers:Ljava/util/HashMap;

    .line 326
    .local v2, "handlers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/net/URLStreamHandler;>;"
    monitor-enter v2

    .line 327
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLStreamHandler;

    .line 328
    .local v1, "handler":Ljava/net/URLStreamHandler;
    if-nez v1, :cond_1

    .line 329
    invoke-interface {v0, p1}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 326
    .end local v1    # "handler":Ljava/net/URLStreamHandler;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private hasError(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insertRequestAtFrontOfQueue(Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mRequests:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 354
    invoke-virtual {p0}, Lcom/google/android/imageloader/ImageLoader;->flushRequests()V

    .line 355
    return-void
.end method

.method private putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mBitmaps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    return-void
.end method

.method private putError(Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageError;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/google/android/imageloader/ImageLoader$ImageError;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mErrors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    return-void
.end method


# virtual methods
.method public bind(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$BindResult;
    .locals 5
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 367
    if-nez p1, :cond_0

    .line 368
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Adapter is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 370
    :cond_0
    if-nez p2, :cond_1

    .line 371
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ImageView is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 373
    :cond_1
    if-nez p3, :cond_2

    .line 374
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "URL is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 376
    :cond_2
    invoke-direct {p0, p3}, Lcom/google/android/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 377
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p3}, Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v1

    .line 378
    .local v1, "error":Lcom/google/android/imageloader/ImageLoader$ImageError;
    if-eqz v0, :cond_3

    .line 379
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 380
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->OK:Lcom/google/android/imageloader/ImageLoader$BindResult;

    .line 398
    :goto_0
    return-object v3

    .line 385
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    if-eqz v1, :cond_4

    .line 388
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->ERROR:Lcom/google/android/imageloader/ImageLoader$BindResult;

    goto :goto_0

    .line 390
    :cond_4
    new-instance v2, Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    invoke-direct {v2, p0, p1, p3}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/BaseAdapter;Ljava/lang/String;)V

    .line 396
    .local v2, "request":Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    invoke-direct {p0, v2}, Lcom/google/android/imageloader/ImageLoader;->insertRequestAtFrontOfQueue(Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V

    .line 398
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->LOADING:Lcom/google/android/imageloader/ImageLoader$BindResult;

    goto :goto_0
.end method

.method public bind(Landroid/widget/BaseExpandableListAdapter;Landroid/widget/ImageView;Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$BindResult;
    .locals 5
    .param p1, "adapter"    # Landroid/widget/BaseExpandableListAdapter;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 413
    if-nez p1, :cond_0

    .line 414
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Adapter is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 416
    :cond_0
    if-nez p2, :cond_1

    .line 417
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ImageView is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 419
    :cond_1
    if-nez p3, :cond_2

    .line 420
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "URL is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 422
    :cond_2
    invoke-direct {p0, p3}, Lcom/google/android/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 423
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p3}, Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v1

    .line 424
    .local v1, "error":Lcom/google/android/imageloader/ImageLoader$ImageError;
    if-eqz v0, :cond_3

    .line 425
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 426
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->OK:Lcom/google/android/imageloader/ImageLoader$BindResult;

    .line 444
    :goto_0
    return-object v3

    .line 431
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    if-eqz v1, :cond_4

    .line 434
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->ERROR:Lcom/google/android/imageloader/ImageLoader$BindResult;

    goto :goto_0

    .line 436
    :cond_4
    new-instance v2, Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    invoke-direct {v2, p0, p1, p3}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/BaseExpandableListAdapter;Ljava/lang/String;)V

    .line 442
    .local v2, "request":Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    invoke-direct {p0, v2}, Lcom/google/android/imageloader/ImageLoader;->insertRequestAtFrontOfQueue(Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V

    .line 444
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->LOADING:Lcom/google/android/imageloader/ImageLoader$BindResult;

    goto :goto_0
.end method

.method public bind(Landroid/widget/ImageView;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$Callback;)Lcom/google/android/imageloader/ImageLoader$BindResult;
    .locals 5
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/google/android/imageloader/ImageLoader$Callback;

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 502
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ImageView is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 504
    :cond_0
    if-nez p2, :cond_1

    .line 505
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "URL is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 507
    :cond_1
    iget-object v3, p0, Lcom/google/android/imageloader/ImageLoader;->mImageViewBinding:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-direct {p0, p2}, Lcom/google/android/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 509
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p2}, Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v1

    .line 510
    .local v1, "error":Lcom/google/android/imageloader/ImageLoader$ImageError;
    if-eqz v0, :cond_3

    .line 511
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 512
    if-eqz p3, :cond_2

    .line 513
    invoke-interface {p3, p1, p2}, Lcom/google/android/imageloader/ImageLoader$Callback;->onImageLoaded(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 515
    :cond_2
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->OK:Lcom/google/android/imageloader/ImageLoader$BindResult;

    .line 530
    :goto_0
    return-object v3

    .line 520
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 522
    if-eqz v1, :cond_5

    .line 523
    if-eqz p3, :cond_4

    .line 524
    invoke-virtual {v1}, Lcom/google/android/imageloader/ImageLoader$ImageError;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {p3, p1, p2, v3}, Lcom/google/android/imageloader/ImageLoader$Callback;->onImageError(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    :cond_4
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->ERROR:Lcom/google/android/imageloader/ImageLoader$BindResult;

    goto :goto_0

    .line 528
    :cond_5
    new-instance v2, Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$Callback;)V

    .line 529
    .local v2, "request":Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    invoke-direct {p0, v2}, Lcom/google/android/imageloader/ImageLoader;->enqueueRequest(Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V

    .line 530
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->LOADING:Lcom/google/android/imageloader/ImageLoader$BindResult;

    goto :goto_0
.end method

.method public bind(Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$Callback;)Lcom/google/android/imageloader/ImageLoader$BindResult;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/google/android/imageloader/ImageLoader$Callback;

    .prologue
    const/4 v4, 0x0

    .line 460
    if-nez p1, :cond_0

    .line 461
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "URL is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 463
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 464
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v1

    .line 465
    .local v1, "error":Lcom/google/android/imageloader/ImageLoader$ImageError;
    if-eqz v0, :cond_2

    .line 466
    if-eqz p2, :cond_1

    .line 467
    invoke-interface {p2, v0, p1}, Lcom/google/android/imageloader/ImageLoader$Callback;->onImageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 469
    :cond_1
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->OK:Lcom/google/android/imageloader/ImageLoader$BindResult;

    .line 479
    :goto_0
    return-object v3

    .line 471
    :cond_2
    if-eqz v1, :cond_4

    .line 472
    if-eqz p2, :cond_3

    .line 473
    invoke-virtual {v1}, Lcom/google/android/imageloader/ImageLoader$ImageError;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {p2, v4, p1, v3}, Lcom/google/android/imageloader/ImageLoader$Callback;->onImageError(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    :cond_3
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->ERROR:Lcom/google/android/imageloader/ImageLoader$BindResult;

    goto :goto_0

    .line 477
    :cond_4
    new-instance v2, Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    invoke-direct {v2, p0, v4, p1, p2}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$Callback;)V

    .line 478
    .local v2, "request":Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    invoke-direct {p0, v2}, Lcom/google/android/imageloader/ImageLoader;->enqueueRequest(Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V

    .line 479
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->LOADING:Lcom/google/android/imageloader/ImageLoader$BindResult;

    goto :goto_0
.end method

.method public clearErrors()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mErrors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 552
    return-void
.end method

.method flushRequests()V
    .locals 4

    .prologue
    .line 342
    :goto_0
    iget v0, p0, Lcom/google/android/imageloader/ImageLoader;->mActiveTaskCount:I

    iget v1, p0, Lcom/google/android/imageloader/ImageLoader;->mMaxTaskCount:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    :cond_0
    return-void

    .line 343
    :cond_1
    new-instance v1, Lcom/google/android/imageloader/ImageLoader$ImageTask;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/imageloader/ImageLoader$ImageTask;-><init>(Lcom/google/android/imageloader/ImageLoader;Lcom/google/android/imageloader/ImageLoader$ImageTask;)V

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/imageloader/ImageLoader$ImageTask;->executeOnThreadPool([Lcom/google/android/imageloader/ImageLoader$ImageRequest;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public prefetch(Landroid/database/Cursor;I)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    .line 646
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 652
    return-void

    .line 647
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 649
    invoke-virtual {p0, v1}, Lcom/google/android/imageloader/ImageLoader;->prefetch(Ljava/lang/String;)V

    .line 646
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public prefetch(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 615
    if-nez p1, :cond_0

    .line 616
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 618
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 631
    :cond_1
    :goto_0
    return-void

    .line 623
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v2

    if-nez v2, :cond_1

    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "loadBitmap":Z
    new-instance v1, Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Z)V

    .line 630
    .local v1, "request":Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    invoke-direct {p0, v1}, Lcom/google/android/imageloader/ImageLoader;->enqueueRequest(Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V

    goto :goto_0
.end method

.method public preload(Landroid/database/Cursor;III)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 595
    move v0, p3

    .local v0, "position":I
    :goto_0
    if-lt v0, p4, :cond_0

    .line 603
    return-void

    .line 596
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 597
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 599
    invoke-virtual {p0, v1}, Lcom/google/android/imageloader/ImageLoader;->preload(Ljava/lang/String;)V

    .line 595
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public preload(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 563
    if-nez p1, :cond_0

    .line 564
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 566
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 578
    :cond_1
    :goto_0
    return-void

    .line 570
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v2

    if-nez v2, :cond_1

    .line 575
    const/4 v0, 0x1

    .line 576
    .local v0, "loadBitmap":Z
    new-instance v1, Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Z)V

    .line 577
    .local v1, "task":Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    invoke-direct {p0, v1}, Lcom/google/android/imageloader/ImageLoader;->enqueueRequest(Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V

    goto :goto_0
.end method

.method public unbind(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mImageViewBinding:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    return-void
.end method
