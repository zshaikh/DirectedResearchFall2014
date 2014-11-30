.class public final Lcom/dolphin/browser/b/a;
.super Ljava/lang/Object;
.source "ImageManager.java"


# static fields
.field private static final a:I

.field private static final b:Ljava/lang/String;

.field private static final c:I

.field private static e:Lcom/dolphin/browser/b/a;


# instance fields
.field private final d:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/io/File;

.field private j:Ljava/io/File;

.field private k:Lcom/dolphin/browser/b/n;

.field private l:[Lcom/dolphin/browser/b/k;

.field private final m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/os/Handler;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const/16 v0, 0x96

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    const/16 v1, 0xc8

    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v1

    mul-int/2addr v0, v1

    sput v0, Lcom/dolphin/browser/b/a;->a:I

    .line 79
    const-class v0, Lcom/dolphin/browser/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/b/a;->b:Ljava/lang/String;

    .line 81
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/dolphin/browser/b/a;->c:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v2, ""

    iput-object v2, p0, Lcom/dolphin/browser/b/a;->f:Ljava/lang/String;

    .line 90
    const-string v2, ""

    iput-object v2, p0, Lcom/dolphin/browser/b/a;->g:Ljava/lang/String;

    .line 91
    iput-boolean v0, p0, Lcom/dolphin/browser/b/a;->h:Z

    .line 95
    new-instance v2, Lcom/dolphin/browser/b/n;

    invoke-direct {v2}, Lcom/dolphin/browser/b/n;-><init>()V

    iput-object v2, p0, Lcom/dolphin/browser/b/a;->k:Lcom/dolphin/browser/b/n;

    .line 542
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/dolphin/browser/b/a;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 548
    new-instance v2, Lcom/dolphin/browser/b/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/dolphin/browser/b/e;-><init>(Lcom/dolphin/browser/b/a;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/dolphin/browser/b/a;->n:Landroid/os/Handler;

    .line 590
    iput-boolean v1, p0, Lcom/dolphin/browser/b/a;->p:Z

    .line 829
    iput-boolean v1, p0, Lcom/dolphin/browser/b/a;->q:Z

    .line 830
    iput v1, p0, Lcom/dolphin/browser/b/a;->r:I

    .line 831
    iput v1, p0, Lcom/dolphin/browser/b/a;->s:I

    .line 197
    invoke-static {p1}, Lcom/dolphin/browser/util/DisplayManager;->getDeviceType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/b/a;->q:Z

    .line 198
    iput-object p1, p0, Lcom/dolphin/browser/b/a;->d:Landroid/content/Context;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cache/speeddial_covers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/b/a;->f:Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Saved_images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/b/a;->g:Ljava/lang/String;

    .line 201
    invoke-virtual {p0}, Lcom/dolphin/browser/b/a;->b()V

    .line 203
    return-void

    :cond_0
    move v0, v1

    .line 197
    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/b/a;
    .locals 4

    .prologue
    .line 185
    const-class v1, Lcom/dolphin/browser/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/b/a;->e:Lcom/dolphin/browser/b/a;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/dolphin/browser/b/a;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/core/Configuration;->getImageCacheDirBase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/dolphin/browser/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/b/a;->e:Lcom/dolphin/browser/b/a;

    .line 188
    :cond_0
    sget-object v0, Lcom/dolphin/browser/b/a;->e:Lcom/dolphin/browser/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/b/a;)Ljava/io/File;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->i:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/b/a;Lcom/dolphin/browser/b/j;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/dolphin/browser/b/a;->a(Lcom/dolphin/browser/b/j;)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/b/j;)V
    .locals 2

    .prologue
    .line 726
    if-eqz p1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->m:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/dolphin/browser/b/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/b/g;

    .line 728
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dolphin/browser/b/g;->b:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 729
    invoke-direct {p0, p1}, Lcom/dolphin/browser/b/a;->b(Lcom/dolphin/browser/b/j;)I

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->k:Lcom/dolphin/browser/b/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/b/n;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 733
    invoke-direct {p0}, Lcom/dolphin/browser/b/a;->d()V

    .line 735
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/b/a;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/dolphin/browser/b/a;->o:Z

    return p1
.end method

