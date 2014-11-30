.class public final Lcom/google/common/io/LimitInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitInputStream.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->b:J

    .line 46
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "limit must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 48
    iput-wide p2, p0, Lcom/google/common/io/LimitInputStream;->a:J

    .line 49
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public mark(I)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 57
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->a:J

    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->b:J

    .line 59
    return-void
.end method

.method public read()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 62
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    move v0, v4

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 67
    if-eq v0, v4, :cond_0

    .line 68
    iget-wide v1, p0, Lcom/google/common/io/LimitInputStream;->a:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/io/LimitInputStream;->a:J

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 74
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    move v0, v4

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    int-to-long v0, p3

    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 79
    iget-object v1, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 80
    if-eq v0, v4, :cond_0

    .line 81
    iget-wide v1, p0, Lcom/google/common/io/LimitInputStream;->a:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/io/LimitInputStream;->a:J

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 95
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->b:J

    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->a:J

    .line 96
    return-void
.end method

.method public skip(J)J
    .locals 4

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->a:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 100
    iget-object v2, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 101
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->a:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/io/LimitInputStream;->a:J

    .line 102
    return-wide v0
.end method
