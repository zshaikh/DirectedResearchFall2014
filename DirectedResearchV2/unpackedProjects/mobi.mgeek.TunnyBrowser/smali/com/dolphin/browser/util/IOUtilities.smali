.class public final Lcom/dolphin/browser/util/IOUtilities;
.super Ljava/lang/Object;
.source "IOUtilities.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 465
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    const-string v0, ""

    .line 473
    :goto_0
    return-object v0

    .line 469
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I

    .line 473
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/database/Cursor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    invoke-static {p0}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    .line 71
    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 479
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 482
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;Z)V

    .line 279
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 242
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 244
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 245
    if-nez v1, :cond_1

    .line 257
    :cond_0
    return-void

    .line 248
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 249
    aget-object v2, v1, v0

    .line 250
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;Ljava/io/File;)V

    .line 248
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/IOUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1
.end method

.method public static a(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 297
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 288
    return-void
.end method

.method public static a(Ljava/io/File;Z)V
    .locals 5

    .prologue
    .line 336
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    .line 339
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 340
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    invoke-static {v3, p1}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;Z)V

    .line 339
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 347
    :cond_1
    if-eqz p1, :cond_2

    .line 348
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 351
    :cond_2
    return-void
.end method

.method public static a(Ljava/io/File;ZLjava/io/FileFilter;)V
    .locals 5

    .prologue
    .line 360
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_1

    .line 363
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 364
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    invoke-static {v3, p1, p2}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 363
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 371
    :cond_1
    if-eqz p1, :cond_2

    .line 372
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 375
    :cond_2
    return-void
.end method

.method public static a(Ljava/io/File;ZLjava/io/FilenameFilter;)V
    .locals 5

    .prologue
    .line 384
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 386
    if-eqz v1, :cond_1

    .line 387
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 388
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    invoke-static {v3, p1, p2}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 387
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 395
    :cond_1
    if-eqz p1, :cond_2

    .line 396
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 399
    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 300
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/io/File;)V

    .line 301
    return-void
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    .line 260
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 262
    const/16 v1, 0x1000

    :try_start_0
    new-array v1, v1, [B

    .line 264
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 265
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 485
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 486
    invoke-static {p0, v0}, Lcom/dolphin/browser/util/IOUtilities;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 489
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 490
    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 491
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 493
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 494
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 497
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 416
    .line 418
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :try_start_1
    const-string v1, "utf-8"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 425
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 427
    :goto_0
    return-object v0

    .line 420
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 421
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 425
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 422
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 423
    :goto_2
    :try_start_3
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 425
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 422
    :catch_2
    move-exception v1

    goto :goto_2

    .line 420
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static b(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 112
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v1, "IOUtilities"

    const-string v2, "Could not close cursor"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;Z)V

    .line 309
    return-void
.end method

.method public static b(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 318
    return-void
.end method

.method public static b(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 327
    return-void
.end method

.method public static c(Ljava/io/InputStream;)Ljava/io/InputStreamReader;
    .locals 2

    .prologue
    .line 502
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    return-object v0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public static c(Ljava/io/File;)Z
    .locals 5

    .prologue
    .line 402
    if-nez p0, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 412
    :goto_0
    return v0

    .line 407
    :cond_0
    const/4 v0, 0x1

    move-object v1, p0

    .line 408
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 412
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    goto :goto_0
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 80
    if-eqz p0, :cond_0

    .line 82
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "IOUtilities"

    const-string v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 48
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 50
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 51
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 158
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 159
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 161
    :cond_0
    return-void
.end method

.method public static d(Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 439
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 461
    :cond_1
    :goto_0
    return v0

    .line 443
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 448
    const/4 v3, 0x0

    .line 450
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :try_start_1
    const-string v3, ""

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 459
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 454
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 459
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move v0, v1

    .line 460
    goto :goto_0

    .line 455
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 457
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 459
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move v0, v1

    .line 460
    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 455
    :catch_2
    move-exception v0

    goto :goto_2

    .line 452
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/IOUtilities;->deleteFile(Ljava/io/File;Z)V

    .line 202
    return-void
.end method

.method public static deleteFile(Ljava/io/File;Z)V
    .locals 5
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 173
    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-rf"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 180
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 181
    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 183
    const-string v1, "IOUtilities"

    const-string v2, "Linux rm -rf %s: %d."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 187
    :catch_1
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 224
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/io/File;)V

    .line 225
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;Z)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 213
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;Z)V

    .line 214
    return-void
.end method

.method public static ensureDir(Ljava/io/File;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    if-eqz p0, :cond_0

    .line 231
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const/4 v0, 0x1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0
.end method

.method public static loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 123
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 124
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 126
    const/16 v3, 0x1000

    :try_start_0
    new-array v3, v3, [C

    .line 128
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 129
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 135
    const-string v1, "utf-8"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 136
    invoke-virtual {v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    const v3, 0xfeff

    if-ne v1, v3, :cond_1

    .line 138
    const/4 v0, 0x1

    .line 141
    :cond_1
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 147
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 153
    return-void

    .line 151
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
