.class public Ldolphin/net/http/a;
.super Ljava/lang/Object;
.source "AndroidHttpClientConnection.java"

# interfaces
.implements Lorg/apache/http/HttpConnection;
.implements Lorg/apache/http/HttpInetConnection;


# instance fields
.field private a:Lorg/apache/http/io/SessionInputBuffer;

.field private b:Lorg/apache/http/io/SessionOutputBuffer;

.field private c:I

.field private d:I

.field private final e:Lorg/apache/http/impl/entity/EntitySerializer;

.field private f:Lorg/apache/http/io/HttpMessageWriter;

.field private g:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

.field private volatile h:Z

.field private i:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Ldolphin/net/http/a;->a:Lorg/apache/http/io/SessionInputBuffer;

    .line 73
    iput-object v0, p0, Ldolphin/net/http/a;->b:Lorg/apache/http/io/SessionOutputBuffer;

    .line 80
    iput-object v0, p0, Ldolphin/net/http/a;->f:Lorg/apache/http/io/HttpMessageWriter;

    .line 81
    iput-object v0, p0, Ldolphin/net/http/a;->g:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    .line 83
    iput-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    .line 86
    new-instance v0, Lorg/apache/http/impl/entity/EntitySerializer;

    new-instance v1, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;

    invoke-direct {v1}, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/http/impl/entity/EntitySerializer;-><init>(Lorg/apache/http/entity/ContentLengthStrategy;)V

    iput-object v0, p0, Ldolphin/net/http/a;->e:Lorg/apache/http/impl/entity/EntitySerializer;

    .line 88
    return-void
.end method

.method private c(Ldolphin/net/http/m;)J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 432
    invoke-virtual {p1}, Ldolphin/net/http/m;->a()J

    move-result-wide v0

    .line 435
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-wide v0

    .line 438
    :cond_1
    invoke-virtual {p1}, Ldolphin/net/http/m;->b()J

    move-result-wide v0

    .line 439
    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    move-wide v0, v2

    .line 442
    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 147
    iget-boolean v0, p0, Ldolphin/net/http/a;->h:Z

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 153
    iget-boolean v0, p0, Ldolphin/net/http/a;->h:Z

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Ldolphin/net/http/a;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 189
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 189
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ldolphin/net/http/m;)Lorg/apache/http/StatusLine;
    .locals 14

    .prologue
    const/16 v12, 0x40

    const/16 v11, 0x9

    const/4 v10, -0x1

    const/16 v9, 0x20

    const/4 v4, 0x0

    .line 317
    invoke-direct {p0}, Ldolphin/net/http/a;->e()V

    .line 319
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 321
    iget-object v0, p0, Ldolphin/net/http/a;->a:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 322
    new-instance v0, Lorg/apache/http/NoHttpResponseException;

    const-string v1, "The target server failed to respond"

    invoke-direct {v0, v1}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    sget-object v0, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    new-instance v2, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/message/BasicLineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 330
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 333
    const/4 v2, 0x0

    move v0, v4

    .line 336
    :goto_0
    if-nez v1, :cond_4

    .line 337
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 342
    :goto_1
    iget-object v3, p0, Ldolphin/net/http/a;->a:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v3, v1}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v3

    .line 343
    if-eq v3, v10, :cond_1

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    const/4 v7, 0x1

    if-ge v3, v7, :cond_5

    .line 383
    :cond_1
    if-eqz v2, :cond_2

    .line 384
    invoke-virtual {p1, v2}, Ldolphin/net/http/m;->a(Lorg/apache/http/util/CharArrayBuffer;)V

    .line 387
    :cond_2
    const/16 v0, 0xc8

    if-lt v6, v0, :cond_3

    .line 388
    iget-object v0, p0, Ldolphin/net/http/a;->g:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    .line 392
    :cond_3
    return-object v5

    .line 340
    :cond_4
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    goto :goto_1

    .line 350
    :cond_5
    invoke-virtual {v1, v4}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    .line 351
    if-eq v3, v9, :cond_6

    if-ne v3, v11, :cond_a

    :cond_6
    if-eqz v2, :cond_a

    .line 355
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v7

    move v3, v4

    .line 356
    :goto_2
    if-ge v3, v7, :cond_7

    .line 357
    invoke-virtual {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v8

    .line 358
    if-eq v8, v9, :cond_8

    if-eq v8, v11, :cond_8

    .line 363
    :cond_7
    iget v7, p0, Ldolphin/net/http/a;->d:I

    if-lez v7, :cond_9

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v3

    iget v8, p0, Ldolphin/net/http/a;->d:I

    if-le v7, v8, :cond_9

    .line 366
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 362
    goto :goto_2

    .line 368
    :cond_9
    invoke-virtual {v2, v9}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 369
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v2, v1, v3, v7}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    .line 378
    :goto_3
    iget v3, p0, Ldolphin/net/http/a;->c:I

    if-lez v3, :cond_c

    iget v3, p0, Ldolphin/net/http/a;->c:I

    if-lt v0, v3, :cond_c

    .line 379
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Maximum header count exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_a
    if-eqz v2, :cond_b

    .line 372
    invoke-virtual {p1, v2}, Ldolphin/net/http/m;->a(Lorg/apache/http/util/CharArrayBuffer;)V

    .line 374
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 376
    const/4 v2, 0x0

    goto :goto_3

    :cond_c
    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    .line 381
    goto/16 :goto_0
