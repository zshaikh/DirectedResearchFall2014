.class public Lcom/dolphin/browser/search/a/e;
.super Ljava/util/Observable;
.source "SearchEngineIconManager.java"


# static fields
.field private static volatile a:Lcom/dolphin/browser/search/a/e;

.field private static final d:[Ljava/lang/String;

.field private static final e:[I


# instance fields
.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "engine_bing.png"

    aput-object v1, v0, v3

    const-string v1, "engine_google.png"

    aput-object v1, v0, v4

    const-string v1, "engine_yahoo.png"

    aput-object v1, v0, v5

    const-string v1, "engine_duckduckgo.png"

    aput-object v1, v0, v6

    const-string v1, "engine_yandex.png"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "amazon_universal9070.png"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "engine_yahoo_japan.png"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rakuton_universal9070.png"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/search/a/e;->d:[Ljava/lang/String;

    .line 186
    const/16 v0, 0x8

    new-array v0, v0, [I

    sget-object v1, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v1, 0x7f06001a

    aput v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v1, 0x7f06001c

    aput v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v1, 0x7f06001e

    aput v1, v0, v5

    sget-object v1, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v1, 0x7f06001b

    aput v1, v0, v6

    sget-object v1, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v1, 0x7f060020

    aput v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060019

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f06001f

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f06001d

    aput v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/search/a/e;->e:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/a/e;->b:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/a/e;->c:Ljava/util/Map;

    .line 55
    return-void
.end method

.method public static a()Lcom/dolphin/browser/search/a/e;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/dolphin/browser/search/a/e;->a:Lcom/dolphin/browser/search/a/e;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/dolphin/browser/f/a/b;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/search/a/e;->a:Lcom/dolphin/browser/search/a/e;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/dolphin/browser/search/a/e;

    invoke-direct {v0}, Lcom/dolphin/browser/search/a/e;-><init>()V

    sput-object v0, Lcom/dolphin/browser/search/a/e;->a:Lcom/dolphin/browser/search/a/e;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lcom/dolphin/browser/search/a/e;->a:Lcom/dolphin/browser/search/a/e;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/search/a/d;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/search/a/e;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/search/a/e;->b:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/search/a/e;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/search/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v4

    .line 255
    :cond_1
    invoke-static {p1}, Lcom/dolphin/browser/search/a/e;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 256
    const-wide v2, 0x7fffffffffffffffL

    const-string v5, "BizSearch"

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/Network/l;->a(Ljava/lang/String;Ljava/io/File;JZLjava/lang/String;)Z

    move-result v4

    .line 257
    if-eqz v4, :cond_0

    .line 258
    invoke-static {p1}, Lcom/dolphin/browser/search/a/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/search/a/d;->a()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/search/a/e;)V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/dolphin/browser/search/a/e;->setChanged()V

    return-void
.end method

.method private g(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/a/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 128
    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 130
    if-nez v0, :cond_0

    move-object v1, v0

    .line 137
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/dolphin/browser/search/a/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 147
    :goto_1
    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/dolphin/browser/search/a/e;->c:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method private h(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 197
    move v0, v1

    :goto_0
    sget-object v2, Lcom/dolphin/browser/search/a/e;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 198
    sget-object v2, Lcom/dolphin/browser/search/a/e;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    sget-object v1, Lcom/dolphin/browser/search/a/e;->e:[I

    aget v1, v1, v0

    .line 202
    :cond_0
    return v1

    .line 197
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-direct {p0, v1}, Lcom/dolphin/browser/search/a/e;->h(Ljava/lang/String;)I

    move-result v1

    .line 74
    if-eqz v1, :cond_0

    .line 79
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/util/bb;->g(I)Lcom/e/a/z;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/a/e;->e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/a/e;->f(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-object v0
.end method

.method public e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-direct {p0, v1}, Lcom/dolphin/browser/search/a/e;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 111
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/dolphin/browser/search/a/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/dolphin/browser/search/a/e;->setChanged()V

    .line 218
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/a/e;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/search/a/e;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/dolphin/browser/search/a/e;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v1, Lcom/dolphin/browser/search/a/f;

    invoke-direct {v1, p0, v0, p1}, Lcom/dolphin/browser/search/a/f;-><init>(Lcom/dolphin/browser/search/a/e;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method
