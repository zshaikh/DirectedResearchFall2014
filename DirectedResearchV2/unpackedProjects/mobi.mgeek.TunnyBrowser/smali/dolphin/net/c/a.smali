.class Ldolphin/net/c/a;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static o:Lorg/apache/http/protocol/RequestContent;


# instance fields
.field a:Ldolphin/net/http/l;

.field b:Lorg/apache/http/message/BasicHttpRequest;

.field c:Ljava/lang/String;

.field d:Lorg/apache/http/HttpHost;

.field e:Lorg/apache/http/HttpHost;

.field volatile f:Z

.field g:Ldolphin/net/c/d;

.field h:I

.field private i:Ldolphin/net/c/h;

.field private j:I

.field private k:Ljava/io/InputStream;

.field private l:I

.field private final m:Ljava/lang/Object;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    sput-object v0, Ldolphin/net/c/a;->o:Lorg/apache/http/protocol/RequestContent;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILdolphin/net/http/l;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpHost;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Ldolphin/net/http/l;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v1, p0, Ldolphin/net/c/a;->f:Z

    .line 84
    sget-object v0, Ldolphin/net/c/d;->a:Ldolphin/net/c/d;

    iput-object v0, p0, Ldolphin/net/c/a;->g:Ldolphin/net/c/d;

    .line 86
    iput v1, p0, Ldolphin/net/c/a;->h:I

    .line 90
    iput v1, p0, Ldolphin/net/c/a;->j:I

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldolphin/net/c/a;->m:Ljava/lang/Object;

    .line 103
    iput-boolean v1, p0, Ldolphin/net/c/a;->n:Z

    .line 127
    iput-object p7, p0, Ldolphin/net/c/a;->a:Ldolphin/net/http/l;

    .line 128
    iput-object p2, p0, Ldolphin/net/c/a;->d:Lorg/apache/http/HttpHost;

    .line 129
    iput-object p3, p0, Ldolphin/net/c/a;->e:Lorg/apache/http/HttpHost;

    .line 130
    iput-object p4, p0, Ldolphin/net/c/a;->c:Ljava/lang/String;

    .line 131
    iput-object p5, p0, Ldolphin/net/c/a;->k:Ljava/io/InputStream;

    .line 132
    iput p6, p0, Ldolphin/net/c/a;->l:I

    .line 134
    if-nez p5, :cond_1

    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {p0}, Ldolphin/net/c/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ldolphin/net/c/a;->b:Lorg/apache/http/message/BasicHttpRequest;

    .line 146
    :cond_0
    :goto_0
    const-string v0, "Host"

    invoke-virtual {p0}, Ldolphin/net/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ldolphin/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Ldolphin/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, p8}, Ldolphin/net/c/a;->a(Ljava/util/Map;)V

    .line 153
    return-void

    .line 137
    :cond_1
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-virtual {p0}, Ldolphin/net/c/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ldolphin/net/c/a;->b:Lorg/apache/http/message/BasicHttpRequest;

    .line 142
    if-eqz p5, :cond_0

    .line 143
    invoke-direct {p0, p5, p6}, Ldolphin/net/c/a;->a(Ljava/io/InputStream;I)V

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;I)V
    .locals 4

    .prologue
    .line 520
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bodyProvider must support mark()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 527
    iget-object v0, p0, Ldolphin/net/c/a;->b:Lorg/apache/http/message/BasicHttpRequest;

    check-cast v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v2, p2

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 529
    return-void
.end method

