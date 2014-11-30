.class Lcom/dolphin/browser/downloads/m;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/downloads/DownloadService;)V
    .locals 1

    .prologue
    .line 323
    iput-object p1, p0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    .line 325
    const-string v0, "Download Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 326
    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 330
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 332
    const/4 v3, 0x0

    .line 335
    const-wide v1, 0x7fffffffffffffffL

    move-wide/from16 v19, v1

    move v1, v3

    move-wide/from16 v2, v19

    .line 337
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    monitor-enter v4

    .line 338
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v5}, Lcom/dolphin/browser/downloads/DownloadService;->b(Lcom/dolphin/browser/downloads/DownloadService;)Lcom/dolphin/browser/downloads/m;

    move-result-object v5

    move-object/from16 v0, p0

    if-eq v5, v0, :cond_0

    .line 339
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in DownloadService"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 341
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v5}, Lcom/dolphin/browser/downloads/DownloadService;->c(Lcom/dolphin/browser/downloads/DownloadService;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 342
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;Lcom/dolphin/browser/downloads/m;)Lcom/dolphin/browser/downloads/m;

    .line 343
    if-nez v1, :cond_2

    .line 344
    sget-boolean v5, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v5, :cond_1

    .line 345
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service stopSelf, keepService: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/DownloadService;->stopSelf()V

    .line 349
    :cond_2
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v1, v2, v5

    if-eqz v1, :cond_3

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    const-string v5, "alarm"

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/downloads/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 351
    if-nez v1, :cond_5

    .line 352
    const-string v1, "DownloadManager"

    const-string v2, "couldn\'t get alarm manager"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/dolphin/browser/downloads/DownloadService;->b(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;

    .line 367
    monitor-exit v4

    .line 547
    :cond_4
    :goto_2
    return-void

    .line 354
    :cond_5
    sget-boolean v5, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v5, :cond_6

    .line 355
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scheduling retry in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_6
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-virtual {v6}, Lcom/dolphin/browser/downloads/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/dolphin/browser/downloads/DownloadReceiver;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 359
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    const/4 v8, 0x0

    const/high16 v9, 0x40000000

    invoke-static {v7, v8, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 361
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v6}, Lcom/dolphin/browser/downloads/DownloadService;->d(Lcom/dolphin/browser/downloads/DownloadService;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v5, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 369
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/dolphin/browser/downloads/DownloadService;->b(Lcom/dolphin/browser/downloads/DownloadService;Z)Z

    .line 370
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/v;->a(Landroid/content/Context;)Z

    move-result v12

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/v;->b(Landroid/content/Context;)Z

    move-result v13

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 375
    const/4 v7, 0x0

    .line 377
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 380
    if-nez v2, :cond_8

    .line 542
    if-eqz v2, :cond_4

    .line 544
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 545
    :catch_0
    move-exception v1

    .line 546
    const-string v1, "DownloadManager"

    const-string v2, "couldn\'t close cursor."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 387
    :cond_8
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 389
    const/4 v3, 0x0

    .line 391
    const/4 v11, 0x0

    .line 392
    const/4 v10, 0x0

    .line 393
    const-wide v8, 0x7fffffffffffffffL

    .line 395
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    .line 397
    const-string v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 415
    :goto_3
    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/DownloadService;->e(Lcom/dolphin/browser/downloads/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_21

    .line 416
    :cond_9
    if-eqz v4, :cond_d

    .line 421
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v1, :cond_a

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/DownloadService;->e(Lcom/dolphin/browser/downloads/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/downloads/e;

    iget v1, v1, Lcom/dolphin/browser/downloads/e;->a:I

    .line 423
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Array update: trimming "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " @ "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v3}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/DownloadService;->f(Lcom/dolphin/browser/downloads/DownloadService;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    const/4 v5, 0x0

    invoke-static {v1, v5, v3}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/Cursor;I)Z

    .line 429
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v3}, Lcom/dolphin/browser/downloads/DownloadService;->b(Lcom/dolphin/browser/downloads/DownloadService;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 542
    :catchall_1
    move-exception v1

    :goto_4
    if-eqz v2, :cond_c

    .line 544
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 547
    :cond_c
    :goto_5
    throw v1

    .line 432
    :cond_d
    :try_start_6
    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/DownloadService;->e(Lcom/dolphin/browser/downloads/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v3, v1, :cond_13

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    move v4, v12

    move v5, v13

    move-wide v6, v14

    invoke-static/range {v1 .. v7}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/Cursor;IZZJ)V

    .line 437
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v1, :cond_e

    .line 438
    const-string v1, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Array update: appending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v3}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/DownloadService;->f(Lcom/dolphin/browser/downloads/DownloadService;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/Cursor;I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 443
    :cond_f
    const/4 v11, 0x1

    .line 444
    const/4 v10, 0x1

    move v4, v11

    .line 446
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v3}, Lcom/dolphin/browser/downloads/DownloadService;->c(Lcom/dolphin/browser/downloads/DownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 447
    const/4 v10, 0x1

    .line 449
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v3, v14, v15}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;IJ)J

    move-result-wide v5

    .line 450
    const-wide/16 v17, 0x0

    cmp-long v1, v5, v17

    if-nez v1, :cond_12

    .line 451
    const/4 v10, 0x1

    .line 455
    :cond_11
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 456
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 457
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    move/from16 v19, v4

    move v4, v3

    move/from16 v3, v19

    :goto_8
    move v11, v3

    move v3, v4

    move v4, v1

    .line 527
    goto/16 :goto_3

    .line 452
    :cond_12
    const-wide/16 v17, 0x0

    cmp-long v1, v5, v17

    if-lez v1, :cond_11

    cmp-long v1, v5, v8

    if-gez v1, :cond_11

    move-wide v8, v5

    .line 453
    goto :goto_7

    .line 459
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/DownloadService;->e(Lcom/dolphin/browser/downloads/DownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/downloads/e;

    iget v1, v1, Lcom/dolphin/browser/downloads/e;->a:I

    .line 461
    move/from16 v0, v17

    if-ge v1, v0, :cond_16

    .line 463
    sget-boolean v5, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v5, :cond_14

    .line 464
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Array update: removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " @ "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v3}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/DownloadService;->f(Lcom/dolphin/browser/downloads/DownloadService;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    const/4 v5, 0x0

    invoke-static {v1, v5, v3}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/Cursor;I)Z

    .line 470
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v3}, Lcom/dolphin/browser/downloads/DownloadService;->b(Lcom/dolphin/browser/downloads/DownloadService;I)V

    move v1, v4

    move v4, v3

    move v3, v11

    goto :goto_8

    .line 473
    :cond_16
    move/from16 v0, v17

    if-ne v1, v0, :cond_1b

    .line 477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    move v4, v12

    move v5, v13

    move-wide v6, v14

    invoke-static/range {v1 .. v7}, Lcom/dolphin/browser/downloads/DownloadService;->b(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/Cursor;IZZJ)V

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v3}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/DownloadService;->f(Lcom/dolphin/browser/downloads/DownloadService;)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/Cursor;I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 482
    :cond_17
    const/4 v11, 0x1

    .line 483
    const/4 v10, 0x1

    move v4, v11

    .line 485
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v3}, Lcom/dolphin/browser/downloads/DownloadService;->c(Lcom/dolphin/browser/downloads/DownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 486
    const/4 v10, 0x1

    .line 488
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v3, v14, v15}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;IJ)J

    move-result-wide v5

    .line 489
    const-wide/16 v17, 0x0

    cmp-long v1, v5, v17

    if-nez v1, :cond_1a

    .line 490
    const/4 v10, 0x1

    .line 494
    :cond_19
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 495
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 496
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    move/from16 v19, v4

    move v4, v3

    move/from16 v3, v19

    .line 497
    goto/16 :goto_8

    .line 491
    :cond_1a
    const-wide/16 v17, 0x0

    cmp-long v1, v5, v17

    if-lez v1, :cond_19

    cmp-long v1, v5, v8

    if-gez v1, :cond_19

    move-wide v8, v5

    .line 492
    goto :goto_a

    .line 501
    :cond_1b
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v1, :cond_1c

    .line 502
    const-string v1, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Array update: inserting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    move v4, v12

    move v5, v13

    move-wide v6, v14

    invoke-static/range {v1 .. v7}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/Cursor;IZZJ)V

    .line 507
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v3}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/DownloadService;->f(Lcom/dolphin/browser/downloads/DownloadService;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/Cursor;I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 510
    :cond_1d
    const/4 v11, 0x1

    .line 511
    const/4 v10, 0x1

    move v4, v11

    .line 513
    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v3}, Lcom/dolphin/browser/downloads/DownloadService;->c(Lcom/dolphin/browser/downloads/DownloadService;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 514
    const/4 v10, 0x1

    .line 516
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1, v3, v14, v15}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;IJ)J

    move-result-wide v5

    .line 517
    const-wide/16 v17, 0x0

    cmp-long v1, v5, v17

    if-nez v1, :cond_20

    .line 518
    const/4 v10, 0x1

    .line 522
    :cond_1f
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 523
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 524
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    move/from16 v19, v4

    move v4, v3

    move/from16 v3, v19

    goto/16 :goto_8

    .line 519
    :cond_20
    const-wide/16 v17, 0x0

    cmp-long v1, v5, v17

    if-lez v1, :cond_1f

    cmp-long v1, v5, v8

    if-gez v1, :cond_1f

    move-wide v8, v5

    .line 520
    goto :goto_c

    .line 530
    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/DownloadService;->g(Lcom/dolphin/browser/downloads/DownloadService;)Lcom/dolphin/browser/downloads/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/f;->a()V

    .line 532
    if-eqz v11, :cond_24

    .line 533
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/DownloadService;->h(Lcom/dolphin/browser/downloads/DownloadService;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;Z)Z

    .line 535
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/DownloadService;->i(Lcom/dolphin/browser/downloads/DownloadService;)Landroid/media/MediaScannerConnection;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 542
    :cond_22
    :goto_d
    if-eqz v2, :cond_23

    .line 544
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_23
    :goto_e
    move-wide v2, v8

    move v1, v10

    .line 551
    goto/16 :goto_0

    .line 538
    :cond_24
    :try_start_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/m;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/DownloadService;->i(Lcom/dolphin/browser/downloads/DownloadService;)Landroid/media/MediaScannerConnection;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_d

    .line 545
    :catch_1
    move-exception v1

    .line 546
    const-string v1, "DownloadManager"

    const-string v2, "couldn\'t close cursor."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 545
    :catch_2
    move-exception v2

    .line 546
    const-string v2, "DownloadManager"

    const-string v3, "couldn\'t close cursor."

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 542
    :catchall_2
    move-exception v1

    move-object v2, v7

    goto/16 :goto_4

    :cond_25
    move v4, v11

    goto/16 :goto_b

    :cond_26
    move v4, v11

    goto/16 :goto_9

    :cond_27
    move v4, v11

    goto/16 :goto_6
.end method
