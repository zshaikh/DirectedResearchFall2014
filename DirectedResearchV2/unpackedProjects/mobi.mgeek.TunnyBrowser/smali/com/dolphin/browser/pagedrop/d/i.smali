.class public Lcom/dolphin/browser/pagedrop/d/i;
.super Ljava/lang/Object;
.source "ShareTabInfoProtocol.java"


# instance fields
.field private a:Ljava/net/DatagramPacket;

.field private b:B

.field private c:B

.field private d:B

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:S

.field private k:S

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/d/i;->a:Ljava/net/DatagramPacket;

    .line 236
    iput-byte v1, p0, Lcom/dolphin/browser/pagedrop/d/i;->b:B

    .line 237
    iput-byte v1, p0, Lcom/dolphin/browser/pagedrop/d/i;->c:B

    .line 248
    iput-short v1, p0, Lcom/dolphin/browser/pagedrop/d/i;->j:S

    .line 249
    iput-short v1, p0, Lcom/dolphin/browser/pagedrop/d/i;->k:S

    .line 250
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/d/i;->l:Ljava/lang/String;

    .line 256
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/d/i;->a:Ljava/net/DatagramPacket;

    .line 257
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/i;->e:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()B
    .locals 1

    .prologue
    .line 327
    iget-byte v0, p0, Lcom/dolphin/browser/pagedrop/d/i;->d:B

    return v0
.end method