.method static synthetic a(Lcom/dolphin/browser/b/a;[Lcom/dolphin/browser/b/k;)[Lcom/dolphin/browser/b/k;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/dolphin/browser/b/a;->l:[Lcom/dolphin/browser/b/k;

    return-object p1
.end method

.method private b(Lcom/dolphin/browser/b/j;)I
    .locals 2

    .prologue
    .line 788
    iget-object v0, p1, Lcom/dolphin/browser/b/j;->b:Lcom/dolphin/browser/b/h;

    iget-object v1, p1, Lcom/dolphin/browser/b/j;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/b/a;->c(Lcom/dolphin/browser/b/h;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/b/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 493
    sget-object v0, Lcom/dolphin/browser/b/a;->b:Ljava/lang/String;

    const-string v1, "decodeBitmapInternal path=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 495
    const/4 v0, 0x0

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/b/a;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/util/aj;->a(Landroid/content/Context;)V

    .line 498
    if-eqz p3, :cond_0

    .line 499
    sget v1, Lcom/dolphin/browser/b/a;->a:I

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lcom/dolphin/browser/util/aj;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 505
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 506
    return-object v0

    .line 501
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/dolphin/browser/b/a;->d:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/dolphin/browser/util/aj;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c(Lcom/dolphin/browser/b/h;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 762
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/b/g;

    .line 763
    if-nez v0, :cond_1

    .line 764
    new-instance v0, Lcom/dolphin/browser/b/g;

    invoke-direct {v0, v4}, Lcom/dolphin/browser/b/g;-><init>(Lcom/dolphin/browser/b/b;)V

    .line 765
    iget-object v1, p0, Lcom/dolphin/browser/b/a;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_0
    :goto_0
    iget v0, v0, Lcom/dolphin/browser/b/g;->a:I

    return v0

    .line 766
    :cond_1
    iget v1, v0, Lcom/dolphin/browser/b/g;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 768
    iget-object v1, v0, Lcom/dolphin/browser/b/g;->b:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_2

    .line 769
    iput v3, v0, Lcom/dolphin/browser/b/g;->a:I

    goto :goto_0

    .line 771
    :cond_2
    iget-object v1, v0, Lcom/dolphin/browser/b/g;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 772
    if-eqz v1, :cond_3

    .line 773
    invoke-interface {p1, v1, p2}, Lcom/dolphin/browser/b/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :cond_3
    iput-object v4, v0, Lcom/dolphin/browser/b/g;->b:Ljava/lang/ref/SoftReference;

    .line 778
    iput v3, v0, Lcom/dolphin/browser/b/g;->a:I

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/dolphin/browser/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/b/a;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/dolphin/browser/b/a;->p:Z

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 719
    iget-boolean v0, p0, Lcom/dolphin/browser/b/a;->o:Z

    if-nez v0, :cond_0

    .line 720
    iput-boolean v1, p0, Lcom/dolphin/browser/b/a;->o:Z

    .line 721
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 723
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/b/a;)[Lcom/dolphin/browser/b/k;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->l:[Lcom/dolphin/browser/b/k;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/b/a;)Lcom/dolphin/browser/b/n;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->k:Lcom/dolphin/browser/b/n;

    return-object v0
.end method

.method static synthetic f(Lcom/dolphin/browser/b/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->n:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 343
    :cond_0
    :goto_0
    return-object v0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/b/g;

    .line 331
    if-eqz v0, :cond_3

    .line 332
    iget-object v0, v0, Lcom/dolphin/browser/b/g;->b:Ljava/lang/ref/SoftReference;

    .line 334
    if-eqz v0, :cond_3

    .line 335
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 339
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/b/a;->b(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 679
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    const/4 v0, 0x0

    .line 684
    :goto_0
    return-object v0

    .line 683
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/b/a;->b(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dolphin/browser/b/a;->i:Ljava/io/File;

    const-string v2, "%08x.cache"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 133
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/dolphin/browser/b/a;->p:Z

    if-eqz v0, :cond_0

    .line 754
    :goto_0
    return-void

    .line 744
    :cond_0
    new-instance v0, Lcom/dolphin/browser/b/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/b/g;-><init>(Lcom/dolphin/browser/b/b;)V

    .line 745
    if-nez p2, :cond_1

    .line 746
    const/4 v1, 0x3

    iput v1, v0, Lcom/dolphin/browser/b/g;->a:I

    .line 753
    :goto_1
    iget-object v1, p0, Lcom/dolphin/browser/b/a;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 748
    :cond_1
    sget v1, Lcom/dolphin/browser/b/a;->c:I

    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 749
    const/4 v1, 0x2

    iput v1, v0, Lcom/dolphin/browser/b/g;->a:I

    .line 750
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/dolphin/browser/b/g;->b:Ljava/lang/ref/SoftReference;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/b/l;)V
    .locals 2

    .prologue
    .line 441
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dolphin/browser/b/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/dolphin/browser/b/d;-><init>(Lcom/dolphin/browser/b/a;Ljava/lang/String;Lcom/dolphin/browser/b/l;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 469
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/b/m;->b(Landroid/content/Context;)J

    move-result-wide v0

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 214
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->d:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/b/m;->a(Landroid/content/Context;J)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    sub-long v0, v2, v0

    const-wide/32 v4, 0xf731400

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->i:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/b/a;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Lcom/dolphin/browser/b/b;

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/dolphin/browser/b/b;-><init>(Lcom/dolphin/browser/b/a;Ljava/util/Set;J)V

    invoke-virtual {v0}, Lcom/dolphin/browser/b/b;->start()V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/b/h;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 389
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    :goto_0
    return v0

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/b/a;->l:[Lcom/dolphin/browser/b/k;

    .line 392
    if-eqz v1, :cond_2

    .line 393
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 394
    invoke-static {v3}, Lcom/dolphin/browser/b/k;->a(Lcom/dolphin/browser/b/k;)Lcom/dolphin/browser/b/j;

    move-result-object v3

    .line 395
    if-eqz v3, :cond_1

    .line 396
    iget-object v4, v3, Lcom/dolphin/browser/b/j;->b:Lcom/dolphin/browser/b/h;

    if-ne v4, p1, :cond_1

    iget-object v3, v3, Lcom/dolphin/browser/b/j;->a:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    const/4 v0, 0x1

    goto :goto_0

    .line 393
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->k:Lcom/dolphin/browser/b/n;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/b/n;->a(Lcom/dolphin/browser/b/h;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 173
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p1}, Lcom/dolphin/browser/util/aj;->a(Ljava/io/File;)Z

    move-result v0

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/dolphin/browser/b/i;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 989
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1020
    :cond_0
    :goto_0
    return v0

    .line 993
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "box"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 995
    invoke-virtual {p0, v1, p2}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 997
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 998
    const/4 v3, 0x0

    .line 1000
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p2, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1002
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1003
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1004
    const/4 v0, 0x1

    .line 1012
    if-eqz v2, :cond_0

    .line 1014
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1015
    :catch_0
    move-exception v1

    .line 1016
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1005
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 1006
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1012
    if-eqz v2, :cond_0

    .line 1014
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1015
    :catch_2
    move-exception v1

    .line 1016
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1007
    :catch_3
    move-exception v1

    move-object v2, v3

    .line 1008
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1012
    if-eqz v2, :cond_0

    .line 1014
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 1015
    :catch_4
    move-exception v1

    .line 1016
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1009
    :catch_5
    move-exception v1

    move-object v2, v3

    .line 1010
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1012
    if-eqz v2, :cond_0

    .line 1014
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 1015
    :catch_6
    move-exception v1

    .line 1016
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1012
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_2

    .line 1014
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1017
    :cond_2
    :goto_5
    throw v0

    .line 1015
    :catch_7
    move-exception v1

    .line 1016
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1012
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1009
    :catch_8
    move-exception v1

    goto :goto_3

    .line 1007
    :catch_9
    move-exception v1

    goto :goto_2

    .line 1005
    :catch_a
    move-exception v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)Z
    .locals 6

    .prologue
    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    const/4 v0, 0x0

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 425
    :cond_1
    if-nez p2, :cond_2

    .line 426
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 430
    :goto_1
    const-wide/32 v2, 0x177000

    const/4 v4, 0x1

    const-string v5, "Image"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/Network/l;->a(Ljava/lang/String;Ljava/io/File;JZLjava/lang/String;)Z

    move-result v0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/b/a;->a(Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move-object v1, p2

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 359
    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 278
    invoke-static {}, Lcom/dolphin/browser/util/cm;->a()Ljava/io/File;

    move-result-object v0

    .line 280
    if-nez v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 282
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dolphin/browser/b/a;->h:Z

    .line 287
    :goto_0
    if-eqz v0, :cond_2

    .line 288
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/dolphin/browser/b/a;->f:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 292
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/dolphin/browser/b/a;->g:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 296
    :cond_1
    iput-object v1, p0, Lcom/dolphin/browser/b/a;->i:Ljava/io/File;

    .line 297
    iput-object v2, p0, Lcom/dolphin/browser/b/a;->j:Ljava/io/File;

    .line 299
    :cond_2
    return-void

    .line 284
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dolphin/browser/b/a;->h:Z

    goto :goto_0
.end method

.method public b(Lcom/dolphin/browser/b/h;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 693
    if-nez p1, :cond_0

    .line 694
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "call back needed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/dolphin/browser/b/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->k:Lcom/dolphin/browser/b/n;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/b/n;->a(Lcom/dolphin/browser/b/h;)V

    .line 710
    :cond_1
    :goto_0
    return-void

    .line 700
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/b/a;->c(Lcom/dolphin/browser/b/h;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 701
    :goto_1
    if-eqz v0, :cond_4

    .line 702
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->k:Lcom/dolphin/browser/b/n;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/b/n;->a(Lcom/dolphin/browser/b/h;)V

    goto :goto_0

    .line 700
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 704
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/b/a;->k:Lcom/dolphin/browser/b/n;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/b/n;->b(Lcom/dolphin/browser/b/h;Ljava/lang/String;)V

    .line 705
    iget-boolean v0, p0, Lcom/dolphin/browser/b/a;->p:Z

    if-nez v0, :cond_1

    .line 706
    invoke-direct {p0}, Lcom/dolphin/browser/b/a;->d()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/dolphin/browser/b/i;)V
    .locals 2

    .prologue
    .line 1025
    new-instance v0, Lcom/dolphin/browser/b/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/b/f;-><init>(Lcom/dolphin/browser/b/a;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/dolphin/browser/b/i;)V

    .line 1042
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/f;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :goto_0
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 653
    const/4 v1, 0x0

    .line 655
    invoke-static {p1}, Lcom/dolphin/browser/util/cn;->g(Ljava/lang/String;)Z

    move-result v2

    .line 656
    if-eqz v2, :cond_2

    .line 657
    invoke-static {p1}, Lcom/dolphin/browser/util/cn;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    :goto_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 660
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 661
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 664
    :cond_0
    if-nez v1, :cond_1

    .line 665
    invoke-virtual {p0, v0, v3}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 669
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "box"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/b/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
