.class Lcom/android/a/a/f;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/a/c;)V
    .locals 2

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/android/a/a/f;->b:Ljava/lang/String;

    .line 381
    iget-object v0, p2, Lcom/android/a/c;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/a/a/f;->a:J

    .line 382
    iget-object v0, p2, Lcom/android/a/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/a/a/f;->c:Ljava/lang/String;

    .line 383
    iget-wide v0, p2, Lcom/android/a/c;->c:J

    iput-wide v0, p0, Lcom/android/a/a/f;->d:J

    .line 384
    iget-wide v0, p2, Lcom/android/a/c;->d:J

    iput-wide v0, p0, Lcom/android/a/a/f;->e:J

    .line 385
    iget-wide v0, p2, Lcom/android/a/c;->e:J

    iput-wide v0, p0, Lcom/android/a/a/f;->f:J

    .line 386
    iget-object v0, p2, Lcom/android/a/c;->f:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/a/a/f;->g:Ljava/util/Map;

    .line 387
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/android/a/a/f;
    .locals 3

    .prologue
    .line 395
    new-instance v0, Lcom/android/a/a/f;

    invoke-direct {v0}, Lcom/android/a/a/f;-><init>()V

    .line 396
    invoke-static {p0}, Lcom/android/a/a/d;->a(Ljava/io/InputStream;)I

    move-result v1

    .line 397
    const v2, 0x20120504

    if-eq v1, v2, :cond_0

    .line 399
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 401
    :cond_0
    invoke-static {p0}, Lcom/android/a/a/d;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/a/a/f;->b:Ljava/lang/String;

    .line 402
    invoke-static {p0}, Lcom/android/a/a/d;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/a/a/f;->c:Ljava/lang/String;

    .line 403
    iget-object v1, v0, Lcom/android/a/a/f;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/a/a/f;->c:Ljava/lang/String;

    .line 406
    :cond_1
    invoke-static {p0}, Lcom/android/a/a/d;->b(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/a/a/f;->d:J

    .line 407
    invoke-static {p0}, Lcom/android/a/a/d;->b(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/a/a/f;->e:J

    .line 408
    invoke-static {p0}, Lcom/android/a/a/d;->b(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/a/a/f;->f:J

    .line 409
    invoke-static {p0}, Lcom/android/a/a/d;->d(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/android/a/a/f;->g:Ljava/util/Map;

    .line 410
    return-object v0
.end method


# virtual methods
.method public a([B)Lcom/android/a/c;
    .locals 3

    .prologue
    .line 417
    new-instance v0, Lcom/android/a/c;

    invoke-direct {v0}, Lcom/android/a/c;-><init>()V

    .line 418
    iput-object p1, v0, Lcom/android/a/c;->a:[B

    .line 419
    iget-object v1, p0, Lcom/android/a/a/f;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/a/c;->b:Ljava/lang/String;

    .line 420
    iget-wide v1, p0, Lcom/android/a/a/f;->d:J

    iput-wide v1, v0, Lcom/android/a/c;->c:J

    .line 421
    iget-wide v1, p0, Lcom/android/a/a/f;->e:J

    iput-wide v1, v0, Lcom/android/a/c;->d:J

    .line 422
    iget-wide v1, p0, Lcom/android/a/a/f;->f:J

    iput-wide v1, v0, Lcom/android/a/c;->e:J

    .line 423
    iget-object v1, p0, Lcom/android/a/a/f;->g:Ljava/util/Map;

    iput-object v1, v0, Lcom/android/a/c;->f:Ljava/util/Map;

    .line 424
    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 433
    const v2, 0x20120504

    :try_start_0
    invoke-static {p1, v2}, Lcom/android/a/a/d;->a(Ljava/io/OutputStream;I)V

    .line 434
    iget-object v2, p0, Lcom/android/a/a/f;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/a/a/d;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/android/a/a/f;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-static {p1, v2}, Lcom/android/a/a/d;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 436
    iget-wide v2, p0, Lcom/android/a/a/f;->d:J

    invoke-static {p1, v2, v3}, Lcom/android/a/a/d;->a(Ljava/io/OutputStream;J)V

    .line 437
    iget-wide v2, p0, Lcom/android/a/a/f;->e:J

    invoke-static {p1, v2, v3}, Lcom/android/a/a/d;->a(Ljava/io/OutputStream;J)V

    .line 438
    iget-wide v2, p0, Lcom/android/a/a/f;->f:J

    invoke-static {p1, v2, v3}, Lcom/android/a/a/d;->a(Ljava/io/OutputStream;J)V

    .line 439
    iget-object v2, p0, Lcom/android/a/a/f;->g:Ljava/util/Map;

    invoke-static {v2, p1}, Lcom/android/a/a/d;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 440
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 444
    :goto_1
    return v0

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/android/a/a/f;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v2

    .line 443
    const-string v3, "%s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/android/a/ab;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 444
    goto :goto_1
.end method
