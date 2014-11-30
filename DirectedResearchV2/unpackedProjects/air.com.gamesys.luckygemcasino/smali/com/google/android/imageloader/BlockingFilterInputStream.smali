.class Lcom/google/android/imageloader/BlockingFilterInputStream;
.super Ljava/io/FilterInputStream;
.source "BlockingFilterInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    return-void
.end method


# virtual methods
.method public read([B)I
    .locals 6
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 52
    const/4 v3, 0x0

    .line 53
    .local v3, "total":I
    :goto_0
    array-length v5, p1

    if-lt v3, v5, :cond_1

    .line 62
    .end local v3    # "total":I
    :cond_0
    :goto_1
    return v3

    .line 54
    .restart local v3    # "total":I
    :cond_1
    move v1, v3

    .line 55
    .local v1, "offset":I
    array-length v5, p1

    sub-int v0, v5, v3

    .line 56
    .local v0, "count":I
    invoke-super {p0, p1, v1, v0}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v2

    .line 57
    .local v2, "read":I
    if-ne v2, v4, :cond_2

    .line 58
    if-nez v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 60
    :cond_2
    add-int/2addr v3, v2

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "total":I
    :goto_0
    if-lt v1, p3, :cond_1

    .line 47
    .end local v1    # "total":I
    :cond_0
    :goto_1
    return v1

    .line 41
    .restart local v1    # "total":I
    :cond_1
    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-super {p0, p1, v3, v4}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 42
    .local v0, "read":I
    if-ne v0, v2, :cond_2

    .line 43
    if-nez v1, :cond_0

    move v1, v2

    goto :goto_1

    .line 45
    :cond_2
    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const-wide/16 v3, 0x0

    .line 68
    .local v3, "total":J
    :goto_0
    cmp-long v5, v3, p1

    if-ltz v5, :cond_1

    .line 80
    :cond_0
    return-wide v3

    .line 69
    :cond_1
    sub-long v5, p1, v3

    invoke-super {p0, v5, v6}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v1

    .line 70
    .local v1, "skipped":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_2

    .line 71
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 72
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 75
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 78
    .end local v0    # "b":I
    :cond_2
    add-long/2addr v3, v1

    goto :goto_0
.end method
