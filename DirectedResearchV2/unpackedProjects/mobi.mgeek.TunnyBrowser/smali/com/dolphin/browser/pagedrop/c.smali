.class Lcom/dolphin/browser/pagedrop/c;
.super Lcom/dolphin/browser/util/f;
.source "PageDropMessageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/pagedrop/a;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/pagedrop/a;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/c;->a:Lcom/dolphin/browser/pagedrop/a;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/pagedrop/a;Lcom/dolphin/browser/pagedrop/b;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/dolphin/browser/pagedrop/c;-><init>(Lcom/dolphin/browser/pagedrop/a;)V

    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/c;->c([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs c([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 13

    .prologue
    .line 392
    const-string v0, "PageDropMessageProcessor"

    const-string v1, "prepare to send items"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 394
    const/4 v1, 0x1

    aget-object v1, p1, v1

    move-object v8, v1

    check-cast v8, Ljava/net/InetAddress;

    .line 395
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const-string v0, "PageDropMessageProcessor"

    const-string v1, "prepare to send items, but uid is empty"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x0

    .line 454
    :goto_0
    return-object v0

    .line 399
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x493e0

    sub-long v9, v1, v3

    .line 400
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/c;->a:Lcom/dolphin/browser/pagedrop/a;

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/a;->a(Lcom/dolphin/browser/pagedrop/a;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-gtz v1, :cond_2

    .line 401
    :cond_1
    const-string v0, "PageDropMessageProcessor"

    const-string v1, "prepare to send items  curr_ltime <=0 || mContext==null"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v0, 0x0

    goto :goto_0

    .line 405
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/c;->a:Lcom/dolphin/browser/pagedrop/a;

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/a;->a(Lcom/dolphin/browser/pagedrop/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 406
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    const-string v0, "PageDropMessageProcessor"

    const-string v1, "prepare to send items uid.equals(id)"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v0, 0x0

    goto :goto_0

    .line 411
    :cond_3
    const-string v7, "_id asc"

    .line 412
    const-string v3, "userID=? AND del=0"

    .line 413
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v0

    const-string v1, "tabmessage_table"

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/dolphin/browser/pagedrop/b/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 415
    if-nez v7, :cond_4

    .line 416
    const-string v0, "PageDropMessageProcessor"

    const-string v1, "prepare to send items cursor == null"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v0, 0x0

    goto :goto_0

    .line 419
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 420
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 421
    const-string v0, "PageDropMessageProcessor"

    const-string v1, "prepare to send items cursor.moveToFirst()"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v0, 0x0

    goto :goto_0

    .line 424
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 425
    if-nez v0, :cond_6

    .line 426
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 427
    const-string v0, "PageDropMessageProcessor"

    const-string v1, "prepare to send items total == 0"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 432
    :cond_6
    const-string v0, "userID"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 433
    const-string v1, "title"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 434
    const-string v2, "url"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 435
    const-string v3, "imageName"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 436
    const-string v4, "time"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 437
    const-string v4, "messageID"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 438
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 440
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 441
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 452
    :cond_7
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 453
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 454
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 446
    :cond_8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 447
    cmp-long v0, v9, v0

    if-gtz v0, :cond_7

    .line 449
    const-string v0, "PageDropMessageProcessor"

    const-string v1, "prepare to send send one item"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/c;->a:Lcom/dolphin/browser/pagedrop/a;

    move-object v1, v8

    move-object v2, v11

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/pagedrop/a;->a(Lcom/dolphin/browser/pagedrop/a;Ljava/net/InetAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 451
    const-string v1, "PageDropMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare to send, and the send result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
