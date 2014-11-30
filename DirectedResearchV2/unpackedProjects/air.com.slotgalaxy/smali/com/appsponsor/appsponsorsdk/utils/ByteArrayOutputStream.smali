.class public Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;
.super Ljava/io/OutputStream;


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private count:I

.field private currentBuffer:[B

.field private currentBufferIndex:I

.field private filledBufferSum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->buffers:Ljava/util/List;

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->needNewBuffer(I)V

    return-void
.end method

.method private getBuffer(I)[B
    .locals 1

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method private needNewBuffer(I)V
    .locals 3

    iget v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBufferIndex:I

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->filledBufferSum:I

    iget v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBufferIndex:I

    iget v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-direct {p0, v0}, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->filledBufferSum:I

    move v0, p1

    :goto_1
    iget v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBufferIndex:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v2, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->filledBufferSum:I

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->count:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->filledBufferSum:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBufferIndex:I

    iget v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-direct {p0, v0}, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteArray()[B
    .locals 7

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->count:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-array v1, v0, [B

    move v3, v0

    move v0, v2

    :goto_1
    iget-object v4, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-direct {p0, v0}, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v4

    array-length v5, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v2, v5

    sub-int/2addr v3, v5

    if-nez v3, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized write(Ljava/io/InputStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->count:I

    iget v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v2, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v2, v4

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    add-int/2addr v2, v0

    add-int/2addr v1, v0

    iget v3, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->count:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->count:I

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    array-length v0, v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->needNewBuffer(I)V

    move v0, v4

    :goto_1
    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v3, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized write(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->count:I

    iget v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->needNewBuffer(I)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    iget v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([BII)V
    .locals 6

    if-ltz p2, :cond_0

    array-length v0, p1

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    add-int v0, p2, p3

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    :goto_0
    return-void

    :cond_2
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->count:I

    iget v2, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v1, v2

    move v2, p3

    :cond_3
    :goto_1
    if-lez v2, :cond_4

    iget-object v3, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v4, p2, p3

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->currentBuffer:[B

    invoke-static {p1, v4, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v3

    if-lez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->needNewBuffer(I)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iput v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->count:I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->count:I

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_0
    iget-object v2, p0, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v3

    if-nez v1, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