.end method

.method public a(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    if-nez p2, :cond_1

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    invoke-direct {p0}, Ldolphin/net/http/a;->d()V

    .line 106
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 107
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 109
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getLinger(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    .line 110
    if-ltz v2, :cond_2

    .line 111
    if-lez v2, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 113
    :cond_2
    iput-object p1, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    .line 115
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getSocketBufferSize(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 116
    new-instance v2, Lorg/apache/http/impl/io/SocketInputBuffer;

    invoke-direct {v2, p1, v0, p2}, Lorg/apache/http/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Ldolphin/net/http/a;->a:Lorg/apache/http/io/SessionInputBuffer;

    .line 117
    new-instance v2, Lorg/apache/http/impl/io/SocketOutputBuffer;

    invoke-direct {v2, p1, v0, p2}, Lorg/apache/http/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Ldolphin/net/http/a;->b:Lorg/apache/http/io/SessionOutputBuffer;

    .line 119
    const-string v0, "http.connection.max-header-count"

    invoke-interface {p2, v0, v3}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ldolphin/net/http/a;->c:I

    .line 121
    const-string v0, "http.connection.max-line-length"

    invoke-interface {p2, v0, v3}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ldolphin/net/http/a;->d:I

    .line 124
    new-instance v0, Lorg/apache/http/impl/io/HttpRequestWriter;

    iget-object v2, p0, Ldolphin/net/http/a;->b:Lorg/apache/http/io/SessionOutputBuffer;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p2}, Lorg/apache/http/impl/io/HttpRequestWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Ldolphin/net/http/a;->f:Lorg/apache/http/io/HttpMessageWriter;

    .line 126
    new-instance v0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    iget-object v2, p0, Ldolphin/net/http/a;->a:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v2}, Lorg/apache/http/io/SessionInputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    move-result-object v2

    iget-object v3, p0, Ldolphin/net/http/a;->b:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v3}, Lorg/apache/http/io/SessionOutputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;-><init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V

    iput-object v0, p0, Ldolphin/net/http/a;->g:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    .line 130
    iput-boolean v1, p0, Ldolphin/net/http/a;->h:Z

    .line 131
    return-void

    .line 111
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 3

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    invoke-direct {p0}, Ldolphin/net/http/a;->e()V

    .line 287
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 294
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Ldolphin/net/http/a;->e:Lorg/apache/http/impl/entity/EntitySerializer;

    iget-object v1, p0, Ldolphin/net/http/a;->b:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/http/impl/entity/EntitySerializer;->serialize(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/HttpMessage;Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method

.method public a(Lorg/apache/http/HttpRequest;)V
    .locals 2

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    invoke-direct {p0}, Ldolphin/net/http/a;->e()V

    .line 271
    iget-object v0, p0, Ldolphin/net/http/a;->f:Lorg/apache/http/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lorg/apache/http/io/HttpMessageWriter;->write(Lorg/apache/http/HttpMessage;)V

    .line 272
    iget-object v0, p0, Ldolphin/net/http/a;->g:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    .line 273
    return-void
.end method

.method public b(Ldolphin/net/http/m;)Lorg/apache/http/HttpEntity;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, -0x1

    .line 401
    invoke-direct {p0}, Ldolphin/net/http/a;->e()V

    .line 402
    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 404
    invoke-direct {p0, p1}, Ldolphin/net/http/a;->c(Ldolphin/net/http/m;)J

    move-result-wide v1

    .line 405
    const-wide/16 v3, -0x2

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 406
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 407
    invoke-virtual {v0, v5, v6}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 408
    new-instance v1, Lorg/apache/http/impl/io/ChunkedInputStream;

    iget-object v2, p0, Ldolphin/net/http/a;->a:Lorg/apache/http/io/SessionInputBuffer;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 419
    :goto_0
    invoke-virtual {p1}, Ldolphin/net/http/m;->d()Ljava/lang/String;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 423
    :cond_0
    invoke-virtual {p1}, Ldolphin/net/http/m;->e()Ljava/lang/String;

    move-result-object v1

    .line 424
    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 428
    :cond_1
    return-object v0

    .line 409
    :cond_2
    cmp-long v3, v1, v5

    if-nez v3, :cond_3

    .line 410
    invoke-virtual {v0, v7}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 411
    invoke-virtual {v0, v5, v6}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 412
    new-instance v1, Lorg/apache/http/impl/io/IdentityInputStream;

    iget-object v2, p0, Ldolphin/net/http/a;->a:Lorg/apache/http/io/SessionInputBuffer;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/io/IdentityInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_0

    .line 414
    :cond_3
    invoke-virtual {v0, v7}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 415
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 416
    new-instance v3, Lorg/apache/http/impl/io/ContentLengthInputStream;

    iget-object v4, p0, Ldolphin/net/http/a;->a:Lorg/apache/http/io/SessionInputBuffer;

    invoke-direct {v3, v4, v1, v2}, Lorg/apache/http/impl/io/ContentLengthInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;J)V

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Ldolphin/net/http/a;->b:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 298
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ldolphin/net/http/a;->e()V

    .line 302
    invoke-virtual {p0}, Ldolphin/net/http/a;->b()V

    .line 303
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Ldolphin/net/http/a;->h:Z

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 242
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/net/http/a;->h:Z

    .line 243
    invoke-virtual {p0}, Ldolphin/net/http/a;->b()V

    .line 246
    :try_start_0
    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_1
    :try_start_1
    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    :goto_2
    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    goto :goto_2

    .line 251
    :catch_1
    move-exception v0

    goto :goto_2

    .line 247
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Ldolphin/net/http/a;->g:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSocketTimeout()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 215
    iget-object v1, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 217
    :try_start_0
    iget-object v1, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 218
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Ldolphin/net/http/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStale()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 463
    invoke-direct {p0}, Ldolphin/net/http/a;->e()V

    .line 465
    :try_start_0
    iget-object v1, p0, Ldolphin/net/http/a;->a:Lorg/apache/http/io/SessionInputBuffer;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    const/4 v0, 0x0

    .line 468
    :goto_0
    return v0

    .line 467
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setSocketTimeout(I)V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Ldolphin/net/http/a;->e()V

    .line 203
    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 205
    :try_start_0
    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/net/http/a;->h:Z

    .line 230
    iget-object v0, p0, Ldolphin/net/http/a;->i:Ljava/net/Socket;

    .line 231
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 234
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0}, Ldolphin/net/http/a;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Ldolphin/net/http/a;->getRemotePort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    :goto_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    const-string v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
