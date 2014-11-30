.class Lcom/b/a/b/g;
.super Ljava/io/FilterOutputStream;
.source "BoxFileUpload.java"


# instance fields
.field private final a:Lcom/b/a/b/h;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/b/a/b/h;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 386
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 375
    iput-wide v0, p0, Lcom/b/a/b/g;->c:J

    .line 387
    iput-object p2, p0, Lcom/b/a/b/g;->a:Lcom/b/a/b/h;

    .line 388
    iput-wide v0, p0, Lcom/b/a/b/g;->b:J

    .line 389
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/b/a/b/g;->b:J

    return-wide v0
.end method

.method public write([BII)V
    .locals 6

    .prologue
    .line 393
    iget-object v0, p0, Lcom/b/a/b/g;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 394
    iget-wide v0, p0, Lcom/b/a/b/g;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/a/b/g;->b:J

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 396
    iget-object v2, p0, Lcom/b/a/b/g;->a:Lcom/b/a/b/h;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/b/a/b/g;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 397
    iput-wide v0, p0, Lcom/b/a/b/g;->c:J

    .line 398
    iget-object v0, p0, Lcom/b/a/b/g;->a:Lcom/b/a/b/h;

    iget-wide v1, p0, Lcom/b/a/b/g;->b:J

    invoke-interface {v0, v1, v2}, Lcom/b/a/b/h;->a(J)V

    .line 401
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    new-instance v0, Ljava/io/IOException;

    const-string v1, "upload_cancelled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_1
    return-void
.end method
