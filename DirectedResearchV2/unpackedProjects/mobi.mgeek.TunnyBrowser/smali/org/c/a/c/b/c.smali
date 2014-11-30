.class public Lorg/c/a/c/b/c;
.super Lorg/c/a/c/a;
.source "DirectNIOBuffer.java"

# interfaces
.implements Lorg/c/a/c/b/e;


# instance fields
.field protected final l:Ljava/nio/ByteBuffer;

.field private m:Ljava/nio/channels/ReadableByteChannel;

.field private n:Ljava/io/InputStream;

.field private o:Ljava/nio/channels/WritableByteChannel;

.field private p:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/c/a/c/a;-><init>(IZ)V

    .line 51
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    .line 52
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 54
    return-void
.end method


# virtual methods
.method public a(ILorg/c/a/c/f;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-virtual {p0}, Lorg/c/a/c/b/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    invoke-interface {p2}, Lorg/c/a/c/f;->u()[B

    move-result-object v0

    .line 144
    if-eqz v0, :cond_1

    .line 146
    invoke-interface {p2}, Lorg/c/a/c/f;->h()I

    move-result v1

    invoke-interface {p2}, Lorg/c/a/c/f;->m()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/c/a/c/b/c;->a(I[BII)I

    move-result v0

    .line 179
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-interface {p2}, Lorg/c/a/c/f;->d()Lorg/c/a/c/f;

    move-result-object v0

    .line 151
    instance-of v1, v0, Lorg/c/a/c/b/c;

    if-eqz v1, :cond_2

    .line 153
    check-cast v0, Lorg/c/a/c/b/c;

    iget-object v0, v0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    .line 154
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_4

    .line 155
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v2, v0

    .line 158
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 161
    invoke-interface {p2}, Lorg/c/a/c/f;->m()I

    move-result v1

    .line 162
    if-le v1, v0, :cond_3

    .line 165
    :goto_2
    invoke-interface {p2}, Lorg/c/a/c/f;->h()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    invoke-interface {p2}, Lorg/c/a/c/f;->h()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 168
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 175
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 175
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0

    .line 179
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/c/a/c/a;->a(ILorg/c/a/c/f;)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method public a(I[BII)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-virtual {p0}, Lorg/c/a/c/b/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index<0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    add-int v0, p1, p4

    invoke-virtual {p0}, Lorg/c/a/c/b/c;->v()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 192
    invoke-virtual {p0}, Lorg/c/a/c/b/c;->v()I

    move-result v0

    sub-int v1, v0, p1

    .line 193
    if-gez v1, :cond_3

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index>capacity(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/c/a/c/b/c;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, p4

    .line 199
    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 201
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 203
    if-le v1, v0, :cond_5

    .line 205
    :goto_0
    if-lez v0, :cond_4

    .line 206
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2, p3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_4
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/io/InputStream;I)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/b/c;->n:Ljava/io/InputStream;

    if-eq p1, v0, :cond_1

    .line 227
    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    .line 228
    iput-object p1, p0, Lorg/c/a/c/b/c;->n:Ljava/io/InputStream;

    .line 231
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lorg/c/a/c/b/c;->s()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 232
    :cond_2
    invoke-virtual {p0}, Lorg/c/a/c/b/c;->s()I

    move-result p2

    .line 233
    :cond_3
    invoke-virtual {p0}, Lorg/c/a/c/b/c;->q()I

    move-result v5

    move v6, v3

    move v4, p2

    move v0, v3

    move v1, v3

    .line 239
    :goto_0
    if-ge v0, p2, :cond_4

    .line 241
    :try_start_0
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 242
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    add-int v2, v5, v4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 243
    iget-object v1, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    iget-object v2, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 244
    if-gez v1, :cond_6

    .line 246
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    .line 247
    iput-object p1, p0, Lorg/c/a/c/b/c;->n:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_4
    :goto_1
    if-gez v1, :cond_9

    if-nez v0, :cond_9

    .line 264
    const/4 v0, -0x1

    .line 276
    iget-object v1, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_5

    .line 278
    iput-object v8, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    .line 279
    iput-object p1, p0, Lorg/c/a/c/b/c;->n:Ljava/io/InputStream;

    .line 281
    :cond_5
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 282
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_2
    return v0

    .line 250
    :cond_6
    if-lez v1, :cond_8

    .line 252
    add-int/2addr v5, v1

    .line 253
    add-int v2, v0, v1

    .line 254
    sub-int v0, v4, v1

    .line 255
    :try_start_1
    invoke-virtual {p0, v5}, Lorg/c/a/c/b/c;->e(I)V

    move v4, v0

    move v0, v2

    move v2, v3

    .line 260
    :cond_7
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-lez v6, :cond_4

    move v6, v2

    goto :goto_0

    .line 258
    :cond_8
    add-int/lit8 v2, v6, 0x1

    const/4 v7, 0x1

    if-le v6, v7, :cond_7

    goto :goto_1

    .line 276
    :cond_9
    iget-object v1, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_a

    .line 278
    iput-object v8, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    .line 279
    iput-object p1, p0, Lorg/c/a/c/b/c;->n:Ljava/io/InputStream;

    .line 281
    :cond_a
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 282
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 268
    :catch_0
    move-exception v0

    .line 270
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    .line 271
    iput-object p1, p0, Lorg/c/a/c/b/c;->n:Ljava/io/InputStream;

    .line 272
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_b

    .line 278
    iput-object v8, p0, Lorg/c/a/c/b/c;->m:Ljava/nio/channels/ReadableByteChannel;

    .line 279
    iput-object p1, p0, Lorg/c/a/c/b/c;->n:Ljava/io/InputStream;

    .line 281
    :cond_b
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 282
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0
.end method

.method public a(IB)V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/c/a/c/b/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index<0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lorg/c/a/c/b/c;->v()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index>capacity(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/c/a/c/b/c;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_2
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 136
    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lorg/c/a/c/b/c;->o:Ljava/nio/channels/WritableByteChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/b/c;->o:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/b/c;->p:Ljava/io/OutputStream;

    if-eq p1, v0, :cond_1

    .line 292
    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/c/b/c;->o:Ljava/nio/channels/WritableByteChannel;

    .line 293
    iput-object p1, p0, Lorg/c/a/c/b/c;->p:Ljava/io/OutputStream;

    .line 296
    :cond_1
    iget-object v3, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    monitor-enter v3

    move v2, v1

    .line 301
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/c/a/c/b/c;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/c/a/c/b/c;->o:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/c/a/c/b/c;->h()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 304
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/c/a/c/b/c;->q()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 305
    iget-object v0, p0, Lorg/c/a/c/b/c;->o:Ljava/nio/channels/WritableByteChannel;

    iget-object v4, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 306
    if-gez v0, :cond_4

    .line 326
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/c/a/c/b/c;->o:Ljava/nio/channels/WritableByteChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/c/a/c/b/c;->o:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/c/b/c;->o:Ljava/nio/channels/WritableByteChannel;

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/c/b/c;->p:Ljava/io/OutputStream;

    .line 331
    :cond_3
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 332
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 334
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 335
    return-void

    .line 308
    :cond_4
    if-lez v0, :cond_6

    .line 310
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/c/a/c/b/c;->f(I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    :cond_5
    move v2, v0

    .line 315
    goto :goto_0

    .line 313
    :cond_6
    add-int/lit8 v0, v2, 0x1

    const/4 v4, 0x1

    if-le v2, v4, :cond_5

    goto :goto_1

    .line 318
    :catch_0
    move-exception v0

    .line 320
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lorg/c/a/c/b/c;->o:Ljava/nio/channels/WritableByteChannel;

    .line 321
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/c/b/c;->p:Ljava/io/OutputStream;

    .line 322
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 326
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lorg/c/a/c/b/c;->o:Ljava/nio/channels/WritableByteChannel;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/c/a/c/b/c;->o:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_7

    .line 328
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/c/b/c;->o:Ljava/nio/channels/WritableByteChannel;

    .line 329
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/c/b/c;->p:Ljava/io/OutputStream;

    .line 331
    :cond_7
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 332
    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0

    .line 334
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public b(I[BII)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 106
    .line 107
    add-int v1, p1, p4

    invoke-virtual {p0}, Lorg/c/a/c/b/c;->v()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 109
    invoke-virtual {p0}, Lorg/c/a/c/b/c;->v()I

    move-result v1

    sub-int/2addr v1, p1

    .line 110
    if-nez v1, :cond_2

    .line 126
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, p4

    .line 114
    :cond_2
    if-ltz v1, :cond_0

    .line 118
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2, p3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v0, v1

    .line 126
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0
.end method

.method public h(I)B
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public u()[B
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public w()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/c/a/c/b/c;->l:Ljava/nio/ByteBuffer;

    return-object v0
.end method
