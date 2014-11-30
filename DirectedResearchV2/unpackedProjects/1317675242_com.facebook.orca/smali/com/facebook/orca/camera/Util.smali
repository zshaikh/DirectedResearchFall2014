.class public Lcom/facebook/orca/camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 2

    .prologue
    .line 94
    invoke-static {p0, p1, p2}, Lcom/facebook/orca/camera/Util;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 98
    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 99
    const/4 v1, 0x1

    .line 100
    :goto_0
    if-ge v1, v0, :cond_1

    .line 101
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    .line 107
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 297
    if-nez p4, :cond_4

    :try_start_0
    invoke-static {p2, p3}, Lcom/facebook/orca/camera/Util;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 298
    :goto_0
    if-nez v0, :cond_0

    .line 319
    invoke-static {v0}, Lcom/facebook/orca/camera/Util;->a(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v4

    :goto_1
    return-object v0

    .line 299
    :cond_0
    if-nez p5, :cond_3

    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 301
    :goto_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 302
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 303
    invoke-static {}, Lcom/facebook/orca/camera/BitmapManager;->a()Lcom/facebook/orca/camera/BitmapManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/facebook/orca/camera/BitmapManager;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 304
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_1

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_1

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v3, v5, :cond_2

    .line 319
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/camera/Util;->a(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v4

    goto :goto_1

    .line 308
    :cond_2
    :try_start_2
    invoke-static {v1, p0, p1}, Lcom/facebook/orca/camera/Util;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 310
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 312
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 313
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 314
    invoke-static {}, Lcom/facebook/orca/camera/BitmapManager;->a()Lcom/facebook/orca/camera/BitmapManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/facebook/orca/camera/BitmapManager;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 319
    invoke-static {v0}, Lcom/facebook/orca/camera/Util;->a(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v1

    goto :goto_1

    .line 315
    :catch_0
    move-exception v0

    move-object v1, p4

    .line 316
    :goto_3
    :try_start_3
    const-string v2, "Util"

    const-string v3, "Got oom exception "

    invoke-static {v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 319
    invoke-static {v1}, Lcom/facebook/orca/camera/Util;->a(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, p4

    :goto_4
    invoke-static {v1}, Lcom/facebook/orca/camera/Util;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 315
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :cond_3
    move-object v1, p5

    goto :goto_2

    :cond_4
    move-object v0, p4

    goto :goto_0
.end method

.method public static a(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 267
    .line 269
    :try_start_0
    const-string v0, "r"

    invoke-virtual {p3, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 271
    if-eqz p4, :cond_0

    .line 272
    :try_start_1
    invoke-static {}, Lcom/facebook/orca/camera/Util;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    move-object v5, v0

    :goto_0
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 274
    invoke-static/range {v0 .. v5}, Lcom/facebook/orca/camera/Util;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 279
    invoke-static {v4}, Lcom/facebook/orca/camera/Util;->a(Landroid/os/ParcelFileDescriptor;)V

    :goto_1
    return-object v0

    .line 276
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 279
    :goto_2
    invoke-static {v0}, Lcom/facebook/orca/camera/Util;->a(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    invoke-static {v1}, Lcom/facebook/orca/camera/Util;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_3

    .line 276
    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_2

    :cond_0
    move-object v5, v6

    goto :goto_0
.end method

.method public static a(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 285
    .line 286
    if-eqz p3, :cond_0

    .line 287
    invoke-static {}, Lcom/facebook/orca/camera/Util;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    move-object v5, v0

    :goto_0
    move v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    .line 289
    invoke-static/range {v0 .. v5}, Lcom/facebook/orca/camera/Util;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, v2

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/high16 v3, 0x40000000

    .line 55
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 56
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 57
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 60
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    if-eq p0, v0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/high16 v7, 0x3f800000

    const v6, 0x3f666666

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, p3

    .line 148
    if-nez p4, :cond_2

    if-ltz v0, :cond_0

    if-gez v2, :cond_2

    .line 155
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 157
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 159
    div-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 160
    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 161
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v1

    invoke-direct {v2, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 166
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    .line 167
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, p3, v1

    div-int/lit8 v1, v1, 0x2

    .line 168
    new-instance v5, Landroid/graphics/Rect;

    sub-int v6, p2, v0

    sub-int v7, p3, v1

    invoke-direct {v5, v0, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 173
    invoke-virtual {v4, p1, v2, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 174
    if-eqz p5, :cond_1

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object v0, v3

    .line 230
    :goto_0
    return-object v0

    .line 179
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 182
    div-float v3, v0, v2

    .line 183
    int-to-float v4, p2

    int-to-float v5, p3

    div-float/2addr v4, v5

    .line 185
    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 186
    int-to-float v0, p3

    div-float/2addr v0, v2

    .line 187
    cmpg-float v2, v0, v6

    if-ltz v2, :cond_3

    cmpl-float v2, v0, v7

    if-lez v2, :cond_7

    .line 188
    :cond_3
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v0, p0

    :goto_1
    move-object v5, v0

    .line 202
    :goto_2
    if-eqz v5, :cond_b

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    :goto_3
    if-eqz p5, :cond_4

    if-eq v0, p1, :cond_4

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 215
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 217
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v2, v1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 224
    if-eq v1, v0, :cond_6

    .line 225
    if-nez p5, :cond_5

    if-eq v0, p1, :cond_6

    .line 226
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    move-object v0, v1

    .line 230
    goto :goto_0

    :cond_7
    move-object v0, v8

    .line 190
    goto :goto_1

    .line 193
    :cond_8
    int-to-float v2, p2

    div-float v0, v2, v0

    .line 194
    cmpg-float v2, v0, v6

    if-ltz v2, :cond_9

    cmpl-float v2, v0, v7

    if-lez v2, :cond_a

    .line 195
    :cond_9
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v5, p0

    goto :goto_2

    :cond_a
    move-object v5, v8

    .line 197
    goto :goto_2

    :cond_b
    move-object v0, p1

    .line 207
    goto :goto_3
.end method

.method public static a()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 400
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 402
    return-object v0
.end method

.method private static a(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 327
    :try_start_0
    const-string v0, "r"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .prologue
    .line 252
    if-nez p0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 254
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/orca/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 393
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 395
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/facebook/orca/camera/Util$BackgroundJob;

    invoke-direct {v2, p0, p3, v0, p4}, Lcom/facebook/orca/camera/Util$BackgroundJob;-><init>(Lcom/facebook/orca/camera/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 396
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 243
    if-nez p0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 245
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 335
    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 112
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    .line 113
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    .line 115
    if-ne p2, v8, :cond_1

    move v4, v9

    .line 117
    :goto_0
    if-ne p1, v8, :cond_2

    const/16 v0, 0x80

    .line 121
    :goto_1
    if-ge v0, v4, :cond_3

    move v0, v4

    .line 132
    :cond_0
    :goto_2
    return v0

    .line 115
    :cond_1
    mul-double v4, v0, v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    goto :goto_0

    .line 117
    :cond_2
    int-to-double v5, p1

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    int-to-double v5, p1

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_1

    .line 126
    :cond_3
    if-ne p2, v8, :cond_4

    if-ne p1, v8, :cond_4

    move v0, v9

    .line 128
    goto :goto_2

    .line 129
    :cond_4
    if-ne p1, v8, :cond_0

    move v0, v4

    .line 130
    goto :goto_2
.end method
