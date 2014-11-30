.class Lcom/dolphin/browser/downloads/p;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/downloads/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/downloads/e;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    .line 50
    return-void
.end method

.method private a(Lcom/dolphin/browser/downloads/n;Lorg/apache/http/HttpResponse;)I
    .locals 9

    .prologue
    const/16 v8, 0x190

    const/16 v7, 0xc8

    const/16 v6, 0xc1

    const/16 v5, 0x1e

    const/4 v4, 0x5

    .line 401
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 402
    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v1, v1, Lcom/dolphin/browser/downloads/e;->j:I

    if-ge v1, v4, :cond_6

    .line 403
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "DownloadManager"

    const-string v1, "got HTTP response code 503"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    iput v6, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/dolphin/browser/downloads/n;->c:Z

    .line 408
    const-string v0, "Retry-After"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_2

    .line 411
    :try_start_0
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v1, :cond_1

    .line 412
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry-After :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->j:I

    .line 415
    iget v0, p1, Lcom/dolphin/browser/downloads/n;->j:I

    if-gez v0, :cond_3

    .line 416
    const/4 v0, 0x0

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->j:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_2
    :goto_0
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0

    .line 418
    :cond_3
    :try_start_1
    iget v0, p1, Lcom/dolphin/browser/downloads/n;->j:I

    if-ge v0, v5, :cond_5

    .line 419
    const/16 v0, 0x1e

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->j:I

    .line 423
    :cond_4
    :goto_1
    iget v0, p1, Lcom/dolphin/browser/downloads/n;->j:I

    sget-object v1, Lcom/dolphin/browser/downloads/v;->a:Ljava/util/Random;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->j:I

    .line 425
    iget v0, p1, Lcom/dolphin/browser/downloads/n;->j:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->j:I

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    goto :goto_0

    .line 420
    :cond_5
    iget v0, p1, Lcom/dolphin/browser/downloads/n;->j:I

    const v1, 0x15180

    if-le v0, v1, :cond_4

    .line 421
    const v0, 0x15180

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->j:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 433
    :cond_6
    const/16 v1, 0x12d

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_7

    const/16 v1, 0x133

    if-ne v0, v1, :cond_d

    .line 435
    :cond_7
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v1, :cond_8

    .line 436
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got HTTP redirect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_8
    iget v1, p1, Lcom/dolphin/browser/downloads/n;->k:I

    if-lt v1, v4, :cond_a

    .line 439
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v0, :cond_9

    .line 440
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too many redirects for download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v2, v2, Lcom/dolphin/browser/downloads/e;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v2, v2, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_9
    const/16 v0, 0x1f1

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 446
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0

    .line 448
    :cond_a
    const-string v1, "Location"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_d

    .line 450
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_b

    .line 451
    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_b
    :try_start_2
    new-instance v0, Ljava/net/URI;

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v2, v2, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/net/URI;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dolphin/browser/downloads/n;->l:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 468
    iget v0, p1, Lcom/dolphin/browser/downloads/n;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->k:I

    .line 469
    iput v6, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 470
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0

    .line 456
    :catch_1
    move-exception v0

    .line 457
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v0, :cond_c

    .line 458
    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t resolve redirect URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v2, v2, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_c
    iput v8, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 466
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0

    .line 474
    :cond_d
    if-eq v0, v7, :cond_12

    const/16 v1, 0xce

    if-eq v0, v1, :cond_12

    .line 476
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v1, :cond_e

    .line 477
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v3, v3, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_e
    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->b(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 483
    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 491
    :goto_2
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0

    .line 484
    :cond_f
    const/16 v1, 0x12c

    if-lt v0, v1, :cond_10

    if-ge v0, v8, :cond_10

    .line 485
    const/16 v0, 0x1ed

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    goto :goto_2

    .line 486
    :cond_10
    iget-boolean v1, p1, Lcom/dolphin/browser/downloads/n;->m:Z

    if-eqz v1, :cond_11

    if-ne v0, v7, :cond_11

    .line 487
    const/16 v0, 0x19c

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    goto :goto_2

    .line 489
    :cond_11
    const/16 v0, 0x1ee

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    goto :goto_2

    .line 493
    :cond_12
    return v0
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v0, v0, Lcom/dolphin/browser/downloads/e;->r:Ljava/lang/String;

    .line 58
    if-nez v0, :cond_0

    .line 59
    const-string v0, "AndroidDownloadManager"

    .line 61
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 890
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 891
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 892
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 893
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    .line 898
    :cond_0
    return-object p1
.end method

.method private a(Lcom/dolphin/browser/downloads/n;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4

    .prologue
    const/16 v3, 0xc1

    .line 634
    :try_start_0
    invoke-interface {p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v1, :cond_0

    .line 637
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Arg exception trying to execute request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v3, v3, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_0
    const/16 v0, 0x190

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 644
    invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 645
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0

    .line 646
    :catch_1
    move-exception v0

    .line 654
    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/v;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 655
    iput v3, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 669
    :goto_0
    invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 670
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0

    .line 656
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v1, v1, Lcom/dolphin/browser/downloads/e;->j:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 657
    iput v3, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/dolphin/browser/downloads/n;->c:Z

    goto :goto_0

    .line 660
    :cond_2
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v1, :cond_3

    .line 661
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException trying to execute request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v3, v3, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_3
    const/16 v0, 0x1ef

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    goto :goto_0
.end method

.method private a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 851
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 852
    const-string v1, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    const-string v1, "_data"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    if-eqz p7, :cond_0

    .line 855
    const-string v1, "uri"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_0
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v1, "lastmod"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 859
    const-string v1, "method"

    shl-int/lit8 v2, p4, 0x1c

    add-int/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    if-nez p2, :cond_1

    .line 861
    const-string v1, "numfailed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 868
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v3, v3, Lcom/dolphin/browser/downloads/e;->a:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 870
    return-void

    .line 862
    :cond_1
    if-eqz p5, :cond_2

    .line 863
    const-string v1, "numfailed"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 865
    :cond_2
    const-string v1, "numfailed"

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v2, v2, Lcom/dolphin/browser/downloads/e;->j:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/downloads/n;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v0, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 312
    iget v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/dolphin/browser/downloads/n;->o:Z

    if-nez v0, :cond_3

    .line 314
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    const-string v0, "delete file failed"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    .line 317
    :cond_1
    iput-object v2, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    .line 358
    :cond_2
    :goto_0
    return-void

    .line 336
    :cond_3
    iget v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/SyncFailedException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 354
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 346
    :goto_1
    :try_start_2
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 354
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 347
    :catch_1
    move-exception v0

    .line 348
    :goto_2
    :try_start_3
    const-string v1, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sync failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 354
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 349
    :catch_2
    move-exception v0

    .line 350
    :goto_3
    :try_start_4
    const-string v1, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException trying to sync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 354
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 351
    :catch_3
    move-exception v0

    .line 352
    :goto_4
    :try_start_5
    const-string v1, "DownloadManager"

    const-string v3, "exception while syncing file: "

    invoke-static {v1, v3, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 354
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_5
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 351
    :catch_4
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 349
    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 347
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 345
    :catch_7
    move-exception v0

    goto/16 :goto_1
.end method

.method private a(Lcom/dolphin/browser/downloads/n;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 498
    const/16 v0, 0xce

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 499
    :goto_0
    iget-boolean v1, p1, Lcom/dolphin/browser/downloads/n;->o:Z

    if-eq v1, v0, :cond_0

    .line 500
    iput-boolean v0, p1, Lcom/dolphin/browser/downloads/n;->o:Z

    .line 501
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 502
    const-string v2, "support_byte_range"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 503
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p1, Lcom/dolphin/browser/downloads/n;->n:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 505
    :cond_0
    return-void

    .line 498
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/downloads/n;Lcom/dolphin/browser/downloads/s;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 266
    iget-object v0, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/downloads/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const/16 v0, 0x1ec

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 269
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0

    .line 272
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 275
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_4

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    const-string v0, "delete file failed"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    .line 281
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    .line 299
    :cond_2
    :goto_0
    iget v0, p1, Lcom/dolphin/browser/downloads/n;->e:I

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->f:I

    .line 302
    iget-object v0, p1, Lcom/dolphin/browser/downloads/n;->b:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/downloads/e;->c()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "application/vnd.oma.drm.message"

    iget-object v1, p1, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 304
    invoke-direct {p0, p1}, Lcom/dolphin/browser/downloads/p;->b(Lcom/dolphin/browser/downloads/n;)V

    .line 306
    :cond_3
    return-void

    .line 282
    :cond_4
    iget-boolean v3, p1, Lcom/dolphin/browser/downloads/n;->o:Z

    if-nez v3, :cond_5

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 284
    const-string v0, "delete file failed"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :cond_5
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/dolphin/browser/downloads/n;->b:Ljava/io/FileOutputStream;

    .line 289
    long-to-int v0, v1

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->e:I

    .line 290
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v0, v0, Lcom/dolphin/browser/downloads/e;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 291
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v0, v0, Lcom/dolphin/browser/downloads/e;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dolphin/browser/downloads/s;->c:Ljava/lang/String;

    .line 293
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v0, v0, Lcom/dolphin/browser/downloads/e;->v:Ljava/lang/String;

    iput-object v0, p2, Lcom/dolphin/browser/downloads/s;->e:Ljava/lang/String;

    .line 294
    iput-boolean v5, p1, Lcom/dolphin/browser/downloads/n;->m:Z

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/downloads/n;Lcom/dolphin/browser/downloads/s;Lorg/apache/http/HttpResponse;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 509
    iget-boolean v0, p1, Lcom/dolphin/browser/downloads/n;->m:Z

    if-nez v0, :cond_f

    .line 510
    const-string v0, "Accept-Ranges"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_0

    .line 512
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dolphin/browser/downloads/s;->a:Ljava/lang/String;

    .line 514
    :cond_0
    const-string v0, "Content-Disposition"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_1

    .line 516
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dolphin/browser/downloads/s;->b:Ljava/lang/String;

    .line 518
    :cond_1
    const-string v0, "Content-Location"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_2

    .line 520
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dolphin/browser/downloads/s;->d:Ljava/lang/String;

    .line 522
    :cond_2
    iget-object v0, p1, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 523
    const-string v0, "Content-Type"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_3

    .line 525
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/downloads/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    .line 528
    :cond_3
    const-string v0, "ETag"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_4

    .line 530
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dolphin/browser/downloads/s;->e:Ljava/lang/String;

    .line 532
    :cond_4
    const-string v0, "Transfer-Encoding"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_5

    .line 534
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dolphin/browser/downloads/s;->f:Ljava/lang/String;

    .line 536
    :cond_5
    iget-object v0, p2, Lcom/dolphin/browser/downloads/s;->f:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 537
    const-string v0, "Content-Length"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 538
    if-eqz v0, :cond_6

    .line 539
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/dolphin/browser/downloads/s;->c:Ljava/lang/String;

    .line 549
    :cond_6
    :goto_0
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_7

    .line 550
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accept-Ranges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/dolphin/browser/downloads/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Disposition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/dolphin/browser/downloads/s;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/dolphin/browser/downloads/s;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/dolphin/browser/downloads/s;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ETag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/dolphin/browser/downloads/s;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer-Encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/dolphin/browser/downloads/s;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v1, v1, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v2, v2, Lcom/dolphin/browser/downloads/e;->d:Ljava/lang/String;

    iget-object v3, p2, Lcom/dolphin/browser/downloads/s;->b:Ljava/lang/String;

    iget-object v4, p2, Lcom/dolphin/browser/downloads/s;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    iget-object v6, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    invoke-virtual {v6}, Lcom/dolphin/browser/downloads/e;->c()I

    move-result v6

    iget-object v7, p2, Lcom/dolphin/browser/downloads/s;->c:Ljava/lang/String;

    if-eqz v7, :cond_9

    iget-object v7, p2, Lcom/dolphin/browser/downloads/s;->c:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_1
    iget-object v8, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v8, v8, Lcom/dolphin/browser/downloads/e;->A:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/dolphin/browser/downloads/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/dolphin/browser/downloads/d;

    move-result-object v0

    .line 569
    iget-object v1, v0, Lcom/dolphin/browser/downloads/d;->a:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 570
    iget v0, v0, Lcom/dolphin/browser/downloads/d;->c:I

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 571
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0

    .line 544
    :cond_8
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_6

    .line 545
    const-string v0, "DownloadManager"

    const-string v1, "ignoring content-length because of xfer-encoding"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 558
    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    .line 573
    :cond_a
    iget-object v1, v0, Lcom/dolphin/browser/downloads/d;->a:Ljava/lang/String;

    iput-object v1, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    .line 574
    iget-object v0, v0, Lcom/dolphin/browser/downloads/d;->b:Ljava/io/FileOutputStream;

    iput-object v0, p1, Lcom/dolphin/browser/downloads/n;->b:Ljava/io/FileOutputStream;

    .line 576
    iget-object v0, p1, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    .line 577
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v0, :cond_b

    .line 578
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v2, v2, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_b
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 582
    const-string v0, "_data"

    iget-object v2, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v0, "hint"

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v0, p2, Lcom/dolphin/browser/downloads/s;->e:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 586
    const-string v0, "etag"

    iget-object v2, p2, Lcom/dolphin/browser/downloads/s;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_c
    iget-object v0, p1, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 589
    const-string v0, "mimetype"

    iget-object v2, p1, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_d
    const/4 v0, -0x1

    .line 592
    iget-object v2, p2, Lcom/dolphin/browser/downloads/s;->c:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 593
    iget-object v0, p2, Lcom/dolphin/browser/downloads/s;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 595
    :cond_e
    const-string v2, "total_bytes"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 596
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p1, Lcom/dolphin/browser/downloads/n;->n:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 598
    :cond_f
    return-void
.end method

.method private a(Lcom/dolphin/browser/downloads/n;Lcom/dolphin/browser/downloads/s;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpHead;)V
    .locals 4

    .prologue
    .line 231
    iget-boolean v0, p1, Lcom/dolphin/browser/downloads/n;->m:Z

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p2, Lcom/dolphin/browser/downloads/s;->e:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p4}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;Ljava/lang/String;Lorg/apache/http/HttpRequest;)V

    .line 236
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/dolphin/browser/downloads/n;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-direct {p0, p1, p3, p4}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 238
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;Lorg/apache/http/HttpResponse;)I

    move-result v1

    .line 239
    const/4 v2, 0x0

    .line 241
    const/16 v3, 0x195

    if-ne v3, v1, :cond_2

    .line 242
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p4}, Lorg/apache/http/client/methods/HttpHead;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Lcom/dolphin/browser/downloads/w; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    :try_start_1
    invoke-direct {p0, p1, p3, v1}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 244
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;Lorg/apache/http/HttpResponse;)I

    move-result v0

    .line 245
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;I)V
    :try_end_1
    .catch Lcom/dolphin/browser/downloads/w; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 257
    :goto_1
    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_0

    .line 247
    :cond_2
    :try_start_2
    const-string v1, "Accept-Ranges"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    const/16 v0, 0xce

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;I)V
    :try_end_2
    .catch Lcom/dolphin/browser/downloads/w; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 254
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 255
    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_3

    .line 258
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_3
    throw v0

    .line 251
    :cond_4
    const/16 v0, 0xc8

    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;I)V
    :try_end_4
    .catch Lcom/dolphin/browser/downloads/w; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 257
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 254
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private a(Lcom/dolphin/browser/downloads/n;Lcom/dolphin/browser/downloads/s;Lorg/apache/http/client/HttpClient;[BLorg/apache/http/client/methods/HttpGet;)V
    .locals 4

    .prologue
    .line 378
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v0, :cond_0

    .line 379
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiating download for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v2, v2, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    iget-object v0, p2, Lcom/dolphin/browser/downloads/s;->e:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p5}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;Ljava/lang/String;Lorg/apache/http/HttpRequest;)V

    .line 384
    invoke-direct {p0, p1, p3, p5}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 385
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;Lorg/apache/http/HttpResponse;)I

    .line 387
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v1, :cond_1

    .line 388
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received response for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v3, v3, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;Lcom/dolphin/browser/downloads/s;Lorg/apache/http/HttpResponse;)V

    .line 392
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/downloads/p;->b(Lcom/dolphin/browser/downloads/n;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v0

    .line 393
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;Lcom/dolphin/browser/downloads/s;[BLjava/io/InputStream;)V

    .line 394
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v0, :cond_2

    .line 395
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download completed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v2, v2, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2
    const/16 v0, 0xc8

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 398
    return-void
.end method

.method private a(Lcom/dolphin/browser/downloads/n;Lcom/dolphin/browser/downloads/s;[BLjava/io/InputStream;)V
    .locals 10

    .prologue
    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/dolphin/browser/downloads/n;->g:J

    .line 681
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 710
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 711
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 712
    const-string v1, "current_bytes"

    iget v2, p1, Lcom/dolphin/browser/downloads/n;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 713
    iget-object v1, p2, Lcom/dolphin/browser/downloads/s;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 714
    const-string v1, "total_bytes"

    iget v2, p1, Lcom/dolphin/browser/downloads/n;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 716
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcom/dolphin/browser/downloads/n;->n:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 717
    iget-object v0, p2, Lcom/dolphin/browser/downloads/s;->c:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget v0, p1, Lcom/dolphin/browser/downloads/n;->e:I

    iget-object v1, p2, Lcom/dolphin/browser/downloads/s;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_e

    .line 719
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/downloads/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 720
    const/16 v0, 0xc1

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 733
    :goto_1
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0

    .line 682
    :catch_0
    move-exception v0

    .line 690
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 691
    const-string v2, "current_bytes"

    iget v3, p1, Lcom/dolphin/browser/downloads/n;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcom/dolphin/browser/downloads/n;->n:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 693
    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/v;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 694
    const/16 v0, 0xc1

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 708
    :goto_2
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0

    .line 695
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v1, v1, Lcom/dolphin/browser/downloads/e;->j:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    .line 696
    const/16 v0, 0xc1

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/dolphin/browser/downloads/n;->c:Z

    goto :goto_2

    .line 699
    :cond_3
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v1, :cond_4

    .line 700
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download IOException for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v3, v3, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_4
    const/16 v0, 0x1ef

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    goto :goto_2

    .line 721
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v0, v0, Lcom/dolphin/browser/downloads/e;->j:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_6

    .line 722
    const/16 v0, 0xc1

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/dolphin/browser/downloads/n;->c:Z

    goto/16 :goto_1

    .line 725
    :cond_6
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v0, :cond_7

    .line 726
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closed socket for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v2, v2, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_7
    const/16 v0, 0x1ef

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    goto/16 :goto_1

    .line 737
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/dolphin/browser/downloads/n;->d:Z

    .line 739
    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    monitor-enter v1

    .line 740
    :try_start_1
    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v2, v2, Lcom/dolphin/browser/downloads/e;->h:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 741
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v0, :cond_9

    .line 742
    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v3, v3, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 746
    const-string v2, "speed"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 747
    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcom/dolphin/browser/downloads/n;->n:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 748
    const/16 v0, 0xc1

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 749
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 752
    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v1, v1, Lcom/dolphin/browser/downloads/e;->i:I

    const/16 v2, 0x1ea

    if-ne v1, v2, :cond_c

    .line 753
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v0, :cond_b

    .line 754
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canceled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v2, v2, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 760
    const-string v1, "speed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcom/dolphin/browser/downloads/n;->n:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 762
    const/16 v0, 0x1ea

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 763
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0

    .line 766
    :cond_c
    invoke-direct {p0, p1, p3, v0}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;[BI)V

    .line 767
    iget v1, p1, Lcom/dolphin/browser/downloads/n;->e:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->e:I

    .line 768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 769
    iget v2, p1, Lcom/dolphin/browser/downloads/n;->e:I

    iget v3, p1, Lcom/dolphin/browser/downloads/n;->f:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 770
    iget-wide v4, p1, Lcom/dolphin/browser/downloads/n;->g:J

    sub-long v4, v0, v4

    .line 771
    const-wide/16 v6, 0x1000

    cmp-long v6, v2, v6

    if-lez v6, :cond_d

    const-wide/16 v6, 0x5dc

    cmp-long v6, v4, v6

    if-lez v6, :cond_d

    .line 772
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 773
    const-string v7, "current_bytes"

    iget v8, p1, Lcom/dolphin/browser/downloads/n;->e:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    const-string v7, "speed"

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 775
    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcom/dolphin/browser/downloads/n;->n:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 776
    iget v2, p1, Lcom/dolphin/browser/downloads/n;->e:I

    iput v2, p1, Lcom/dolphin/browser/downloads/n;->f:I

    .line 777
    iput-wide v0, p1, Lcom/dolphin/browser/downloads/n;->g:J

    .line 780
    :cond_d
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_0

    .line 781
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/dolphin/browser/downloads/n;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v2, v2, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 784
    :cond_e
    return-void
.end method

.method private a(Lcom/dolphin/browser/downloads/n;Ljava/lang/String;Lorg/apache/http/HttpRequest;)V
    .locals 3

    .prologue
    .line 820
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v0, v0, Lcom/dolphin/browser/downloads/e;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 821
    const-string v0, "Cookie"

    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v1, v1, Lcom/dolphin/browser/downloads/e;->q:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v0, v0, Lcom/dolphin/browser/downloads/e;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 824
    const-string v0, "Referer"

    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v1, v1, Lcom/dolphin/browser/downloads/e;->s:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :cond_1
    iget-boolean v0, p1, Lcom/dolphin/browser/downloads/n;->m:Z

    if-eqz v0, :cond_3

    .line 827
    if-eqz p2, :cond_2

    .line 828
    const-string v0, "If-Match"

    invoke-interface {p3, v0, p2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_2
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/dolphin/browser/downloads/n;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :cond_3
    return-void
.end method

.method private a(Lcom/dolphin/browser/downloads/n;[BI)V
    .locals 4

    .prologue
    .line 789
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/downloads/n;->b:Ljava/io/FileOutputStream;

    if-nez v0, :cond_1

    .line 790
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/dolphin/browser/downloads/n;->b:Ljava/io/FileOutputStream;

    .line 792
    :cond_1
    iget-object v0, p1, Lcom/dolphin/browser/downloads/n;->b:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 793
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/downloads/e;->c()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/vnd.oma.drm.message"

    iget-object v1, p1, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 797
    :try_start_1
    iget-object v0, p1, Lcom/dolphin/browser/downloads/n;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 798
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/dolphin/browser/downloads/n;->b:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 816
    :cond_2
    :goto_0
    return-void

    .line 799
    :catch_0
    move-exception v0

    .line 800
    :try_start_2
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v1, :cond_2

    .line 801
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception when closing the file during download : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 809
    :catch_1
    move-exception v0

    .line 810
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    const-wide/16 v1, 0x1000

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/downloads/v;->a(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    const/16 v0, 0x1ec

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 812
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0
.end method

.method private b(Lcom/dolphin/browser/downloads/n;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 4

    .prologue
    const/16 v3, 0xc1

    .line 603
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 604
    :catch_0
    move-exception v0

    .line 612
    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/downloads/v;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    iput v3, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 627
    :goto_0
    new-instance v0, Lcom/dolphin/browser/downloads/w;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/w;-><init>()V

    throw v0

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v1, v1, Lcom/dolphin/browser/downloads/e;->j:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 615
    iput v3, p1, Lcom/dolphin/browser/downloads/n;->a:I

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/dolphin/browser/downloads/n;->c:Z

    goto :goto_0

    .line 618
    :cond_1
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v1, :cond_2

    .line 619
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException getting entity for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v3, v3, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_2
    const/16 v0, 0x1ef

    iput v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    goto :goto_0
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 87
    const-string v0, "DownloadThread"

    const-string v1, "processHttpScheme"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v1, Lcom/dolphin/browser/downloads/n;

    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/downloads/n;-><init>(Lcom/dolphin/browser/downloads/e;)V

    .line 94
    :try_start_0
    new-instance v2, Lcom/dolphin/browser/downloads/s;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/dolphin/browser/downloads/s;-><init>(Lcom/dolphin/browser/downloads/q;)V

    .line 95
    const/16 v0, 0x1000

    new-array v4, v0, [B

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 98
    const/4 v5, 0x1

    const-string v6, "DownloadManager"

    invoke-virtual {v0, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Lcom/dolphin/browser/downloads/w; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v6

    .line 99
    :try_start_1
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 101
    invoke-direct {p0, v1, v2}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;Lcom/dolphin/browser/downloads/s;)V

    move v0, v7

    .line 110
    :goto_0
    if-nez v0, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/p;->a()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Downloads"

    invoke-static {v0, v5}, Lcom/dolphin/browser/test/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 112
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v0, v0, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    iget-object v9, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v9, v9, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-direct {v0, v9}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/dolphin/browser/downloads/w; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 116
    :try_start_2
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;Lcom/dolphin/browser/downloads/s;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpHead;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move-object v0, p0

    .line 122
    :try_start_3
    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;Lcom/dolphin/browser/downloads/s;Lorg/apache/http/client/HttpClient;[BLorg/apache/http/client/methods/HttpGet;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    :try_start_4
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_4
    .catch Lcom/dolphin/browser/downloads/w; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v0, v8

    .line 128
    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 126
    throw v0
    :try_end_6
    .catch Lcom/dolphin/browser/downloads/w; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 129
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 154
    :goto_2
    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iput-boolean v7, v2, Lcom/dolphin/browser/downloads/e;->B:Z

    .line 156
    if-eqz v0, :cond_0

    :try_start_7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 163
    :cond_0
    :goto_3
    invoke-static {v3}, Lcom/dolphin/browser/test/a/a;->a(Lorg/apache/http/client/HttpClient;)V

    .line 165
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->b(Lcom/dolphin/browser/downloads/n;)V

    .line 166
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;)V

    .line 167
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->c(Lcom/dolphin/browser/downloads/n;)V

    .line 169
    :goto_4
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iput-boolean v7, v0, Lcom/dolphin/browser/downloads/e;->B:Z

    .line 156
    if-eqz v6, :cond_2

    :try_start_8
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 163
    :cond_2
    :goto_5
    invoke-static {v3}, Lcom/dolphin/browser/test/a/a;->a(Lorg/apache/http/client/HttpClient;)V

    .line 165
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->b(Lcom/dolphin/browser/downloads/n;)V

    .line 166
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;)V

    .line 167
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->c(Lcom/dolphin/browser/downloads/n;)V

    goto :goto_4

    .line 159
    :catch_1
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 159
    :catch_2
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 131
    :catch_3
    move-exception v0

    move-object v6, v3

    .line 136
    :goto_6
    const/16 v0, 0x190

    :try_start_9
    iput v0, v1, Lcom/dolphin/browser/downloads/n;->a:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iput-boolean v7, v0, Lcom/dolphin/browser/downloads/e;->B:Z

    .line 156
    if-eqz v6, :cond_3

    :try_start_a
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 163
    :cond_3
    :goto_7
    invoke-static {v3}, Lcom/dolphin/browser/test/a/a;->a(Lorg/apache/http/client/HttpClient;)V

    .line 165
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->b(Lcom/dolphin/browser/downloads/n;)V

    .line 166
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;)V

    .line 167
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->c(Lcom/dolphin/browser/downloads/n;)V

    goto :goto_4

    .line 159
    :catch_4
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 137
    :catch_5
    move-exception v0

    move-object v6, v3

    .line 142
    :goto_8
    const/16 v0, 0x1ec

    :try_start_b
    iput v0, v1, Lcom/dolphin/browser/downloads/n;->a:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iput-boolean v7, v0, Lcom/dolphin/browser/downloads/e;->B:Z

    .line 156
    if-eqz v6, :cond_4

    :try_start_c
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    .line 163
    :cond_4
    :goto_9
    invoke-static {v3}, Lcom/dolphin/browser/test/a/a;->a(Lorg/apache/http/client/HttpClient;)V

    .line 165
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->b(Lcom/dolphin/browser/downloads/n;)V

    .line 166
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;)V

    .line 167
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->c(Lcom/dolphin/browser/downloads/n;)V

    goto :goto_4

    .line 159
    :catch_6
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 144
    :catch_7
    move-exception v0

    move-object v6, v3

    .line 146
    :goto_a
    :try_start_d
    sget-boolean v2, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v2, :cond_5

    .line 147
    const-string v2, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v5, v5, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_5
    const/16 v0, 0x1eb

    iput v0, v1, Lcom/dolphin/browser/downloads/n;->a:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iput-boolean v7, v0, Lcom/dolphin/browser/downloads/e;->B:Z

    .line 156
    if-eqz v6, :cond_6

    :try_start_e
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    .line 163
    :cond_6
    :goto_b
    invoke-static {v3}, Lcom/dolphin/browser/test/a/a;->a(Lorg/apache/http/client/HttpClient;)V

    .line 165
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->b(Lcom/dolphin/browser/downloads/n;)V

    .line 166
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;)V

    .line 167
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->c(Lcom/dolphin/browser/downloads/n;)V

    goto/16 :goto_4

    .line 159
    :catch_8
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 154
    :catchall_2
    move-exception v0

    move-object v6, v3

    :goto_c
    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iput-boolean v7, v2, Lcom/dolphin/browser/downloads/e;->B:Z

    .line 156
    if-eqz v6, :cond_7

    :try_start_f
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 157
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    .line 163
    :cond_7
    :goto_d
    invoke-static {v3}, Lcom/dolphin/browser/test/a/a;->a(Lorg/apache/http/client/HttpClient;)V

    .line 165
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->b(Lcom/dolphin/browser/downloads/n;)V

    .line 166
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;)V

    .line 167
    invoke-direct {p0, v1}, Lcom/dolphin/browser/downloads/p;->c(Lcom/dolphin/browser/downloads/n;)V

    throw v0

    .line 159
    :catch_9
    move-exception v2

    .line 160
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 117
    :catch_a
    move-exception v0

    goto/16 :goto_1

    .line 154
    :catchall_3
    move-exception v0

    goto :goto_c

    .line 144
    :catch_b
    move-exception v0

    goto :goto_a

    .line 137
    :catch_c
    move-exception v0

    goto/16 :goto_8

    .line 131
    :catch_d
    move-exception v0

    goto/16 :goto_6

    .line 129
    :catch_e
    move-exception v0

    move-object v0, v3

    goto/16 :goto_2
.end method

.method private b(Lcom/dolphin/browser/downloads/n;)V
    .locals 4

    .prologue
    .line 364
    :try_start_0
    iget-object v0, p1, Lcom/dolphin/browser/downloads/n;->b:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p1, Lcom/dolphin/browser/downloads/n;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/dolphin/browser/downloads/n;->b:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v1, :cond_0

    .line 370
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception when closing the file after download : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 172
    const-string v0, "DownloadThread"

    const-string v1, "processDataScheme"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v9, Lcom/dolphin/browser/downloads/n;

    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    invoke-direct {v9, v0}, Lcom/dolphin/browser/downloads/n;-><init>(Lcom/dolphin/browser/downloads/e;)V

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v1, v1, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v2, v2, Lcom/dolphin/browser/downloads/e;->d:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    iget-object v6, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    invoke-virtual {v6}, Lcom/dolphin/browser/downloads/e;->c()I

    move-result v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v8, v8, Lcom/dolphin/browser/downloads/e;->A:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/dolphin/browser/downloads/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/dolphin/browser/downloads/d;

    move-result-object v0

    .line 185
    iget-object v1, v0, Lcom/dolphin/browser/downloads/d;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 186
    iget v0, v0, Lcom/dolphin/browser/downloads/d;->c:I

    iput v0, v9, Lcom/dolphin/browser/downloads/n;->a:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :goto_0
    sget-object v0, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v1, v1, Lcom/dolphin/browser/downloads/e;->a:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 204
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 205
    const-string v2, "status"

    iget v3, v9, Lcom/dolphin/browser/downloads/n;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v2, "_data"

    iget-object v3, v9, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v2, v9, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    const-string v2, "total_bytes"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    :goto_1
    const-string v2, "mimetype"

    iget-object v3, v9, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iput-boolean v10, v0, Lcom/dolphin/browser/downloads/e;->B:Z

    .line 223
    invoke-direct {p0, v9}, Lcom/dolphin/browser/downloads/p;->b(Lcom/dolphin/browser/downloads/n;)V

    .line 224
    invoke-direct {p0, v9}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;)V

    .line 225
    invoke-direct {p0, v9}, Lcom/dolphin/browser/downloads/p;->c(Lcom/dolphin/browser/downloads/n;)V

    .line 227
    :goto_2
    return-void

    .line 188
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/dolphin/browser/downloads/d;->a:Ljava/lang/String;

    iput-object v1, v9, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    .line 189
    iget-object v0, v0, Lcom/dolphin/browser/downloads/d;->b:Ljava/io/FileOutputStream;

    iput-object v0, v9, Lcom/dolphin/browser/downloads/n;->b:Ljava/io/FileOutputStream;

    .line 190
    iget-object v0, v9, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    iget-object v1, v9, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/downloads/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v0, v0, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v1, v1, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    const-string v2, "base64,"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lcom/dolphin/browser/downloads/n;->b:Ljava/io/FileOutputStream;

    invoke-static {v0, v1}, Lcom/dolphin/browser/downloads/v;->a(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v0

    .line 193
    if-eqz v0, :cond_1

    .line 194
    const/16 v0, 0xc8

    iput v0, v9, Lcom/dolphin/browser/downloads/n;->a:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const/16 v0, 0x1ec

    :try_start_2
    iput v0, v9, Lcom/dolphin/browser/downloads/n;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    sget-object v0, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v1, v1, Lcom/dolphin/browser/downloads/e;->a:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 204
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 205
    const-string v2, "status"

    iget v3, v9, Lcom/dolphin/browser/downloads/n;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v2, "_data"

    iget-object v3, v9, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v2, v9, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 208
    const-string v2, "total_bytes"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    :goto_3
    const-string v2, "mimetype"

    iget-object v3, v9, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iput-boolean v10, v0, Lcom/dolphin/browser/downloads/e;->B:Z

    .line 223
    invoke-direct {p0, v9}, Lcom/dolphin/browser/downloads/p;->b(Lcom/dolphin/browser/downloads/n;)V

    .line 224
    invoke-direct {p0, v9}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;)V

    .line 225
    invoke-direct {p0, v9}, Lcom/dolphin/browser/downloads/p;->c(Lcom/dolphin/browser/downloads/n;)V

    goto/16 :goto_2

    .line 196
    :cond_1
    const/16 v0, 0x1eb

    :try_start_3
    iput v0, v9, Lcom/dolphin/browser/downloads/n;->a:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 203
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v2, v2, Lcom/dolphin/browser/downloads/e;->a:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 204
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 205
    const-string v3, "status"

    iget v4, v9, Lcom/dolphin/browser/downloads/n;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v3, "_data"

    iget-object v4, v9, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v3, v9, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 208
    const-string v3, "total_bytes"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    :goto_4
    const-string v3, "mimetype"

    iget-object v4, v9, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iput-boolean v10, v1, Lcom/dolphin/browser/downloads/e;->B:Z

    .line 223
    invoke-direct {p0, v9}, Lcom/dolphin/browser/downloads/p;->b(Lcom/dolphin/browser/downloads/n;)V

    .line 224
    invoke-direct {p0, v9}, Lcom/dolphin/browser/downloads/p;->a(Lcom/dolphin/browser/downloads/n;)V

    .line 225
    invoke-direct {p0, v9}, Lcom/dolphin/browser/downloads/p;->c(Lcom/dolphin/browser/downloads/n;)V

    .line 226
    throw v0

    .line 211
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v3, v9, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    const-string v2, "total_bytes"

    new-instance v3, Ljava/io/File;

    iget-object v4, v9, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/dolphin/browser/downloads/u;->a(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 216
    :cond_3
    const-string v2, "total_bytes"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 211
    :cond_4
    new-instance v2, Ljava/io/File;

    iget-object v3, v9, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 213
    const-string v2, "total_bytes"

    new-instance v3, Ljava/io/File;

    iget-object v4, v9, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/dolphin/browser/downloads/u;->a(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 216
    :cond_5
    const-string v2, "total_bytes"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 211
    :cond_6
    new-instance v3, Ljava/io/File;

    iget-object v4, v9, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 213
    const-string v3, "total_bytes"

    new-instance v4, Ljava/io/File;

    iget-object v5, v9, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/dolphin/browser/downloads/u;->a(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 216
    :cond_7
    const-string v3, "total_bytes"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4
.end method

.method private c(Lcom/dolphin/browser/downloads/n;)V
    .locals 9

    .prologue
    .line 840
    iget v1, p1, Lcom/dolphin/browser/downloads/n;->a:I

    iget-boolean v2, p1, Lcom/dolphin/browser/downloads/n;->c:Z

    iget v3, p1, Lcom/dolphin/browser/downloads/n;->j:I

    iget v4, p1, Lcom/dolphin/browser/downloads/n;->k:I

    iget-boolean v5, p1, Lcom/dolphin/browser/downloads/n;->d:Z

    iget-object v6, p1, Lcom/dolphin/browser/downloads/n;->h:Ljava/lang/String;

    iget-object v7, p1, Lcom/dolphin/browser/downloads/n;->l:Ljava/lang/String;

    iget-object v8, p1, Lcom/dolphin/browser/downloads/n;->i:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/dolphin/browser/downloads/p;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget v0, p1, Lcom/dolphin/browser/downloads/n;->a:I

    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    invoke-static {}, Lcom/dolphin/browser/downloads/o;->f()Lcom/dolphin/browser/downloads/o;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/downloads/o;->a(Lcom/dolphin/browser/downloads/n;Lcom/dolphin/browser/downloads/e;)V

    .line 845
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/p;->d()V

    .line 847
    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget v1, v1, Lcom/dolphin/browser/downloads/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 880
    iget-object v1, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v2, p0, Lcom/dolphin/browser/downloads/p;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/downloads/e;->a(Landroid/net/Uri;Landroid/content/Context;)V

    .line 881
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/downloads/p;->b:Lcom/dolphin/browser/downloads/e;

    iget-object v0, v0, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/p;->c()V

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/p;->b()V

    goto :goto_0
.end method
