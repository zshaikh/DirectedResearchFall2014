.class public Lcom/dolphin/browser/ui/view/RemoteImageLoader;
.super Ljava/lang/Object;
.source "RemoteImageLoader.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# static fields
.field private static i:Lcom/dolphin/browser/ui/view/RemoteImageLoader;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/ui/view/s;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/ui/view/s;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/util/f",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Landroid/support/v4/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/f",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/d/c;

.field private final f:Ljava/lang/Object;

.field private g:Z

.field private h:Ljava/util/concurrent/Executor;

.field private j:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->f:Ljava/lang/Object;

    .line 99
    iput-boolean v3, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->g:Z

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->j:Landroid/content/Context;

    .line 119
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 124
    const/high16 v1, 0x100000

    const/16 v2, 0x10

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    .line 125
    new-instance v1, Lcom/dolphin/browser/ui/view/k;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/ui/view/k;-><init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;I)V

    iput-object v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->d:Landroid/support/v4/b/f;

    .line 132
    const-string v0, "images"

    invoke-static {p1, v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/dolphin/browser/ui/view/o;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/ui/view/o;-><init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)V

    new-array v2, v3, [Ljava/io/File;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/view/o;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 135
    const/4 v0, 0x2

    new-instance v1, Lcom/dolphin/browser/ui/view/l;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/ui/view/l;-><init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->h:Ljava/util/concurrent/Executor;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a:Ljava/util/HashMap;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->b:Ljava/util/HashMap;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->c:Ljava/util/HashMap;

    .line 145
    return-void
.end method

.method private a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 966
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 967
    const/4 v1, 0x1

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 971
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 972
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 973
    invoke-direct {p0, v3}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Landroid/graphics/BitmapFactory$Options;)V

    .line 974
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 975
    const/4 v4, 0x0

    :try_start_2
    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 978
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 979
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 981
    :goto_0
    return-object v0

    .line 976
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    .line 978
    :goto_1
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 979
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 978
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 979
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    .line 978
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 976
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 762
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 764
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 724
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 728
    if-nez p2, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-object v0

    .line 731
    :cond_1
    invoke-direct {p0, p2}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Landroid/graphics/BitmapFactory$Options;)V

    .line 736
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->e:Lcom/d/c;

    invoke-virtual {v1, p1}, Lcom/d/c;->a(Ljava/lang/String;)Lcom/d/i;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 737
    if-nez v2, :cond_2

    .line 753
    if-eqz v2, :cond_0

    .line 754
    invoke-virtual {v2}, Lcom/d/i;->close()V

    goto :goto_0

    .line 740
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, v1}, Lcom/d/i;->b(I)Ljava/io/InputStream;

    move-result-object v1

    .line 741
    if-eqz v1, :cond_5

    .line 742
    const/4 v3, 0x0

    invoke-static {v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 743
    if-ne p4, v4, :cond_3

    if-eq p3, v4, :cond_7

    :cond_3
    if-eqz v1, :cond_7

    :try_start_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p4, v0, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq p3, v0, :cond_7

    .line 746
    :cond_4
    const/4 v0, 0x0

    invoke-static {v1, p3, p4, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 747
    :try_start_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v3

    .line 753
    :cond_5
    :goto_1
    if-eqz v2, :cond_0

    .line 754
    invoke-virtual {v2}, Lcom/d/i;->close()V

    goto :goto_0

    .line 750
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 751
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 753
    if-eqz v2, :cond_0

    .line 754
    invoke-virtual {v2}, Lcom/d/i;->close()V

    goto :goto_0

    .line 753
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_6

    .line 754
    invoke-virtual {v2}, Lcom/d/i;->close()V

    :cond_6
    throw v0

    .line 753
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 750
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 706
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 708
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 710
    :try_start_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    goto :goto_0

    .line 714
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 716
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->e:Lcom/d/c;

    if-nez v0, :cond_1

    .line 717
    const/4 v0, 0x0

    .line 720
    :goto_1
    return-object v0

    .line 714
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 719
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->c(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Lcom/d/c;)Lcom/d/c;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->e:Lcom/d/c;

    return-object p1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 691
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 693
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 702
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 695
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private a(JJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 866
    if-nez p5, :cond_0

    .line 881
    :goto_0
    return-void

    .line 869
    :cond_0
    new-instance v0, Lcom/dolphin/browser/ui/view/m;

    move-object v1, p0

    move-object v2, p5

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/ui/view/m;-><init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/util/List;JJ)V

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/BitmapFactory$Options;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    const/16 v4, 0x800

    .line 928
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 929
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 930
    if-gt v1, v4, :cond_0

    if-le v0, v4, :cond_3

    :cond_0
    move v2, v3

    .line 934
    :goto_0
    if-gt v1, v4, :cond_1

    if-le v0, v4, :cond_2

    .line 935
    :cond_1
    mul-int/lit8 v2, v2, 0x2

    .line 936
    div-int/lit8 v1, v1, 0x2

    .line 937
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 939
    :cond_2
    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 941
    :cond_3
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v5, v0, :cond_4

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v5, v0, :cond_5

    .line 943
    :cond_4
    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 947
    :goto_1
    return-void

    .line 945
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 54
    invoke-static {p0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 950
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 951
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 952
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 953
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Landroid/graphics/BitmapFactory$Options;)V

    .line 954
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Lcom/d/c;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->e:Lcom/d/c;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 851
    const-string v1, "Images"

    .line 852
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 853
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 854
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    .line 855
    if-eqz v0, :cond_0

    .line 858
    invoke-interface {v0, p1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1010
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1011
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 985
    .line 986
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 987
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 988
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 990
    :try_start_0
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->e:Lcom/d/c;

    invoke-virtual {v2, p1}, Lcom/d/c;->a(Ljava/lang/String;)Lcom/d/i;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 991
    if-nez v2, :cond_1

    .line 1002
    if-eqz v2, :cond_0

    .line 1003
    invoke-virtual {v2}, Lcom/d/i;->close()V

    .line 1006
    :cond_0
    :goto_0
    return-object v0

    .line 994
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/d/i;->b(I)Ljava/io/InputStream;

    move-result-object v0

    .line 995
    if-eqz v0, :cond_2

    .line 996
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 997
    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1002
    :cond_2
    if-eqz v2, :cond_3

    .line 1003
    invoke-virtual {v2}, Lcom/d/i;->close()V

    :cond_3
    :goto_1
    move-object v0, v1

    .line 1006
    goto :goto_0

    .line 999
    :catch_0
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    .line 1000
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1002
    if-eqz v2, :cond_3

    .line 1003
    invoke-virtual {v2}, Lcom/d/i;->close()V

    goto :goto_1

    .line 1002
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_4

    .line 1003
    invoke-virtual {v2}, Lcom/d/i;->close()V

    :cond_4
    throw v0

    .line 1002
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 999
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic c(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Landroid/support/v4/b/f;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->d:Landroid/support/v4/b/f;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->j:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/dolphin/browser/ui/view/RemoteImageLoader;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->i:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->i:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    .line 112
    :cond_0
    sget-object v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->i:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 768
    const/4 v10, 0x1

    .line 770
    invoke-direct/range {p0 .. p2}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->b(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    .line 772
    :cond_0
    :goto_0
    const/4 v1, 0x3

    if-gt v10, v1, :cond_7

    .line 774
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 776
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 778
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 779
    :catch_0
    move-exception v1

    goto :goto_1

    .line 782
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 784
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->e:Lcom/d/c;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v1, :cond_0

    .line 788
    const/4 v2, 0x0

    .line 789
    const/4 v4, 0x0

    .line 791
    const/4 v1, 0x0

    .line 793
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 794
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->e:Lcom/d/c;

    invoke-virtual {v5, v3}, Lcom/d/c;->b(Ljava/lang/String;)Lcom/d/f;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v9

    .line 795
    if-nez v9, :cond_2

    .line 837
    :try_start_6
    invoke-static {v4}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 838
    invoke-static {v1}, Lcom/dolphin/browser/test/a/a;->a(Lorg/apache/http/client/HttpClient;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 841
    :catch_1
    move-exception v1

    .line 842
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 843
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 844
    add-int/lit8 v10, v10, 0x1

    .line 845
    goto :goto_0

    .line 782
    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 798
    :cond_2
    :try_start_9
    const-string v2, "http client (Android)"

    invoke-static {v2, v12}, Lcom/dolphin/browser/test/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v7

    .line 799
    :try_start_a
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 800
    invoke-interface {v7, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 801
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 803
    if-nez v1, :cond_3

    .line 804
    invoke-static {v7}, Lcom/dolphin/browser/test/a/a;->a(Lorg/apache/http/client/HttpClient;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 805
    const/4 v1, 0x0

    .line 837
    :try_start_b
    invoke-static {v4}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 838
    invoke-static {v1}, Lcom/dolphin/browser/test/a/a;->a(Lorg/apache/http/client/HttpClient;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_0

    .line 808
    :cond_3
    :try_start_c
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 809
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 811
    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {v9, v1}, Lcom/d/f;->a(I)Ljava/io/OutputStream;

    move-result-object v13

    .line 814
    const/16 v1, 0x1000

    new-array v14, v1, [B

    .line 815
    const/4 v1, 0x0

    .line 816
    const-wide/16 v4, 0x0

    .line 817
    :goto_3
    const/4 v6, -0x1

    if-eq v1, v6, :cond_5

    .line 818
    const/4 v1, 0x0

    const/16 v6, 0x1000

    invoke-virtual {v8, v14, v1, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v11

    .line 819
    if-lez v11, :cond_4

    .line 820
    int-to-long v15, v11

    add-long/2addr v4, v15

    .line 821
    const/4 v1, 0x0

    invoke-virtual {v13, v14, v1, v11}, Ljava/io/OutputStream;->write([BII)V

    :cond_4
    move-object/from16 v1, p0

    move-object/from16 v6, p2

    .line 823
    invoke-direct/range {v1 .. v6}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(JJLjava/util/List;)V

    move v1, v11

    goto :goto_3

    .line 825
    :cond_5
    invoke-virtual {v9}, Lcom/d/f;->a()V

    .line 826
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->e:Lcom/d/c;

    invoke-virtual {v1}, Lcom/d/c;->a()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 827
    const/4 v1, 0x4

    .line 837
    :try_start_e
    invoke-static {v8}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 838
    invoke-static {v7}, Lcom/dolphin/browser/test/a/a;->a(Lorg/apache/http/client/HttpClient;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3

    :goto_4
    move v10, v1

    .line 845
    goto/16 :goto_0

    .line 828
    :catch_2
    move-exception v3

    move-object v3, v4

    move-object v4, v2

    move-object v2, v1

    .line 829
    :goto_5
    add-int/lit8 v1, v10, 0x1

    .line 831
    if-eqz v4, :cond_6

    .line 832
    :try_start_f
    invoke-virtual {v4}, Lcom/d/f;->b()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 837
    :cond_6
    :goto_6
    :try_start_10
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 838
    invoke-static {v2}, Lcom/dolphin/browser/test/a/a;->a(Lorg/apache/http/client/HttpClient;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_4

    .line 841
    :catch_3
    move-exception v2

    move v10, v1

    move-object v1, v2

    goto/16 :goto_2

    .line 837
    :catchall_1
    move-exception v2

    move-object v7, v1

    move-object v1, v2

    move v2, v10

    :goto_7
    :try_start_11
    invoke-static {v4}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 838
    invoke-static {v7}, Lcom/dolphin/browser/test/a/a;->a(Lorg/apache/http/client/HttpClient;)V

    .line 839
    throw v1
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4

    .line 841
    :catch_4
    move-exception v1

    move v10, v2

    goto/16 :goto_2

    .line 834
    :catch_5
    move-exception v4

    goto :goto_6

    .line 847
    :cond_7
    return-void

    .line 837
    :catchall_2
    move-exception v1

    move v2, v10

    goto :goto_7

    :catchall_3
    move-exception v1

    move-object v4, v8

    move v2, v10

    goto :goto_7

    :catchall_4
    move-exception v4

    move-object v7, v2

    move v2, v1

    move-object v1, v4

    move-object v4, v3

    goto :goto_7

    .line 828
    :catch_6
    move-exception v2

    move-object v2, v1

    move-object v3, v4

    move-object v4, v9

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v2, v7

    move-object v3, v4

    move-object v4, v9

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    goto :goto_5
.end method

.method public getImageInCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->d:Landroid/support/v4/b/f;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)Z
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 215
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->loadSizedImage(Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;II)Z

    move-result v0

    return v0
.end method

.method public loadLargeImage(Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$LargeImageCallback;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->d:Landroid/support/v4/b/f;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 166
    if-eqz v0, :cond_0

    .line 167
    invoke-interface {p2, p1, v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$LargeImageCallback;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 183
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/view/u;

    .line 171
    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/ui/view/u;->a(Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V

    goto :goto_0

    .line 174
    :cond_2
    new-instance v0, Lcom/dolphin/browser/ui/view/u;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/ui/view/u;-><init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$LargeImageCallback;Ljava/io/File;)V

    .line 175
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->h:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 180
    :cond_3
    invoke-interface {p2, p1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$LargeImageCallback;->onImageLoadFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadSizedImage(Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;II)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 219
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->d:Landroid/support/v4/b/f;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-interface {p2, p1, v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move v0, v1

    .line 255
    :goto_0
    return v0

    .line 224
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/view/s;

    .line 226
    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/ui/view/s;->a(Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V

    :cond_2
    :goto_1
    move v0, v6

    .line 255
    goto :goto_0

    .line 229
    :cond_3
    new-instance v0, Lcom/dolphin/browser/ui/view/s;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/ui/view/s;-><init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;II)V

    .line 230
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->h:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/util/f;

    .line 235
    if-nez v0, :cond_8

    .line 236
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 237
    new-instance v0, Lcom/dolphin/browser/ui/view/x;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/ui/view/x;-><init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V

    .line 245
    :goto_2
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v6

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/f;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_1

    .line 238
    :cond_5
    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 239
    new-instance v0, Lcom/dolphin/browser/ui/view/p;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->j:Landroid/content/Context;

    invoke-direct {v0, p0, v2, p2}, Lcom/dolphin/browser/ui/view/p;-><init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Landroid/content/Context;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V

    goto :goto_2

    .line 240
    :cond_6
    const-string v0, "asset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 241
    new-instance v0, Lcom/dolphin/browser/ui/view/n;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/ui/view/n;-><init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V

    goto :goto_2

    .line 243
    :cond_7
    new-instance v0, Lcom/dolphin/browser/ui/view/r;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/ui/view/r;-><init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V

    goto :goto_2

    .line 249
    :cond_8
    instance-of v1, v0, Lcom/dolphin/browser/ui/view/q;

    if-eqz v1, :cond_2

    .line 250
    check-cast v0, Lcom/dolphin/browser/ui/view/q;

    invoke-interface {v0, p2}, Lcom/dolphin/browser/ui/view/q;->a(Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V

    goto :goto_1
.end method
