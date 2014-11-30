.class public Lcom/dolphin/browser/f/a/b;
.super Ljava/util/Observable;
.source "FaviconManager.java"


# instance fields
.field private a:Lcom/dolphin/browser/f/a/g;

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

.field private c:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 444
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/f/a/b;->c:Landroid/graphics/Paint;

    .line 59
    invoke-static {}, Lcom/dolphin/browser/f/a/g;->a()Lcom/dolphin/browser/f/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/f/a/b;->a:Lcom/dolphin/browser/f/a/g;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/f/a/b;->b:Ljava/util/Set;

    .line 63
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/f/a/c;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/f/a/c;-><init>(Lcom/dolphin/browser/f/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/f/a/c;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/dolphin/browser/f/a/b;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 447
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 475
    :goto_0
    return-object v0

    .line 450
    :cond_1
    const/16 v0, 0x72

    .line 451
    const/16 v2, 0x28

    .line 452
    const/16 v3, 0x2a

    .line 453
    const/4 v4, 0x5

    .line 454
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 456
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 457
    iget-object v6, p0, Lcom/dolphin/browser/f/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v6, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 458
    iget-object v6, p0, Lcom/dolphin/browser/f/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 459
    iget-object v6, p0, Lcom/dolphin/browser/f/a/b;->c:Landroid/graphics/Paint;

    int-to-float v4, v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 460
    iget-object v4, p0, Lcom/dolphin/browser/f/a/b;->c:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 461
    const/16 v4, 0x39

    .line 463
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 464
    int-to-float v7, v4

    int-to-float v4, v4

    int-to-float v3, v3

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v7, v4, v3, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 465
    iget-object v3, p0, Lcom/dolphin/browser/f/a/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 466
    invoke-static {p1, v2, v2, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 468
    const/16 v3, 0x25

    .line 470
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move-object v0, v1

    .line 472
    goto :goto_0

    .line 474
    :cond_3
    int-to-float v4, v3

    int-to-float v3, v3

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/f/a/b;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/dolphin/browser/f/a/b;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/dolphin/browser/f/a/b;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/dolphin/browser/f/a/f;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/f/a/b;)Lcom/dolphin/browser/f/a/g;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/f/a/b;->a:Lcom/dolphin/browser/f/a/g;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    invoke-static {p1}, Lcom/dolphin/browser/f/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Lcom/dolphin/browser/f/a/h;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 153
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->deleteFile(Ljava/io/File;)V

    .line 156
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 157
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 158
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 159
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 163
    :catch_1
    move-exception v1

    .line 164
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/f/a/b;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/dolphin/browser/f/a/b;->setChanged()V

    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/f/a/b;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/dolphin/browser/f/a/b;->setChanged()V

    return-void
.end method

.method private g(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    :goto_0
    return-object v6

    .line 294
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_2

    .line 296
    invoke-static {p1}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 297
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->IMAGES_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "touch_icon"

    aput-object v4, v2, v3

    const-string v3, "url_key = ? or url_key = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const/4 v7, 0x1

    invoke-static {v5}, Lcom/dolphin/browser/util/cn;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_2

    .line 305
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 307
    if-eqz v0, :cond_1

    .line 308
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .line 312
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v6, v0

    .line 319
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 316
    :goto_3
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 315
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_1
    move-object v0, v6

    goto :goto_1

    :cond_2
    move-object v0, v6

    goto :goto_2
.end method

.method private h(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-object v5

    .line 417
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    .line 419
    invoke-static {p1}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 420
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->IMAGES_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "favicon"

    aput-object v3, v2, v7

    const-string v3, "url_key = ? or url_key = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v7

    invoke-static {v6}, Lcom/dolphin/browser/util/cn;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 424
    if-eqz v1, :cond_0

    .line 425
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 427
    if-eqz v0, :cond_2

    .line 429
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 437
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 433
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/a/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 481
    invoke-direct {p0, v0, p2}, Lcom/dolphin/browser/f/a/b;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    new-instance v1, Lcom/dolphin/browser/f/d/g;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/f/d/g;-><init>(Landroid/content/Context;)V

    .line 280
    invoke-virtual {v1, p2}, Lcom/dolphin/browser/f/d/g;->b(Ljava/lang/String;)Lcom/dolphin/browser/f/d/b;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v1}, Lcom/dolphin/browser/f/d/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 284
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {p1}, Lcom/dolphin/browser/f/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-static {v0}, Lcom/dolphin/browser/f/a/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/dolphin/browser/f/a/b;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/f/a/b;->setChanged()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/a/b;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/f/a/b;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Lcom/dolphin/browser/f/a/d;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/f/a/d;-><init>(Lcom/dolphin/browser/f/a/b;Ljava/lang/String;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    invoke-static {p1}, Lcom/dolphin/browser/f/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    invoke-static {v1}, Lcom/dolphin/browser/f/a/h;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/a/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    if-nez v1, :cond_3

    .line 128
    invoke-direct {p0, p1}, Lcom/dolphin/browser/f/a/b;->h(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 130
    :cond_3
    if-nez v1, :cond_4

    .line 131
    iget-object v2, p0, Lcom/dolphin/browser/f/a/b;->a:Lcom/dolphin/browser/f/a/g;

    invoke-virtual {v2, p1}, Lcom/dolphin/browser/f/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/a/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 135
    :cond_4
    if-eqz v1, :cond_0

    .line 136
    new-instance v0, Lcom/dolphin/browser/f/a/a;

    invoke-direct {v0}, Lcom/dolphin/browser/f/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/a;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 138
    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/f/a/b;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/f/a/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-static {p1}, Lcom/dolphin/browser/f/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 174
    :cond_1
    invoke-static {v1}, Lcom/dolphin/browser/f/a/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-static {p1}, Lcom/dolphin/browser/f/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-object v0

    .line 192
    :cond_1
    invoke-static {v1}, Lcom/dolphin/browser/f/a/h;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v0, Lcom/dolphin/browser/f/a/e;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/f/a/e;-><init>(Lcom/dolphin/browser/f/a/b;Ljava/lang/String;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 247
    .line 248
    invoke-static {}, Lcom/dolphin/browser/f/d/d;->a()Lcom/dolphin/browser/f/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/f/d/d;->a(Ljava/lang/String;)Lcom/dolphin/browser/f/d/b;

    move-result-object v0

    .line 249
    if-nez v0, :cond_2

    .line 251
    invoke-direct {p0, p1}, Lcom/dolphin/browser/f/a/b;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/f/a/i;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    if-nez v0, :cond_0

    .line 255
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    invoke-static {p1}, Lcom/dolphin/browser/f/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/b/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/f/a/i;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 265
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 267
    invoke-static {p1}, Lcom/dolphin/browser/f/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/a/b;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    :cond_1
    return-object v0

    .line 261
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolphin/browser/f/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/b/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
