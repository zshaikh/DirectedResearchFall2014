.class Lorg/b/b/a/h;
.super Lorg/c/a/a/j;
.source "LongPollingTransport.java"


# instance fields
.field final synthetic a:Lorg/b/b/a/f;

.field private final g:Lorg/b/b/a/j;

.field private final h:[Lorg/b/a/d;


# direct methods
.method private varargs constructor <init>(Lorg/b/b/a/f;Lorg/b/b/a/j;[Lorg/b/a/d;)V
    .locals 1

    .prologue
    .line 205
    iput-object p1, p0, Lorg/b/b/a/h;->a:Lorg/b/b/a/f;

    .line 206
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/c/a/a/j;-><init>(Z)V

    .line 207
    iput-object p2, p0, Lorg/b/b/a/h;->g:Lorg/b/b/a/j;

    .line 208
    iput-object p3, p0, Lorg/b/b/a/h;->h:[Lorg/b/a/d;

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Lorg/b/b/a/f;Lorg/b/b/a/j;[Lorg/b/a/d;Lorg/b/b/a/g;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1, p2, p3}, Lorg/b/b/a/h;-><init>(Lorg/b/b/a/f;Lorg/b/b/a/j;[Lorg/b/a/d;)V

    return-void
.end method

.method static synthetic a(Lorg/b/b/a/h;)[Lorg/b/a/d;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/b/b/a/h;->h:[Lorg/b/a/d;

    return-object v0
.end method

.method static synthetic b(Lorg/b/b/a/h;)Lorg/b/b/a/j;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/b/b/a/h;->g:Lorg/b/b/a/j;

    return-object v0
.end method

.method private y()Z
    .locals 2

    .prologue
    .line 362
    iget-object v1, p0, Lorg/b/b/a/h;->a:Lorg/b/b/a/f;

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v0, p0, Lorg/b/b/a/h;->a:Lorg/b/b/a/f;

    invoke-static {v0}, Lorg/b/b/a/f;->a(Lorg/b/b/a/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/b/b/a/h;->g:Lorg/b/b/a/j;

    iget-object v1, p0, Lorg/b/b/a/h;->h:[Lorg/b/a/d;

    invoke-interface {v0, v1}, Lorg/b/b/a/j;->a([Lorg/b/a/d;)V

    .line 215
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 342
    invoke-direct {p0}, Lorg/b/b/a/h;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lorg/b/b/a/h;->g:Lorg/b/b/a/j;

    iget-object v1, p0, Lorg/b/b/a/h;->h:[Lorg/b/a/d;

    invoke-interface {v0, p1, v1}, Lorg/b/b/a/j;->b(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    .line 344
    :cond_0
    return-void
.end method

.method protected a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    .locals 16

    .prologue
    .line 220
    invoke-super/range {p0 .. p2}, Lorg/c/a/a/j;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    .line 221
    sget-object v1, Lorg/c/a/b/o;->a:Lorg/c/a/b/o;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/c/a/b/o;->c(Lorg/c/a/c/f;)I

    move-result v1

    .line 222
    const/16 v2, 0x35

    if-ne v1, v2, :cond_b

    .line 224
    new-instance v1, Lorg/c/a/d/k;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "=;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/c/a/d/k;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 225
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/c/a/d/k;->a(Z)V

    .line 227
    const/4 v2, 0x0

    .line 228
    invoke-virtual {v1}, Lorg/c/a/d/k;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-virtual {v1}, Lorg/c/a/d/k;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 231
    :cond_0
    const/4 v3, 0x0

    .line 232
    invoke-virtual {v1}, Lorg/c/a/d/k;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    invoke-virtual {v1}, Lorg/c/a/d/k;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 235
    :cond_1
    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    .line 237
    const/4 v8, 0x0

    .line 238
    const/4 v9, 0x0

    .line 239
    const/4 v5, 0x0

    .line 240
    const/4 v4, 0x0

    .line 241
    const/4 v6, -0x1

    .line 242
    const/4 v7, 0x0

    .line 244
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lorg/c/a/d/k;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 246
    invoke-virtual {v1}, Lorg/c/a/d/k;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 247
    const-string v11, "Version"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 248
    invoke-virtual {v1}, Lorg/c/a/d/k;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 249
    :cond_3
    const-string v11, "Comment"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 250
    invoke-virtual {v1}, Lorg/c/a/d/k;->nextToken()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 251
    :cond_4
    const-string v11, "Path"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 252
    invoke-virtual {v1}, Lorg/c/a/d/k;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 253
    :cond_5
    const-string v11, "Domain"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 254
    invoke-virtual {v1}, Lorg/c/a/d/k;->nextToken()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 255
    :cond_6
    const-string v11, "Expires"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 259
    :try_start_0
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "EEE, dd-MMM-yy HH:mm:ss \'GMT\'"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 260
    const-string v11, "GMT"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 261
    invoke-virtual {v1}, Lorg/c/a/d/k;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 262
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 263
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_7

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 269
    :cond_8
    const-string v11, "Max-Age"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 273
    :try_start_1
    invoke-virtual {v1}, Lorg/c/a/d/k;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto/16 :goto_0

    .line 279
    :cond_9
    const-string v11, "Secure"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 280
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 283
    :cond_a
    new-instance v1, Lorg/b/b/a/c;

    invoke-direct/range {v1 .. v9}, Lorg/b/b/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/b/b/a/h;->a:Lorg/b/b/a/f;

    invoke-virtual {v2, v1}, Lorg/b/b/a/f;->a(Lorg/b/b/a/c;)V

    .line 287
    :cond_b
    return-void

    .line 275
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 265
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    .line 292
    invoke-direct {p0}, Lorg/b/b/a/h;->y()Z

    move-result v0

    .line 293
    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lorg/b/b/a/h;->d()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    .line 298
    invoke-virtual {p0}, Lorg/b/b/a/h;->e()Ljava/lang/String;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 303
    :try_start_0
    iget-object v0, p0, Lorg/b/b/a/h;->a:Lorg/b/b/a/f;

    invoke-virtual {p0}, Lorg/b/b/a/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/b/b/a/f;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 304
    iget-object v0, p0, Lorg/b/b/a/h;->a:Lorg/b/b/a/f;

    const-string v2, "Received messages {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/b/b/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/a/e;

    .line 307
    invoke-interface {v0}, Lorg/b/a/e;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "/meta/connect"

    invoke-interface {v0}, Lorg/b/a/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    invoke-interface {v0}, Lorg/b/a/e;->a()Ljava/util/Map;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_1

    const-string v3, "timeout"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 311
    iget-object v3, p0, Lorg/b/b/a/h;->a:Lorg/b/b/a/f;

    invoke-static {v3, v0}, Lorg/b/b/a/f;->a(Lorg/b/b/a/f;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 316
    :catch_0
    move-exception v0

    .line 318
    invoke-virtual {p0, v0}, Lorg/b/b/a/h;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 314
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/b/b/a/h;->g:Lorg/b/b/a/j;

    invoke-interface {v0, v1}, Lorg/b/b/a/j;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 323
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 325
    const-string v1, "httpCode"

    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v1, Lorg/b/c/p;

    invoke-direct {v1, v0}, Lorg/b/c/p;-><init>(Ljava/util/Map;)V

    .line 327
    iget-object v0, p0, Lorg/b/b/a/h;->g:Lorg/b/b/a/j;

    iget-object v2, p0, Lorg/b/b/a/h;->h:[Lorg/b/a/d;

    invoke-interface {v0, v1, v2}, Lorg/b/b/a/j;->c(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    goto/16 :goto_0

    .line 332
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 333
    const-string v1, "httpCode"

    invoke-virtual {p0}, Lorg/b/b/a/h;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v1, Lorg/b/c/p;

    invoke-direct {v1, v0}, Lorg/b/c/p;-><init>(Ljava/util/Map;)V

    .line 335
    iget-object v0, p0, Lorg/b/b/a/h;->g:Lorg/b/b/a/j;

    iget-object v2, p0, Lorg/b/b/a/h;->h:[Lorg/b/a/d;

    invoke-interface {v0, v1, v2}, Lorg/b/b/a/j;->c(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    goto/16 :goto_0
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 349
    invoke-direct {p0}, Lorg/b/b/a/h;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/b/b/a/h;->g:Lorg/b/b/a/j;

    iget-object v1, p0, Lorg/b/b/a/h;->h:[Lorg/b/a/d;

    invoke-interface {v0, p1, v1}, Lorg/b/b/a/j;->c(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    .line 351
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 356
    invoke-direct {p0}, Lorg/b/b/a/h;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lorg/b/b/a/h;->g:Lorg/b/b/a/j;

    iget-object v1, p0, Lorg/b/b/a/h;->h:[Lorg/b/a/d;

    invoke-interface {v0, v1}, Lorg/b/b/a/j;->b([Lorg/b/a/d;)V

    .line 358
    :cond_0
    return-void
.end method
