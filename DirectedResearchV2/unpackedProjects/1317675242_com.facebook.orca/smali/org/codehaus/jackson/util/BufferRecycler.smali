.class public Lorg/codehaus/jackson/util/BufferRecycler;
.super Ljava/lang/Object;
.source "BufferRecycler.java"


# instance fields
.field protected final a:[[B

.field protected final b:[[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->values()[Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->a:[[B

    .line 48
    invoke-static {}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->values()[Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->b:[[C

    .line 50
    return-void
.end method

.method private final a(I)[B
    .locals 1

    .prologue
    .line 102
    new-array v0, p1, [B

    return-object v0
.end method

.method private final b(I)[C
    .locals 1

    .prologue
    .line 107
    new-array v0, p1, [C

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->a:[[B

    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 67
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->b:[[C

    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 92
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->ordinal()I

    move-result v0

    .line 55
    iget-object v1, p0, Lorg/codehaus/jackson/util/BufferRecycler;->a:[[B

    aget-object v1, v1, v0

    .line 56
    if-nez v1, :cond_0

    .line 57
    # getter for: Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->size:I
    invoke-static {p1}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->access$000(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->a(I)[B

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/util/BufferRecycler;->a:[[B

    const/4 v3, 0x0

    aput-object v3, v2, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C
    .locals 4

    .prologue
    .line 76
    # getter for: Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->size:I
    invoke-static {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->access$100(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)I

    move-result v0

    if-le v0, p2, :cond_2

    .line 77
    # getter for: Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->size:I
    invoke-static {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->access$100(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)I

    move-result v0

    .line 79
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->ordinal()I

    move-result v1

    .line 80
    iget-object v2, p0, Lorg/codehaus/jackson/util/BufferRecycler;->b:[[C

    aget-object v2, v2, v1

    .line 81
    if-eqz v2, :cond_0

    array-length v3, v2

    if-ge v3, v0, :cond_1

    .line 82
    :cond_0
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->b(I)[C

    move-result-object v0

    .line 86
    :goto_1
    return-object v0

    .line 84
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->b:[[C

    const/4 v3, 0x0

    aput-object v3, v0, v1

    move-object v0, v2

    goto :goto_1

    :cond_2
    move v0, p2

    goto :goto_0
.end method