.method public d()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/i;->a:Ljava/net/DatagramPacket;

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/i;->a:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Lcom/dolphin/browser/pagedrop/d/i;
    .locals 12

    .prologue
    .line 346
    const-string v0, "ShareMessageParser"

    const-string v1, "prepare to insert"

    invoke-static {v0, v1}, Lcom/mobosquare/sdk/subscription/c/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/i;->a:Ljava/net/DatagramPacket;

    if-nez v0, :cond_0

    .line 348
    const/4 p0, 0x0

    .line 468
    :goto_0
    return-object p0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/i;->a:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/d/i;->a:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    .line 355
    if-eqz v0, :cond_1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const/16 v2, 0x2000

    if-le v1, v2, :cond_2

    .line 356
    :cond_1
    const-string v0, "ShareMessageParser"

    const-string v1, "prepare to insert size incorrect"

    invoke-static {v0, v1}, Lcom/mobosquare/sdk/subscription/c/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 p0, 0x0

    goto :goto_0

    .line 360
    :cond_2
    const/4 v2, 0x0

    .line 361
    const/4 v3, 0x1

    aget-byte v2, v0, v2

    iput-byte v2, p0, Lcom/dolphin/browser/pagedrop/d/i;->c:B

    .line 362
    const/4 v2, 0x2

    aget-byte v3, v0, v3

    iput-byte v3, p0, Lcom/dolphin/browser/pagedrop/d/i;->b:B

    .line 363
    invoke-static {v0, v2}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v2

    .line 364
    add-int/lit8 v3, v2, 0x4

    invoke-static {v0, v3}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v3

    .line 365
    const/4 v4, 0x4

    .line 368
    const/4 v5, 0x5

    aget-byte v4, v0, v4

    iput-byte v4, p0, Lcom/dolphin/browser/pagedrop/d/i;->d:B

    .line 369
    invoke-static {v0, v5}, Lcom/dolphin/browser/pagedrop/e/c;->b([BI)I

    move-result v4

    iput v4, p0, Lcom/dolphin/browser/pagedrop/d/i;->e:I

    .line 373
    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    .line 376
    invoke-static {v0, v2}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v4

    .line 377
    add-int/lit8 v2, v2, 0x2

    .line 378
    if-eqz v4, :cond_3

    add-int v5, v2, v4

    if-lt v5, v1, :cond_4

    .line 379
    :cond_3
    const/4 p0, 0x0

    goto :goto_0

    .line 380
    :cond_4
    invoke-static {v0, v2, v4, v1}, Lcom/dolphin/browser/pagedrop/e/c;->a([BIII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/dolphin/browser/pagedrop/d/i;->f:Ljava/lang/String;

    .line 381
    add-int/2addr v2, v4

    .line 384
    invoke-static {v0, v2}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v5

    .line 385
    add-int/lit8 v2, v2, 0x2

    .line 386
    add-int v6, v2, v5

    if-lt v6, v1, :cond_5

    .line 387
    const/4 p0, 0x0

    goto :goto_0

    .line 388
    :cond_5
    invoke-static {v0, v2, v5, v1}, Lcom/dolphin/browser/pagedrop/e/c;->a([BIII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/dolphin/browser/pagedrop/d/i;->g:Ljava/lang/String;

    .line 389
    add-int/2addr v2, v5

    .line 392
    invoke-static {v0, v2}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v6

    .line 393
    add-int/lit8 v2, v2, 0x2

    .line 394
    add-int v7, v2, v6

    if-lt v7, v1, :cond_6

    .line 395
    const/4 p0, 0x0

    goto :goto_0

    .line 396
    :cond_6
    invoke-static {v0, v2, v6, v1}, Lcom/dolphin/browser/pagedrop/e/c;->a([BIII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/dolphin/browser/pagedrop/d/i;->h:Ljava/lang/String;

    .line 397
    add-int/2addr v2, v6

    .line 400
    invoke-static {v0, v2}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v7

    .line 401
    add-int/lit8 v2, v2, 0x2

    .line 402
    add-int v8, v2, v7

    if-lt v8, v1, :cond_7

    .line 403
    const-string v0, "ShareMessageParser"

    const-string v1, "prepare to insert size incorrect 2"

    invoke-static {v0, v1}, Lcom/mobosquare/sdk/subscription/c/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 407
    :cond_7
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->f()Ljava/lang/Long;

    move-result-object v8

    .line 408
    if-nez v7, :cond_8

    .line 409
    const-string v9, ""

    iput-object v9, p0, Lcom/dolphin/browser/pagedrop/d/i;->l:Ljava/lang/String;

    .line 424
    :goto_1
    add-int/2addr v2, v7

    .line 427
    invoke-static {v0, v2}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v9

    .line 428
    add-int/lit8 v2, v2, 0x2

    .line 429
    add-int v10, v2, v9

    if-le v10, v1, :cond_a

    .line 430
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 412
    :cond_8
    iget-object v9, p0, Lcom/dolphin/browser/pagedrop/d/i;->f:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/dolphin/browser/pagedrop/e/b;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/dolphin/browser/pagedrop/d/i;->l:Ljava/lang/String;

    .line 413
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v9

    iget-object v10, p0, Lcom/dolphin/browser/pagedrop/d/i;->f:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/dolphin/browser/pagedrop/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 416
    iget-object v10, p0, Lcom/dolphin/browser/pagedrop/d/i;->l:Ljava/lang/String;

    invoke-static {v10, v0, v2, v7}, Lcom/dolphin/browser/pagedrop/e/b;->b(Ljava/lang/String;[BII)Z

    move-result v10

    .line 417
    if-eqz v10, :cond_9

    .line 418
    invoke-static {v9}, Lcom/dolphin/browser/pagedrop/e/b;->a(Ljava/lang/String;)Z

    goto :goto_1

    .line 421
    :cond_9
    iput-object v9, p0, Lcom/dolphin/browser/pagedrop/d/i;->l:Ljava/lang/String;

    goto :goto_1

    .line 431
    :cond_a
    invoke-static {v0, v2, v9, v1}, Lcom/dolphin/browser/pagedrop/e/c;->a([BIII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/d/i;->i:Ljava/lang/String;

    .line 432
    add-int v0, v2, v9

    .line 434
    add-int/lit8 v0, v4, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v9

    if-eq v0, v3, :cond_b

    .line 435
    const-string v0, "ShareMessageParser"

    const-string v1, "prepare to insert size incorrect 2."

    invoke-static {v0, v1}, Lcom/mobosquare/sdk/subscription/c/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 442
    :cond_b
    const-string v7, "_id desc"

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userID=? AND messageID=? AND time>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0x493e0

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v0

    const-string v1, "tabmessage_table"

    const/4 v2, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/dolphin/browser/pagedrop/d/i;->f:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/dolphin/browser/pagedrop/d/i;->e:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/dolphin/browser/pagedrop/b/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 445
    if-nez v0, :cond_c

    .line 446
    const-string v0, "ShareMessageParser"

    const-string v1, "prepare to insert cursor==null"

    invoke-static {v0, v1}, Lcom/mobosquare/sdk/subscription/c/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 449
    :cond_c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_d

    .line 450
    const-string v1, "ShareMessageParser"

    const-string v2, "prepare to insert moveToFirst="

    invoke-static {v1, v2}, Lcom/mobosquare/sdk/subscription/c/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 452
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 454
    :cond_d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 456
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 457
    const-string v1, "userID"

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v1, "userName"

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/i;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v1, "messageID"

    iget v2, p0, Lcom/dolphin/browser/pagedrop/d/i;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    const-string v1, "type"

    iget-byte v2, p0, Lcom/dolphin/browser/pagedrop/d/i;->d:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 461
    const-string v1, "title"

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v1, "url"

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v1, "imageName"

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/i;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v1, "time"

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v1, "del"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v1

    const-string v2, "tabmessage_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/dolphin/browser/pagedrop/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    .line 467
    const-string v1, "ShareMessageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert resule = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mobosquare/sdk/subscription/c/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
