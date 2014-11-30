.class public Lcom/dolphin/browser/tablist/ch;
.super Ljava/lang/Object;
.source "TabThumbLoader.java"


# static fields
.field private static a:Lcom/dolphin/browser/tablist/ch;


# instance fields
.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Lcom/dolphin/browser/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/util/f",
            "<",
            "Ljava/lang/Void;",
            "Lcom/dolphin/browser/tablist/bk;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;

.field private g:Lcom/dolphin/browser/tablist/ck;

.field private h:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ch;->b:Ljava/util/HashMap;

    .line 352
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d:Ljava/io/File;

    const-string v2, "tablist_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ch;->h:Ljava/io/File;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ch;->f:Landroid/os/Handler;

    .line 79
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 81
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/tablist/ch;->c:I

    .line 82
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/tablist/ch;->d:I

    .line 84
    invoke-direct {p0, v0}, Lcom/dolphin/browser/tablist/ch;->a(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method private a(I)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 340
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ch;->h:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    .line 346
    :catch_0
    move-exception v0

    .line 349
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a()Lcom/dolphin/browser/tablist/ch;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/dolphin/browser/tablist/ch;->a:Lcom/dolphin/browser/tablist/ch;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lcom/dolphin/browser/tablist/ch;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/tablist/ch;->a:Lcom/dolphin/browser/tablist/ch;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/dolphin/browser/tablist/ch;

    invoke-direct {v0}, Lcom/dolphin/browser/tablist/ch;-><init>()V

    sput-object v0, Lcom/dolphin/browser/tablist/ch;->a:Lcom/dolphin/browser/tablist/ch;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Lcom/dolphin/browser/tablist/ch;->a:Lcom/dolphin/browser/tablist/ch;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ch;)Lcom/dolphin/browser/tablist/ck;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->g:Lcom/dolphin/browser/tablist/ck;

    return-object v0
.end method

