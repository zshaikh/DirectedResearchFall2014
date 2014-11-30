.class public final Ld;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lorg/codehaus/jackson/JsonEncoding;

.field private c:Z

.field private d:Lorg/codehaus/jackson/util/BufferRecycler;

.field private e:[B

.field private f:[B

.field private g:[C

.field private h:[C

.field private i:[C


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld;->e:[B

    iput-object v0, p0, Ld;->f:[B

    iput-object v0, p0, Ld;->g:[C

    iput-object v0, p0, Ld;->h:[C

    iput-object v0, p0, Ld;->i:[C

    iput-object p1, p0, Ld;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    iput-object p2, p0, Ld;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Ld;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ld;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonEncoding;)V
    .locals 0

    iput-object p1, p0, Ld;->b:Lorg/codehaus/jackson/JsonEncoding;

    return-void
.end method

.method public final a([B)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Ld;->e:[B

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ld;->e:[B

    iget-object v0, p0, Ld;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->a:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    :cond_1
    return-void
.end method

.method public final a([C)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Ld;->g:[C

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ld;->g:[C

    iget-object v0, p0, Ld;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->a:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    :cond_1
    return-void
.end method

.method public final b()Lorg/codehaus/jackson/JsonEncoding;
    .locals 1

    iget-object v0, p0, Ld;->b:Lorg/codehaus/jackson/JsonEncoding;

    return-object v0
.end method

.method public final b([C)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Ld;->h:[C

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ld;->h:[C

    iget-object v0, p0, Ld;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->b:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    :cond_1
    return-void
.end method

.method public final c([C)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Ld;->i:[C

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ld;->i:[C

    iget-object v0, p0, Ld;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->d:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Ld;->c:Z

    return v0
.end method

.method public final d()Lorg/codehaus/jackson/util/c;
    .locals 2

    new-instance v0, Lorg/codehaus/jackson/util/c;

    iget-object v1, p0, Ld;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/c;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    return-object v0
.end method

.method public final e()[C
    .locals 2

    iget-object v0, p0, Ld;->g:[C

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocTokenBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->a:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Ld;->g:[C

    iget-object v0, p0, Ld;->g:[C

    return-object v0
.end method

.method public final f()[C
    .locals 2

    iget-object v0, p0, Ld;->h:[C

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocConcatBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->b:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Ld;->h:[C

    iget-object v0, p0, Ld;->h:[C

    return-object v0
.end method