.method private static a(Lorg/apache/http/HttpRequest;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 503
    const-string v1, "HEAD"

    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xc8

    if-lt p1, v1, :cond_0

    const/16 v1, 0xcc

    if-eq p1, v1, :cond_0

    const/16 v1, 0x130

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a()Ldolphin/net/http/l;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Ldolphin/net/c/a;->a:Ldolphin/net/http/l;

    return-object v0
.end method

.method a(II)V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Ldolphin/net/c/a;->a:Ldolphin/net/http/l;

    invoke-static {p2}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ldolphin/net/http/l;->a(ILjava/lang/String;)V

    .line 551
    return-void
.end method

.method a(Ldolphin/net/c/d;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Ldolphin/net/c/a;->g:Ldolphin/net/c/d;

    .line 559
    return-void
.end method

.method a(Ldolphin/net/c/h;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Ldolphin/net/c/a;->i:Ldolphin/net/c/h;

    .line 172
    return-void
.end method

.method a(Ldolphin/net/http/a;)V
    .locals 3

    .prologue
    .line 221
    iget-boolean v0, p0, Ldolphin/net/c/a;->f:Z

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    sget-object v0, Ldolphin/net/c/a;->o:Lorg/apache/http/protocol/RequestContent;

    iget-object v1, p0, Ldolphin/net/c/a;->b:Lorg/apache/http/message/BasicHttpRequest;

    iget-object v2, p0, Ldolphin/net/c/a;->i:Ldolphin/net/c/h;

    invoke-virtual {v2}, Ldolphin/net/c/h;->a()Ldolphin/net/http/c;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/net/http/c;->g()Lorg/apache/http/protocol/HttpContext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/protocol/RequestContent;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 237
    iget-object v0, p0, Ldolphin/net/c/a;->b:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {p1, v0}, Ldolphin/net/http/a;->a(Lorg/apache/http/HttpRequest;)V

    .line 238
    iget-object v0, p0, Ldolphin/net/c/a;->b:Lorg/apache/http/message/BasicHttpRequest;

    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Ldolphin/net/c/a;->b:Lorg/apache/http/message/BasicHttpRequest;

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-virtual {p1, v0}, Ldolphin/net/http/a;->a(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    const-string v0, "Null http header name"

    .line 187
    invoke-static {v0}, Ldolphin/net/http/q;->a(Ljava/lang/String;)V

    .line 188
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null or empty value for header \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Ldolphin/net/http/q;->a(Ljava/lang/String;)V

    .line 193
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_2
    iget-object v0, p0, Ldolphin/net/c/a;->b:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    if-nez p1, :cond_1

    .line 213
    :cond_0
    return-void

    .line 208
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 209
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ldolphin/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ldolphin/net/c/a;->n:Z

    .line 162
    iget-boolean v0, p0, Ldolphin/net/c/a;->n:Z

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .locals 1

    .prologue
    .line 399
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ldolphin/net/c/a;->n:Z

    .line 400
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/net/c/a;->f:Z

    .line 403
    iget-object v0, p0, Ldolphin/net/c/a;->i:Ldolphin/net/c/h;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Ldolphin/net/c/a;->i:Ldolphin/net/c/h;

    invoke-virtual {v0}, Ldolphin/net/c/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :cond_0
    monitor-exit p0

    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Ldolphin/net/http/a;)V
    .locals 16

    .prologue
    .line 257
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ldolphin/net/c/a;->f:Z

    if-eqz v1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ldolphin/net/http/a;->c()V

    .line 264
    new-instance v7, Ldolphin/net/http/m;

    invoke-direct {v7}, Ldolphin/net/http/m;-><init>()V

    .line 266
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ldolphin/net/http/a;->a(Ldolphin/net/http/m;)Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 267
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 268
    const/16 v1, 0xc8

    if-lt v9, v1, :cond_1

    .line 272
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Ldolphin/net/c/a;->a:Ldolphin/net/http/l;

    invoke-virtual {v1}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v1

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v9, v4}, Ldolphin/net/http/l;->a(IIILjava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Ldolphin/net/c/a;->a:Ldolphin/net/http/l;

    invoke-interface {v1, v7}, Ldolphin/net/http/l;->a(Ldolphin/net/http/m;)V

    .line 276
    const/4 v1, 0x0

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Ldolphin/net/c/a;->b:Lorg/apache/http/message/BasicHttpRequest;

    invoke-static {v2, v9}, Ldolphin/net/c/a;->a(Lorg/apache/http/HttpRequest;I)Z

    move-result v2

    .line 279
    if-eqz v2, :cond_2

    .line 280
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ldolphin/net/http/a;->b(Ldolphin/net/http/m;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 284
    :cond_2
    const-string v2, "bytes"

    invoke-virtual {v7}, Ldolphin/net/http/m;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 287
    if-eqz v1, :cond_5

    .line 288
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 291
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v5

    .line 293
    const/4 v4, 0x0

    .line 294
    const/4 v3, 0x0

    .line 295
    const/4 v2, 0x0

    .line 297
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 299
    if-eqz v5, :cond_8

    .line 300
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    const-string v14, "gzip"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    const-string v14, "x-gzip"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 301
    :cond_3
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 314
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Ldolphin/net/c/a;->i:Ldolphin/net/c/h;

    invoke-virtual {v4}, Ldolphin/net/c/h;->a()Ldolphin/net/http/c;

    move-result-object v4

    invoke-virtual {v4}, Ldolphin/net/http/c;->j()[B
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 315
    const/4 v3, 0x0

    .line 316
    :try_start_2
    array-length v6, v4

    div-int/lit8 v13, v6, 0x2
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v15, v3

    move v3, v2

    move v2, v15

    .line 317
    :goto_2
    const/4 v6, -0x1

    if-eq v2, v6, :cond_c

    .line 318
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 319
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ldolphin/net/c/a;->n:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_9

    .line 325
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 326
    :catch_0
    move-exception v2

    .line 327
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Interrupted exception whilst network thread paused at WebCore\'s request. "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/net/http/q;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 332
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 352
    :catch_1
    move-exception v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 356
    :goto_4
    if-lez v2, :cond_4

    .line 358
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Ldolphin/net/c/a;->a:Ldolphin/net/http/l;

    invoke-interface {v5, v3, v2}, Ldolphin/net/http/l;->a([BI)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 374
    :cond_4
    if-eqz v4, :cond_5

    .line 375
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 379
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Ldolphin/net/c/a;->i:Ldolphin/net/c/h;

    invoke-virtual {v2}, Ldolphin/net/c/h;->a()Ldolphin/net/http/c;

    move-result-object v2

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v7}, Ldolphin/net/http/m;->c()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Ldolphin/net/http/c;->a(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Ldolphin/net/c/a;->a:Ldolphin/net/http/l;

    invoke-interface {v1}, Ldolphin/net/http/l;->a()V

    .line 381
    invoke-virtual/range {p0 .. p0}, Ldolphin/net/c/a;->f()V

    goto/16 :goto_0

    .line 302
    :cond_6
    :try_start_9
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    const-string v14, "deflate"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 303
    new-instance v5, Ljava/util/zip/InflaterInputStream;

    new-instance v13, Ljava/util/zip/Inflater;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v5, v6, v13}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    goto/16 :goto_1

    .line 352
    :catch_2
    move-exception v5

    goto :goto_4

    .line 305
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Un-supported content encoding:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldolphin/net/http/q;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v5, v6

    .line 306
    goto/16 :goto_1

    :cond_8
    move-object v5, v6

    .line 309
    goto/16 :goto_1

    .line 332
    :cond_9
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 334
    :try_start_b
    array-length v2, v4

    sub-int/2addr v2, v3

    invoke-virtual {v5, v4, v3, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_b
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result v6

    .line 336
    const/4 v2, -0x1

    if-eq v6, v2, :cond_12

    .line 337
    add-int v2, v3, v6

    .line 338
    if-eqz v10, :cond_a

    :try_start_c
    move-object/from16 v0, p0

    iget v3, v0, Ldolphin/net/c/a;->j:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Ldolphin/net/c/a;->j:I

    .line 340
    :cond_a
    :goto_6
    const/4 v3, -0x1

    if-eq v6, v3, :cond_b

    if-lt v2, v13, :cond_11

    .line 343
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Ldolphin/net/c/a;->a:Ldolphin/net/http/l;

    invoke-interface {v3, v4, v2}, Ldolphin/net/http/l;->a([BI)V
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 344
    const/4 v2, 0x0

    move v3, v2

    move v2, v6

    goto/16 :goto_2

    .line 348
    :cond_c
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-wide v2

    .line 349
    sub-long/2addr v2, v11

    .line 374
    if-eqz v5, :cond_5

    .line 375
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto/16 :goto_5

    .line 362
    :catch_3
    move-exception v5

    move-object v15, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v15

    .line 364
    :goto_7
    const/16 v6, 0xc8

    if-eq v9, v6, :cond_d

    const/16 v6, 0xce

    if-ne v9, v6, :cond_10

    .line 366
    :cond_d
    if-eqz v10, :cond_e

    if-lez v3, :cond_e

    .line 369
    :try_start_e
    move-object/from16 v0, p0

    iget-object v1, v0, Ldolphin/net/c/a;->a:Ldolphin/net/http/l;

    invoke-interface {v1, v4, v3}, Ldolphin/net/http/l;->a([BI)V

    .line 371
    :cond_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 374
    :catchall_1
    move-exception v1

    move-object v4, v5

    :goto_8
    if-eqz v4, :cond_f

    .line 375
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_f
    throw v1

    .line 374
    :cond_10
    if-eqz v5, :cond_5

    .line 375
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto/16 :goto_5

    .line 374
    :catchall_2
    move-exception v1

    goto :goto_8

    .line 362
    :catch_4
    move-exception v4

    move-object v15, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v15

    goto :goto_7

    :catch_5
    move-exception v3

    move-object v15, v3

    move v3, v2

    move-object v2, v15

    goto :goto_7

    :catch_6
    move-exception v2

    goto :goto_7

    .line 352
    :catch_7
    move-exception v4

    move-object v4, v5

    goto/16 :goto_4

    :catch_8
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_4

    :cond_11
    move v3, v2

    move v2, v6

    goto/16 :goto_2

    :cond_12
    move v2, v3

    goto :goto_6
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Ldolphin/net/c/a;->i:Ldolphin/net/c/h;

    invoke-virtual {v0}, Ldolphin/net/c/h;->a()Ldolphin/net/http/c;

    move-result-object v0

    check-cast v0, Ldolphin/net/http/r;

    check-cast v0, Ldolphin/net/http/r;

    .line 538
    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0, p1}, Ldolphin/net/http/r;->b(Z)V

    .line 541
    :cond_0
    return-void
.end method

.method c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Ldolphin/net/c/a;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    .line 410
    iget-object v1, p0, Ldolphin/net/c/a;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    .line 413
    const/16 v2, 0x50

    if-eq v1, v2, :cond_0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x1bb

    if-eq v1, v2, :cond_2

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    :cond_1
    iget-object v0, p0, Ldolphin/net/c/a;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Ldolphin/net/c/a;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Ldolphin/net/c/a;->e:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/net/c/a;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    :cond_0
    iget-object v0, p0, Ldolphin/net/c/a;->c:Ljava/lang/String;

    .line 426
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldolphin/net/c/a;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ldolphin/net/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldolphin/net/c/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method e()V
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Ldolphin/net/c/a;->b:Lorg/apache/http/message/BasicHttpRequest;

    const-string v1, "content-length"

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Ldolphin/net/c/a;->k:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 447
    :try_start_0
    iget-object v0, p0, Ldolphin/net/c/a;->k:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    iget-object v0, p0, Ldolphin/net/c/a;->k:Ljava/io/InputStream;

    iget v1, p0, Ldolphin/net/c/a;->l:I

    invoke-direct {p0, v0, v1}, Ldolphin/net/c/a;->a(Ljava/io/InputStream;I)V

    .line 455
    :cond_0
    iget v0, p0, Ldolphin/net/c/a;->j:I

    if-lez v0, :cond_1

    .line 457
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/net/c/a;->h:I

    .line 462
    iget-object v0, p0, Ldolphin/net/c/a;->b:Lorg/apache/http/message/BasicHttpRequest;

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ldolphin/net/c/a;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/message/BasicHttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_1
    return-void

    .line 448
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method f()V
    .locals 2

    .prologue
    .line 482
    iget-object v1, p0, Ldolphin/net/c/a;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    iget-object v0, p0, Ldolphin/net/c/a;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 484
    monitor-exit v1

    .line 485
    return-void

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method g()Ldolphin/net/c/d;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Ldolphin/net/c/a;->g:Ldolphin/net/c/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Ldolphin/net/c/a;->c:Ljava/lang/String;

    return-object v0
.end method
