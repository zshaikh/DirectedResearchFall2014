.class Lcom/google/android/imageloader/BitmapCache;
.super Ljava/util/LinkedHashMap;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final BYTES_PER_PIXEL:J = 0x4L

.field private static final INITIAL_CAPACITY:I = 0x20

.field private static final LOAD_FACTOR:F = 0.75f


# instance fields
.field private final mMaxBytes:J

.field private mRemove:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "maxBytes"    # J

    .prologue
    .line 46
    .local p0, "this":Lcom/google/android/imageloader/BitmapCache;, "Lcom/google/android/imageloader/BitmapCache<TK;>;"
    const/16 v0, 0x20

    const/high16 v1, 0x3f400000

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 47
    iput-wide p1, p0, Lcom/google/android/imageloader/BitmapCache;->mMaxBytes:J

    .line 48
    return-void
.end method

.method private nullKeyException()Ljava/lang/NullPointerException;
    .locals 2

    .prologue
    .line 101
    .local p0, "this":Lcom/google/android/imageloader/BitmapCache;, "Lcom/google/android/imageloader/BitmapCache<TK;>;"
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static sizeOf(Landroid/graphics/Bitmap;)J
    .locals 4
    .param p0, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static sizeOf(Ljava/lang/Iterable;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "bitmaps":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/graphics/Bitmap;>;"
    const-wide/16 v1, 0x0

    .line 56
    .local v1, "total":J
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 59
    return-wide v1

    .line 56
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 57
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/google/android/imageloader/BitmapCache;->sizeOf(Landroid/graphics/Bitmap;)J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_0
.end method

.method private trim()V
    .locals 4

    .prologue
    .line 94
    .local p0, "this":Lcom/google/android/imageloader/BitmapCache;, "Lcom/google/android/imageloader/BitmapCache<TK;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/imageloader/BitmapCache;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/imageloader/BitmapCache;->sizeOf(Ljava/lang/Iterable;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/imageloader/BitmapCache;->mMaxBytes:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 97
    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/google/android/imageloader/BitmapCache;->trimEldest()V

    goto :goto_0
.end method

.method private trimEldest()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/android/imageloader/BitmapCache;, "Lcom/google/android/imageloader/BitmapCache<TK;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-super {p0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/imageloader/BitmapCache;->mRemove:Z

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iput-boolean v3, p0, Lcom/google/android/imageloader/BitmapCache;->mRemove:Z

    .line 83
    invoke-super {p0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    iput-boolean v3, p0, Lcom/google/android/imageloader/BitmapCache;->mRemove:Z

    .line 80
    throw v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 138
    .local p0, "this":Lcom/google/android/imageloader/BitmapCache;, "Lcom/google/android/imageloader/BitmapCache<TK;>;"
    if-nez p1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/google/android/imageloader/BitmapCache;->nullKeyException()Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0

    .line 141
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 130
    .local p0, "this":Lcom/google/android/imageloader/BitmapCache;, "Lcom/google/android/imageloader/BitmapCache<TK;>;"
    if-nez p1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/google/android/imageloader/BitmapCache;->nullKeyException()Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0

    .line 133
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/imageloader/BitmapCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2, "value"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/google/android/imageloader/BitmapCache;, "Lcom/google/android/imageloader/BitmapCache<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/google/android/imageloader/BitmapCache;->nullKeyException()Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0

    .line 110
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-direct {p0}, Lcom/google/android/imageloader/BitmapCache;->trim()V

    .line 110
    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    invoke-direct {p0}, Lcom/google/android/imageloader/BitmapCache;->trim()V

    .line 113
    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/imageloader/BitmapCache;->put(Ljava/lang/Object;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/google/android/imageloader/BitmapCache;, "Lcom/google/android/imageloader/BitmapCache<TK;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/google/android/imageloader/BitmapCache;->nullKeyException()Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0

    .line 122
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-direct {p0}, Lcom/google/android/imageloader/BitmapCache;->trim()V

    .line 126
    return-void

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    invoke-direct {p0}, Lcom/google/android/imageloader/BitmapCache;->trim()V

    .line 125
    throw v0
.end method

.method public remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 146
    .local p0, "this":Lcom/google/android/imageloader/BitmapCache;, "Lcom/google/android/imageloader/BitmapCache<TK;>;"
    if-nez p1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/google/android/imageloader/BitmapCache;->nullKeyException()Ljava/lang/NullPointerException;

    move-result-object v0

    throw v0

    .line 149
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/imageloader/BitmapCache;->remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/google/android/imageloader/BitmapCache;, "Lcom/google/android/imageloader/BitmapCache<TK;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Landroid/graphics/Bitmap;>;"
    iget-boolean v0, p0, Lcom/google/android/imageloader/BitmapCache;->mRemove:Z

    return v0
.end method
