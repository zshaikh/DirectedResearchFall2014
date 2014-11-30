.class public Lorg/c/a/c/b/f;
.super Lorg/c/a/c/a;
.source "RandomAccessFileBuffer.java"

# interfaces
.implements Lorg/c/a/c/f;


# static fields
.field static final synthetic o:Z


# instance fields
.field final l:Ljava/io/RandomAccessFile;

.field final m:Ljava/nio/channels/FileChannel;

.field final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/c/a/c/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/c/b/f;->o:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I[BII)I
    .locals 4

    .prologue
    .line 172
    iget-object v1, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 177
    iget-object v0, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :try_start_1
    monitor-exit v1

    return p4

    .line 180
    :catch_0
    move-exception v0

    .line 182
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;II)I
    .locals 7

    .prologue
    .line 190
    iget-object v6, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    monitor-enter v6

    .line 192
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/f;->m:Ljava/nio/channels/FileChannel;

    int-to-long v1, p2

    int-to-long v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit v6

    return v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(IB)V
    .locals 4

    .prologue
    .line 155
    iget-object v1, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 160
    iget-object v0, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :try_start_1
    monitor-exit v1

    .line 167
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 164
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(I[BII)I
    .locals 4

    .prologue
    .line 139
    iget-object v1, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 144
    iget-object v0, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    monitor-exit v1

    return v0

    .line 146
    :catch_0
    move-exception v0

    .line 148
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :try_start_1
    invoke-super {p0}, Lorg/c/a/c/a;->e()V

    .line 93
    iget-object v0, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 94
    monitor-exit v1

    .line 100
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h(I)B
    .locals 4

    .prologue
    .line 123
    iget-object v1, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 128
    iget-object v0, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    monitor-exit v1

    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public p()B
    .locals 6

    .prologue
    .line 106
    iget-object v1, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    monitor-enter v1

    .line 110
    :try_start_0
    iget v0, p0, Lorg/c/a/c/b/f;->c:I

    int-to-long v2, v0

    iget-object v0, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    iget v2, p0, Lorg/c/a/c/b/f;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/c/a/c/b/f;->l:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    monitor-exit v1

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 116
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public u()[B
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/c/a/c/b/f;->n:I

    return v0
.end method