.method private a(Lcom/dolphin/browser/core/ITab;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 311
    :try_start_0
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 315
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 318
    :goto_1
    return-object v0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ch;Lcom/dolphin/browser/core/ITab;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/ch;->a(Lcom/dolphin/browser/core/ITab;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 368
    invoke-static {p1}, Lcom/dolphin/browser/b/m;->c(Landroid/content/Context;)J

    move-result-wide v0

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 371
    sub-long v0, v2, v0

    const-wide/32 v4, 0xf731400

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->h:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Lcom/dolphin/browser/tablist/cj;

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/dolphin/browser/tablist/cj;-><init>(Lcom/dolphin/browser/tablist/ch;JLandroid/content/Context;)V

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/cj;->start()V

    .line 390
    :cond_0
    return-void
.end method

.method private a(Lcom/dolphin/browser/tablist/bk;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 205
    invoke-virtual {p1}, Lcom/dolphin/browser/tablist/bk;->a()Lcom/dolphin/browser/core/ITab;

    move-result-object v3

    .line 206
    if-nez v3, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-direct {p0, v3}, Lcom/dolphin/browser/tablist/ch;->a(Lcom/dolphin/browser/core/ITab;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 211
    iget-object v5, p0, Lcom/dolphin/browser/tablist/ch;->b:Ljava/util/HashMap;

    monitor-enter v5

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 213
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 216
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 217
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/tablist/bk;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 221
    :cond_2
    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->getFakeProgress()I

    move-result v0

    .line 222
    if-lez v0, :cond_3

    const/16 v5, 0x50

    if-ge v0, v5, :cond_3

    .line 224
    invoke-virtual {p1, v1}, Lcom/dolphin/browser/tablist/bk;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 228
    :cond_3
    const/4 v0, 0x4

    invoke-interface {v3, v0}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 230
    :try_start_2
    iget v0, p0, Lcom/dolphin/browser/tablist/ch;->c:I

    iget v2, p0, Lcom/dolphin/browser/tablist/ch;->d:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 231
    :try_start_3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    new-instance v2, Lcom/dolphin/browser/tablist/ci;

    invoke-direct {v2, p0, v1}, Lcom/dolphin/browser/tablist/ci;-><init>(Lcom/dolphin/browser/tablist/ch;Landroid/graphics/Canvas;)V

    invoke-static {v2}, Lcom/dolphin/browser/util/df;->b(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 269
    :goto_1
    if-eqz v0, :cond_6

    .line 270
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/tablist/bk;->a(Landroid/graphics/Bitmap;)V

    .line 272
    iget-object v2, p0, Lcom/dolphin/browser/tablist/ch;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 273
    :try_start_4
    iget-object v3, p0, Lcom/dolphin/browser/tablist/ch;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 275
    invoke-virtual {p0, v4, v0}, Lcom/dolphin/browser/tablist/ch;->a(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 257
    :cond_4
    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 258
    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->getContentWidth()I

    move-result v5

    .line 259
    int-to-float v0, v5

    iget v6, p0, Lcom/dolphin/browser/tablist/ch;->c:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    .line 260
    iget v6, p0, Lcom/dolphin/browser/tablist/ch;->d:I

    int-to-float v6, v6

    mul-float/2addr v0, v6

    float-to-int v6, v0

    .line 262
    :try_start_5
    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->getScrollY()I

    move-result v0

    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->getTitleHeight()I

    move-result v7

    sub-int/2addr v0, v7

    int-to-float v0, v0

    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->getScale()F

    move-result v7

    div-float/2addr v0, v7

    float-to-int v0, v0

    .line 263
    if-gez v0, :cond_5

    move v0, v2

    .line 264
    :cond_5
    iget v2, p0, Lcom/dolphin/browser/tablist/ch;->c:I

    iget v7, p0, Lcom/dolphin/browser/tablist/ch;->d:I

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    add-int/2addr v6, v0

    invoke-direct {v8, v9, v0, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v3, v2, v7, v8}, Lcom/dolphin/browser/core/ITab;->captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_1

    .line 265
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 267
    goto :goto_1

    .line 266
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 274
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 278
    :cond_6
    invoke-direct {p0, v4}, Lcom/dolphin/browser/tablist/ch;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    .line 280
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 281
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/tablist/bk;->a(Landroid/graphics/Bitmap;)V

    .line 282
    iget-object v2, p0, Lcom/dolphin/browser/tablist/ch;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 283
    :try_start_7
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 255
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    .line 254
    :catch_4
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1

    :catch_5
    move-exception v1

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ch;Lcom/dolphin/browser/tablist/bk;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/ch;->a(Lcom/dolphin/browser/tablist/bk;)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/ch;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/tablist/ch;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/tablist/ch;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/dolphin/browser/tablist/ch;->c:I

    return v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 359
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/tablist/ch;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/dolphin/browser/tablist/ch;->d:I

    return v0
.end method

.method static synthetic f(Lcom/dolphin/browser/tablist/ch;)Ljava/io/File;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->h:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ch;->d()V

    .line 325
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ch;->h:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 331
    :cond_0
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/tablist/ck;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ch;->g:Lcom/dolphin/browser/tablist/ck;

    .line 90
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/bk;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ch;->c()V

    .line 112
    new-instance v0, Lcom/dolphin/browser/tablist/cl;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/tablist/cl;-><init>(Lcom/dolphin/browser/tablist/ch;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ch;->e:Lcom/dolphin/browser/util/f;

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->e:Lcom/dolphin/browser/util/f;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/f;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->e:Lcom/dolphin/browser/util/f;

    sget-object v1, Lcom/dolphin/browser/util/f;->g:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/util/f;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->e:Lcom/dolphin/browser/util/f;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->e:Lcom/dolphin/browser/util/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/f;->b(Z)Z

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ch;->e:Lcom/dolphin/browser/util/f;

    .line 295
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->e:Lcom/dolphin/browser/util/f;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->e:Lcom/dolphin/browser/util/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/f;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ch;->e:Lcom/dolphin/browser/util/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/f;->b(Z)Z

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ch;->e:Lcom/dolphin/browser/util/f;

    .line 305
    :cond_0
    return-void
.end method
