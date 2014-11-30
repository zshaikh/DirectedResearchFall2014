.class Ldolphin/net/c/h;
.super Ljava/lang/Object;
.source "RequestWorker.java"


# static fields
.field private static final d:[Ljava/lang/String;

.field private static f:I

.field private static g:I


# instance fields
.field a:Landroid/content/Context;

.field b:Lorg/apache/http/HttpHost;

.field c:Ldolphin/net/c/b;

.field private e:Ldolphin/net/http/c;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SEND"

    aput-object v1, v0, v3

    const-string v1, "READ"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "DRAIN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DONE"

    aput-object v2, v0, v1

    sput-object v0, Ldolphin/net/c/h;->d:[Ljava/lang/String;

    .line 79
    sput v3, Ldolphin/net/c/h;->f:I

    .line 80
    sput v4, Ldolphin/net/c/h;->g:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ldolphin/net/http/c;Ldolphin/net/c/b;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget v0, Ldolphin/net/c/h;->f:I

    iput v0, p0, Ldolphin/net/c/h;->h:I

    .line 98
    iput-object p1, p0, Ldolphin/net/c/h;->a:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    .line 100
    invoke-virtual {p2}, Ldolphin/net/http/c;->c()Lorg/apache/http/HttpHost;

    move-result-object v0

    iput-object v0, p0, Ldolphin/net/c/h;->b:Lorg/apache/http/HttpHost;

    .line 101
    iput-object p3, p0, Ldolphin/net/c/h;->c:Ldolphin/net/c/b;

    .line 102
    return-void
.end method

.method private a(Ldolphin/net/c/a;ILjava/lang/Exception;)Z
    .locals 3

    .prologue
    .line 469
    const/4 v0, 0x1

    .line 470
    iget v1, p1, Ldolphin/net/c/a;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Ldolphin/net/c/a;->h:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 471
    const/4 v1, 0x0

    .line 473
    if-gez p2, :cond_1

    .line 474
    iget-object v0, p0, Ldolphin/net/c/h;->a:Landroid/content/Context;

    invoke-static {p2, v0}, Ldolphin/net/http/k;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 479
    :goto_0
    iget-object v2, p1, Ldolphin/net/c/a;->a:Ldolphin/net/http/l;

    invoke-interface {v2, p2, v0}, Ldolphin/net/http/l;->a(ILjava/lang/String;)V

    .line 480
    invoke-virtual {p1}, Ldolphin/net/c/a;->f()V

    move v0, v1

    .line 483
    :cond_0
    iget-object v1, p0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v1}, Ldolphin/net/http/c;->i()V

    .line 484
    iget-object v1, p0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    const-string v2, "http.connection"

    invoke-virtual {v1, v2}, Ldolphin/net/http/c;->a(Ljava/lang/String;)V

    .line 486
    return v0

    .line 476
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/LinkedList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ldolphin/net/c/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 347
    .line 348
    iget-object v3, p0, Ldolphin/net/c/h;->c:Ldolphin/net/c/b;

    monitor-enter v3

    move v0, v1

    .line 350
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 351
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/net/c/a;

    .line 354
    iget-object v4, p0, Ldolphin/net/c/h;->c:Ldolphin/net/c/b;

    invoke-interface {v4, v0}, Ldolphin/net/c/b;->a(Ldolphin/net/c/a;)V

    move v0, v2

    .line 355
    goto :goto_0

    .line 357
    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/net/c/h;->c:Ldolphin/net/c/b;

    iget-object v4, p0, Ldolphin/net/c/h;->b:Lorg/apache/http/HttpHost;

    invoke-interface {v0, v4}, Ldolphin/net/c/b;->b(Lorg/apache/http/HttpHost;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 358
    :cond_1
    :goto_1
    monitor-exit v3

    .line 359
    return v0

    :cond_2
    move v0, v2

    .line 357
    goto :goto_1

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Ldolphin/net/c/a;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x6

    const/4 v0, 0x0

    const/4 v8, 0x3

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 372
    :try_start_0
    iget-object v4, p0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ldolphin/net/http/c;->a(Landroid/net/http/SslCertificate;)V

    .line 373
    iget-object v4, p0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    iget-object v5, p1, Ldolphin/net/c/a;->b:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {v5}, Lorg/apache/http/message/BasicHttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    invoke-virtual {p1}, Ldolphin/net/c/a;->a()Ldolphin/net/http/l;

    move-result-object v6

    iget v7, p1, Ldolphin/net/c/a;->h:I

    invoke-virtual {v4, v5, v6, v7}, Ldolphin/net/http/c;->a([Lorg/apache/http/Header;Ldolphin/net/http/l;I)Ldolphin/net/http/a;

    move-result-object v5

    .line 374
    if-eqz v5, :cond_2

    .line 376
    invoke-static {}, Ldolphin/net/a/a;->a()Ldolphin/net/a/a;

    move-result-object v4

    invoke-virtual {v4}, Ldolphin/net/a/a;->c()I

    move-result v4

    .line 377
    iget v6, p1, Ldolphin/net/c/a;->h:I

    if-ne v6, v1, :cond_1

    mul-int/lit8 v4, v4, 0x2

    .line 381
    :cond_0
    :goto_0
    invoke-virtual {v5, v4}, Ldolphin/net/http/a;->setSocketTimeout(I)V

    .line 382
    iget-object v4, p0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v4, v5}, Ldolphin/net/http/c;->a(Ldolphin/net/http/a;)V

    .line 383
    iget-object v4, p0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    const-string v6, "http.connection"

    invoke-virtual {v4, v6, v5}, Ldolphin/net/http/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v3, v0

    .line 438
    :goto_1
    if-nez v3, :cond_3

    move v0, v1

    .line 452
    :goto_2
    return v0

    .line 377
    :cond_1
    iget v6, p1, Ldolphin/net/c/a;->h:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    mul-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 388
    :cond_2
    const/4 v2, 0x3

    iput v2, p1, Ldolphin/net/c/a;->h:I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ldolphin/net/http/u; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_2

    .line 391
    :catch_0
    move-exception v2

    .line 395
    const/4 v3, -0x2

    .line 429
    goto :goto_1

    .line 397
    :catch_1
    move-exception v2

    .line 400
    iput v8, p1, Ldolphin/net/c/a;->h:I

    goto :goto_1

    .line 403
    :catch_2
    move-exception v1

    .line 408
    iput v8, p1, Ldolphin/net/c/a;->h:I

    goto :goto_2

    .line 411
    :catch_3
    move-exception v2

    .line 416
    iput v8, p1, Ldolphin/net/c/a;->h:I

    .line 417
    const/16 v3, -0xb

    .line 429
    goto :goto_1

    .line 424
    :catch_4
    move-exception v2

    .line 427
    const/4 v3, -0x1

    .line 428
    goto :goto_1

    .line 441
    :cond_3
    iget v1, p1, Ldolphin/net/c/a;->h:I

    if-ge v1, v8, :cond_4

    .line 445
    iget v1, p1, Ldolphin/net/c/a;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Ldolphin/net/c/a;->h:I

    .line 446
    iget-object v1, p0, Ldolphin/net/c/h;->c:Ldolphin/net/c/b;

    invoke-interface {v1, p1}, Ldolphin/net/c/b;->a(Ldolphin/net/c/a;)V

    goto :goto_2

    .line 450
    :cond_4
    invoke-direct {p0, p1, v3, v2}, Ldolphin/net/c/h;->a(Ldolphin/net/c/a;ILjava/lang/Exception;)Z

    goto :goto_2

    .line 419
    :catch_5
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method a()Ldolphin/net/http/c;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    return-object v0
.end method

.method a(Ldolphin/net/c/a;)V
    .locals 19

    .prologue
    .line 130
    .line 132
    const/4 v9, 0x0

    .line 133
    const/4 v8, 0x0

    .line 135
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 136
    const/4 v7, 0x0

    .line 137
    const/4 v6, 0x2

    const/4 v5, 0x3

    .line 138
    const/4 v4, 0x0

    .line 140
    const-wide/16 v2, 0x0

    move-object/from16 v10, p1

    .line 142
    :goto_0
    const/4 v1, 0x3

    if-eq v4, v1, :cond_15

    .line 146
    move-object/from16 v0, p0

    iget v1, v0, Ldolphin/net/c/h;->h:I

    sget v11, Ldolphin/net/c/h;->g:I

    if-ne v1, v11, :cond_0

    .line 148
    const-wide/16 v11, 0x64

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7

    .line 150
    :goto_1
    sget v1, Ldolphin/net/c/h;->f:I

    move-object/from16 v0, p0

    iput v1, v0, Ldolphin/net/c/h;->h:I

    .line 153
    :cond_0
    packed-switch v4, :pswitch_data_0

    :cond_1
    move-wide/from16 v16, v2

    move-wide/from16 v1, v16

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    :goto_2
    move-object v10, v9

    move v9, v8

    move-object v8, v7

    move-object v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move-wide/from16 v16, v1

    move-wide/from16 v2, v16

    .line 330
    goto :goto_0

    .line 155
    :pswitch_0
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 156
    const/4 v1, 0x1

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-wide/from16 v16, v2

    move v3, v1

    move-wide/from16 v1, v16

    .line 157
    goto :goto_2

    .line 160
    :cond_2
    if-nez v10, :cond_3

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Ldolphin/net/c/h;->c:Ldolphin/net/c/b;

    move-object/from16 v0, p0

    iget-object v11, v0, Ldolphin/net/c/h;->b:Lorg/apache/http/HttpHost;

    invoke-interface {v1, v11}, Ldolphin/net/c/b;->a(Lorg/apache/http/HttpHost;)Ldolphin/net/c/a;

    move-result-object v1

    move-object v11, v1

    .line 166
    :goto_3
    if-nez v11, :cond_4

    .line 167
    const/4 v1, 0x2

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-wide/from16 v16, v2

    move v3, v1

    move-wide/from16 v1, v16

    .line 168
    goto :goto_2

    .line 164
    :cond_3
    const/4 v1, 0x0

    move-object v11, v10

    move-object v10, v1

    goto :goto_3

    .line 170
    :cond_4
    const-string v1, "Network"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[RequestQueue-Network-DeQueue]"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ldolphin/net/c/a;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Ldolphin/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v1, "PERF"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[RequestQueue-Network-DeQueue]"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ldolphin/net/c/a;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ldolphin/net/c/a;->a(Ldolphin/net/c/h;)V

    .line 176
    iget-boolean v1, v11, Ldolphin/net/c/a;->f:Z

    if-eqz v1, :cond_5

    .line 179
    invoke-virtual {v11}, Ldolphin/net/c/a;->f()V

    move-wide/from16 v16, v2

    move-wide/from16 v1, v16

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    .line 180
    goto/16 :goto_2

    .line 183
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v1}, Ldolphin/net/http/c;->b()Z

    move-result v1

    if-nez v1, :cond_6

    .line 186
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Ldolphin/net/c/h;->b(Ldolphin/net/c/a;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 187
    const/4 v1, 0x3

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-wide/from16 v16, v2

    move v3, v1

    move-wide/from16 v1, v16

    .line 188
    goto/16 :goto_2

    .line 196
    :cond_6
    iget-object v1, v11, Ldolphin/net/c/a;->a:Ldolphin/net/http/l;

    move-object/from16 v0, p0

    iget-object v12, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v12}, Ldolphin/net/http/c;->e()Landroid/net/http/SslCertificate;

    move-result-object v12

    invoke-interface {v1, v12}, Ldolphin/net/http/l;->a(Landroid/net/http/SslCertificate;)V

    .line 199
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processRequests: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Ldolphin/net/c/h;->b:Lorg/apache/http/HttpHost;

    invoke-virtual {v12}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " - "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ldolphin/net/c/a;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/util/q;->a(Ljava/lang/String;)Ldolphin/util/q;

    move-result-object v7

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v1}, Ldolphin/net/http/c;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 217
    invoke-static {}, Ldolphin/net/a/a;->a()Ldolphin/net/a/a;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/net/a/a;->c()I

    move-result v1

    .line 218
    iget v12, v11, Ldolphin/net/c/a;->h:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_a

    mul-int/lit8 v1, v1, 0x2

    .line 221
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v12}, Ldolphin/net/http/c;->a()Ldolphin/net/http/a;

    move-result-object v12

    invoke-virtual {v12, v1}, Ldolphin/net/http/a;->setSocketTimeout(I)V

    .line 223
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v1}, Ldolphin/net/http/c;->a()Ldolphin/net/http/a;

    move-result-object v1

    invoke-virtual {v11, v1}, Ldolphin/net/c/a;->a(Ldolphin/net/http/a;)V
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 243
    :goto_5
    if-eqz v8, :cond_c

    .line 244
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v8}, Ldolphin/net/c/h;->a(Ldolphin/net/c/a;ILjava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, v11, Ldolphin/net/c/a;->f:Z

    if-nez v1, :cond_9

    .line 248
    invoke-virtual {v13, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 250
    :cond_9
    const/4 v5, 0x0

    .line 251
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ldolphin/net/c/h;->a(Ljava/util/LinkedList;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x3

    .line 252
    :goto_6
    const/4 v4, 0x1

    move-object v6, v7

    move v8, v9

    move-object v7, v5

    move-object v9, v10

    move v5, v4

    move/from16 v16, v1

    move-wide/from16 v17, v2

    move-wide/from16 v1, v17

    move/from16 v3, v16

    .line 253
    goto/16 :goto_2

    .line 218
    :cond_a
    :try_start_2
    iget v12, v11, Ldolphin/net/c/a;->h:I
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    const/4 v14, 0x2

    if-lt v12, v14, :cond_7

    mul-int/lit8 v1, v1, 0x4

    goto :goto_4

    .line 224
    :catch_0
    move-exception v1

    .line 228
    const/4 v9, -0x1

    move-object v8, v1

    .line 242
    goto :goto_5

    .line 229
    :catch_1
    move-exception v1

    .line 233
    const/4 v9, -0x7

    move-object v8, v1

    .line 242
    goto :goto_5

    .line 234
    :catch_2
    move-exception v1

    .line 238
    const/4 v9, -0x7

    move-object v8, v1

    .line 242
    goto :goto_5

    .line 251
    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    .line 256
    :cond_c
    invoke-virtual {v13, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v1}, Ldolphin/net/http/c;->h()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-wide/from16 v16, v2

    move v3, v1

    move-wide/from16 v1, v16

    goto/16 :goto_2

    .line 262
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Ldolphin/net/c/h;->c:Ldolphin/net/c/b;

    move-object/from16 v0, p0

    iget-object v11, v0, Ldolphin/net/c/h;->b:Lorg/apache/http/HttpHost;

    invoke-interface {v1, v11}, Ldolphin/net/c/b;->b(Lorg/apache/http/HttpHost;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    .line 263
    :goto_7
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v11

    .line 264
    const/4 v12, 0x2

    if-eq v4, v12, :cond_e

    if-ge v11, v6, :cond_e

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v12}, Ldolphin/net/http/c;->h()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 265
    const/4 v1, 0x0

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-wide/from16 v16, v2

    move v3, v1

    move-wide/from16 v1, v16

    .line 266
    goto/16 :goto_2

    .line 262
    :cond_d
    const/4 v1, 0x0

    goto :goto_7

    .line 267
    :cond_e
    if-nez v11, :cond_10

    .line 269
    if-eqz v1, :cond_f

    const/4 v1, 0x3

    :goto_8
    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-wide/from16 v16, v2

    move v3, v1

    move-wide/from16 v1, v16

    .line 270
    goto/16 :goto_2

    .line 269
    :cond_f
    const/4 v1, 0x0

    goto :goto_8

    .line 273
    :cond_10
    invoke-virtual {v13}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldolphin/net/c/a;

    .line 278
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v11}, Ldolphin/net/http/c;->a()Ldolphin/net/http/a;

    move-result-object v11

    invoke-virtual {v1, v11}, Ldolphin/net/c/a;->b(Ldolphin/net/http/a;)V

    .line 279
    invoke-virtual {v7}, Ldolphin/util/q;->a()J

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 281
    invoke-static {}, Ldolphin/net/a/a;->a()Ldolphin/net/a/a;

    move-result-object v14

    sub-long/2addr v11, v2

    long-to-int v11, v11

    invoke-virtual {v14, v11}, Ldolphin/net/a/a;->b(I)V
    :try_end_3
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-object v12, v8

    .line 301
    :goto_9
    if-eqz v12, :cond_16

    .line 302
    instance-of v8, v12, Lorg/apache/http/NoHttpResponseException;

    if-eqz v8, :cond_14

    .line 306
    move-object/from16 v0, p0

    iget-object v8, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v8}, Ldolphin/net/http/c;->d()Ljava/lang/String;

    move-result-object v14

    .line 307
    move-object/from16 v0, p0

    iget-object v8, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v8}, Ldolphin/net/http/c;->c()Lorg/apache/http/HttpHost;

    move-result-object v11

    .line 308
    if-eqz v14, :cond_13

    new-instance v8, Lorg/apache/http/HttpHost;

    invoke-virtual {v11}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v15

    invoke-virtual {v11}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v14, v15, v11}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    :goto_a
    invoke-static {}, Ldolphin/net/http/e;->a()Ldolphin/net/http/e;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v14}, Ldolphin/net/http/c;->f()J

    move-result-wide v14

    invoke-virtual {v11, v8, v14, v15}, Ldolphin/net/http/e;->a(Lorg/apache/http/HttpHost;J)V

    .line 314
    :cond_11
    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v9, v12}, Ldolphin/net/c/h;->a(Ldolphin/net/c/a;ILjava/lang/Exception;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-boolean v8, v1, Ldolphin/net/c/a;->f:Z

    if-nez v8, :cond_12

    .line 316
    invoke-virtual {v1}, Ldolphin/net/c/a;->e()V

    .line 317
    invoke-virtual {v13, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 319
    :cond_12
    const/4 v8, 0x0

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ldolphin/net/http/c;->a(Z)V

    .line 322
    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v1}, Ldolphin/net/http/c;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v1}, Ldolphin/net/http/c;->i()V

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    const-string v4, "http.connection"

    invoke-virtual {v1, v4}, Ldolphin/net/http/c;->a(Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ldolphin/net/c/h;->a(Ljava/util/LinkedList;)Z

    .line 329
    const/4 v4, 0x1

    .line 330
    const/4 v1, 0x0

    move v5, v4

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move/from16 v16, v1

    move-wide/from16 v17, v2

    move-wide/from16 v1, v17

    move/from16 v3, v16

    goto/16 :goto_2

    .line 282
    :catch_3
    move-exception v8

    .line 286
    const/4 v9, -0x7

    move-object v12, v8

    .line 300
    goto/16 :goto_9

    .line 287
    :catch_4
    move-exception v8

    .line 291
    const/4 v9, -0x7

    move-object v12, v8

    .line 300
    goto/16 :goto_9

    .line 292
    :catch_5
    move-exception v8

    .line 296
    const/4 v9, -0x7

    move-object v12, v8

    .line 300
    goto/16 :goto_9

    .line 297
    :catch_6
    move-exception v11

    move-object v12, v8

    goto/16 :goto_9

    :cond_13
    move-object v8, v11

    .line 308
    goto :goto_a

    .line 310
    :cond_14
    instance-of v8, v12, Ljava/net/SocketTimeoutException;

    if-eqz v8, :cond_11

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 312
    invoke-static {}, Ldolphin/net/a/a;->a()Ldolphin/net/a/a;

    move-result-object v8

    sub-long/2addr v14, v2

    long-to-int v11, v14

    invoke-virtual {v8, v11}, Ldolphin/net/a/a;->b(I)V

    goto :goto_b

    .line 149
    :catch_7
    move-exception v1

    goto/16 :goto_1

    .line 336
    :cond_15
    return-void

    .line 239
    :catch_8
    move-exception v1

    goto/16 :goto_5

    :cond_16
    move-object v8, v12

    goto :goto_c

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method b()V
    .locals 1

    .prologue
    .line 116
    sget v0, Ldolphin/net/c/h;->g:I

    iput v0, p0, Ldolphin/net/c/h;->h:I

    .line 118
    iget-object v0, p0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Ldolphin/net/c/h;->e:Ldolphin/net/http/c;

    invoke-virtual {v0}, Ldolphin/net/http/c;->i()V

    .line 123
    :cond_0
    return-void
.end method
