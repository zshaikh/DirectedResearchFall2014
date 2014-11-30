.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 115
    const/4 v1, 0x1

    .line 116
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    .line 118
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    :try_start_1
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 121
    const/4 v3, 0x0

    .line 124
    :try_start_2
    invoke-static {v0, v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 127
    invoke-static {p0, v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;Z)V

    return-wide v1

    .line 124
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;Z)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    :catchall_1
    move-exception v0

    :goto_0
    invoke-static {p0, v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;Z)V

    throw v0

    :catchall_2
    move-exception v0

    move v1, v3

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5

    .prologue
    .line 165
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 166
    const-wide/16 v1, 0x0

    .line 168
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 169
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 175
    return-wide v1

    .line 172
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 173
    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 174
    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;J)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 654
    move-wide v0, p1

    :goto_0
    cmp-long v2, v0, v5

    if-lez v2, :cond_2

    .line 655
    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 656
    cmp-long v4, v2, v5

    if-nez v4, :cond_1

    .line 658
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 659
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 661
    :cond_0
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    .line 663
    :cond_1
    sub-long/2addr v0, v2

    goto :goto_0

    .line 666
    :cond_2
    return-void
.end method

.method public static a(Ljava/io/InputStream;[B)V
    .locals 2

    .prologue
    .line 617
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/io/ByteStreams;->a(Ljava/io/InputStream;[BII)V

    .line 618
    return-void
.end method

.method public static a(Ljava/io/InputStream;[BII)V
    .locals 1

    .prologue
    .line 636
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->b(Ljava/io/InputStream;[BII)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 637
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 639
    :cond_0
    return-void
.end method

.method public static b(Ljava/io/InputStream;[BII)I
    .locals 3

    .prologue
    .line 776
    if-gez p3, :cond_0

    .line 777
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_0
    const/4 v0, 0x0

    .line 780
    :goto_0
    if-ge v0, p3, :cond_1

    .line 781
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 782
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 787
    :cond_1
    return v0

    .line 785
    :cond_2
    add-int/2addr v0, v1

    .line 786
    goto :goto_0
.end method
