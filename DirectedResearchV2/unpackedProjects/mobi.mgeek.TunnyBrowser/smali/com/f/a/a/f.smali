.class public abstract Lcom/f/a/a/f;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"

# interfaces
.implements Lcom/f/a/a/t;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/net/URI;

.field private e:[Lorg/apache/http/Header;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/f/a/a/f;->b:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/f/a/a/f;->c:Ljava/lang/Boolean;

    .line 99
    iput-object v1, p0, Lcom/f/a/a/f;->d:Ljava/net/URI;

    .line 100
    iput-object v1, p0, Lcom/f/a/a/f;->e:[Lorg/apache/http/Header;

    .line 167
    new-instance v0, Lcom/f/a/a/g;

    invoke-direct {v0, p0}, Lcom/f/a/a/g;-><init>(Lcom/f/a/a/f;)V

    iput-object v0, p0, Lcom/f/a/a/f;->a:Landroid/os/Handler;

    .line 170
    invoke-virtual {p0, v1}, Lcom/f/a/a/f;->a(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/f/a/a/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 221
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "Request retry no. %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public a(II)V
    .locals 5

    .prologue
    .line 180
    const-string v1, "AsyncHttpResponseHandler"

    const-string v2, "Progress %d from %d (%d%%)"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    if-lez p2, :cond_0

    div-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x64

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 180
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract a(I[Lorg/apache/http/Header;[B)V
.end method

.method public abstract a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method protected a(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 262
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 263
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lt v1, v6, :cond_0

    .line 264
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v0, v4

    check-cast v1, [Lorg/apache/http/Header;

    check-cast v1, [Lorg/apache/http/Header;

    aget-object v0, v0, v5

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v2, v1, v0}, Lcom/f/a/a/f;->a(I[Lorg/apache/http/Header;[B)V

    goto :goto_0

    .line 266
    :cond_0
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "SUCCESS_MESSAGE didn\'t got enough params"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 271
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 272
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v0, v4

    check-cast v1, [Lorg/apache/http/Header;

    check-cast v1, [Lorg/apache/http/Header;

    aget-object v2, v0, v5

    check-cast v2, [B

    check-cast v2, [B

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/f/a/a/f;->a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 274
    :cond_1
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "FAILURE_MESSAGE didn\'t got enough params"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :pswitch_2
    invoke-virtual {p0}, Lcom/f/a/a/f;->c()V

    goto :goto_0

    .line 281
    :pswitch_3
    invoke-virtual {p0}, Lcom/f/a/a/f;->d()V

    goto :goto_0

    .line 284
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 285
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lt v1, v5, :cond_2

    .line 287
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/f/a/a/f;->a(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    const-string v1, "AsyncHttpResponseHandler"

    const-string v2, "custom onProgress contains an error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 292
    :cond_2
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "PROGRESS_MESSAGE didn\'t got enough params"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 296
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 297
    if-eqz v0, :cond_3

    array-length v1, v0

    if-ne v1, v4, :cond_3

    .line 298
    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/f/a/a/f;->a(I)V

    goto/16 :goto_0

    .line 300
    :cond_3
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "RETRY_MESSAGE didn\'t get enough params"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 303
    :pswitch_6
    invoke-virtual {p0}, Lcom/f/a/a/f;->e()V

    goto/16 :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 322
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 323
    :goto_0
    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 326
    :cond_0
    if-eqz p1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/f/a/a/f;->a:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    :cond_1
    if-eqz v0, :cond_2

    .line 330
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 332
    :cond_2
    return-void

    .line 322
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/f/a/a/f;->b:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public a(Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/f/a/a/f;->d:Ljava/net/URI;

    .line 115
    return-void
.end method

.method public a(Lorg/apache/http/HttpResponse;)V
    .locals 6

    .prologue
    .line 348
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 351
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/f/a/a/f;->a(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    .line 353
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    .line 355
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/f/a/a/f;->b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/f/a/a/f;->b(I[Lorg/apache/http/Header;[B)V

    goto :goto_0
.end method

.method public a([Lorg/apache/http/Header;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/f/a/a/f;->e:[Lorg/apache/http/Header;

    .line 120
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/f/a/a/f;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method a(Lorg/apache/http/HttpEntity;)[B
    .locals 8

    .prologue
    const/16 v0, 0x1000

    const/4 v2, 0x0

    .line 371
    const/4 v1, 0x0

    .line 372
    if-eqz p1, :cond_3

    .line 373
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 374
    if-eqz v3, :cond_3

    .line 375
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 376
    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 381
    :goto_0
    :try_start_0
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    const/16 v0, 0x1000

    :try_start_1
    new-array v6, v0, [B

    move v0, v2

    .line 386
    :goto_1
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_2

    .line 387
    add-int/2addr v0, v2

    .line 388
    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 389
    long-to-int v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/f/a/a/f;->b(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 392
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 397
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File too large to fit into available memory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_1
    long-to-int v0, v4

    goto :goto_0

    .line 392
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 394
    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 401
    :goto_2
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/f/a/a/f;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/f/a/a/f;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    .line 249
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/f/a/a/f;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/f/a/a/f;->b(Landroid/os/Message;)V

    .line 250
    return-void
.end method

.method public final b(II)V
    .locals 4

    .prologue
    .line 229
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/f/a/a/f;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/f/a/a/f;->b(Landroid/os/Message;)V

    .line 230
    return-void
.end method

.method public final b(I[Lorg/apache/http/Header;[B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/f/a/a/f;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/f/a/a/f;->b(Landroid/os/Message;)V

    .line 234
    return-void
.end method

.method public final b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 237
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p2, v0, v3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/f/a/a/f;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/f/a/a/f;->b(Landroid/os/Message;)V

    .line 238
    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/f/a/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0, p1}, Lcom/f/a/a/f;->a(Landroid/os/Message;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/f/a/a/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "Request got cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 241
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/f/a/a/f;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/f/a/a/f;->b(Landroid/os/Message;)V

    .line 242
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 245
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/f/a/a/f;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/f/a/a/f;->b(Landroid/os/Message;)V

    .line 246
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 253
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/f/a/a/f;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/f/a/a/f;->b(Landroid/os/Message;)V

    .line 254
    return-void
.end method
