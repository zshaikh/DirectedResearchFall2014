.class Lcom/facebook/orca/images/ImageCache$CachedBitmap;
.super Ljava/lang/Object;
.source "ImageCache.java"


# instance fields
.field private final a:Lcom/facebook/orca/images/ImageCacheKey;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:I

.field private volatile d:J

.field private e:J


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;I)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->a:Lcom/facebook/orca/images/ImageCacheKey;

    .line 61
    iput-object p2, p0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->b:Landroid/graphics/Bitmap;

    .line 62
    iput p3, p0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->c:I

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->d:J

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/ImageCache$CachedBitmap;J)J
    .locals 0

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)Lcom/facebook/orca/images/ImageCacheKey;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->a:Lcom/facebook/orca/images/ImageCacheKey;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->c:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->e:J

    return-wide v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->d:J

    .line 68
    return-void
.end method
