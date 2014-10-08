.class Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "LengthLimitedInputStream.java"


# instance fields
.field private remaining:J


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "maxLength"    # J

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    iput-wide p2, p0, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->remaining:J

    .line 33
    return-void
.end method

.method private remainingInt()I
    .locals 4

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->remaining:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->remainingInt()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 37
    iget-wide v1, p0, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->remaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 38
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 39
    .local v0, "v":I
    if-eq v0, v5, :cond_0

    .line 40
    iget-wide v1, p0, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->remaining:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->remaining:J

    :cond_0
    move v1, v0

    .line 44
    .end local v0    # "v":I
    :goto_0
    return v1

    :cond_1
    move v1, v5

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 61
    iget-wide v1, p0, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->remaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    move v1, v5

    .line 71
    :goto_0
    return v1

    .line 64
    :cond_0
    int-to-long v1, p3

    iget-wide v3, p0, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->remaining:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->remainingInt()I

    move-result p3

    .line 67
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 68
    .local v0, "v":I
    if-eq v0, v5, :cond_2

    .line 69
    iget-wide v1, p0, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->remaining:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->remaining:J

    :cond_2
    move v1, v0

    .line 71
    goto :goto_0
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-wide v2, p0, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->remaining:J

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, v2, v3}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 82
    .local v0, "v":J
    iget-wide v2, p0, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->remaining:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/flurry/org/apache/avro/file/LengthLimitedInputStream;->remaining:J

    .line 83
    return-wide v0
.end method
