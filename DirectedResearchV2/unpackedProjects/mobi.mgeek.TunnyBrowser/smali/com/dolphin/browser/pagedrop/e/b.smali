.class public Lcom/dolphin/browser/pagedrop/e/b;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 417
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 266
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;[BII)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    if-lez p4, :cond_0

    .line 193
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    invoke-static {v0, p2, p3, p4}, Lcom/dolphin/browser/pagedrop/e/b;->a(Ljava/io/File;[BII)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;[BII)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 140
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-gtz p3, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 147
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 149
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 157
    :goto_1
    if-eqz v2, :cond_0

    .line 160
    const/4 v3, 0x0

    .line 162
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :try_start_2
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 164
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 165
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move v0, v1

    .line 175
    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 166
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 168
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 172
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 166
    :catch_2
    move-exception v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 275
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->d()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/dolphin/browser/pagedrop/e/b;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;[BII)Z
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->d()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/pagedrop/e/b;->a(Ljava/io/File;Ljava/lang/String;[BII)Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/io/File;
    .locals 3

    .prologue
    .line 343
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    const/4 v0, 0x0

    .line 354
    :cond_0
    :goto_0
    return-object v0

    .line 349
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "DolphinBrowserEN"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;[BII)Z
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->e()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/pagedrop/e/b;->a(Ljava/io/File;Ljava/lang/String;[BII)Z

    move-result v0

    return v0
.end method

.method public static c()Ljava/io/File;
    .locals 3

    .prologue
    .line 362
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    const/4 v0, 0x0

    .line 372
    :cond_0
    :goto_0
    return-object v0

    .line 367
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->b()Ljava/io/File;

    move-result-object v1

    const-string v2, "/AroundCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static d()Ljava/io/File;
    .locals 3

    .prologue
    .line 380
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    const/4 v0, 0x0

    .line 390
    :cond_0
    :goto_0
    return-object v0

    .line 385
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->c()Ljava/io/File;

    move-result-object v1

    const-string v2, "/HeaderImage"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static e()Ljava/io/File;
    .locals 3

    .prologue
    .line 398
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    const/4 v0, 0x0

    .line 407
    :cond_0
    :goto_0
    return-object v0

    .line 402
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->c()Ljava/io/File;

    move-result-object v1

    const-string v2, "/FavorIcon"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static f()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 426
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
