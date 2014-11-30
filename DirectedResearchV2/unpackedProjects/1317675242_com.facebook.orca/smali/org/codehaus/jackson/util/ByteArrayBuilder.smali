.class public final Lorg/codehaus/jackson/util/ByteArrayBuilder;
.super Ljava/io/OutputStream;
.source "ByteArrayBuilder.java"


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lorg/codehaus/jackson/util/BufferRecycler;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;I)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;)V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;I)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;I)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c:Ljava/util/LinkedList;

    .line 79
    iput-object p1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000

    .line 275
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:I

    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:I

    .line 283
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:I

    shr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 285
    if-le v0, v2, :cond_0

    move v0, v2

    .line 288
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c:Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 289
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    .line 291
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:I

    .line 90
    iput v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    .line 92
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 95
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 112
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 113
    invoke-direct {p0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c()V

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 116
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 120
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 122
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 125
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    goto :goto_0
.end method

.method public b()[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 148
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d:I

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    add-int/2addr v1, v0

    .line 150
    if-nez v1, :cond_0

    .line 151
    sget-object v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a:[B

    .line 171
    :goto_0
    return-object v0

    .line 154
    :cond_0
    new-array v2, v1, [B

    .line 157
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v6

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 158
    array-length v5, v0

    .line 159
    invoke-static {v0, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    add-int v0, v4, v5

    move v4, v0

    .line 161
    goto :goto_1

    .line 162
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    iget v3, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    invoke-static {v0, v6, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    add-int/2addr v0, v4

    .line 164
    if-eq v0, v1, :cond_2

    .line 165
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal error: total len assumed to be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", copied "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a()V

    :cond_3
    move-object v0, v2

    .line 171
    goto :goto_0
.end method

.method public c(I)V
    .locals 3

    .prologue
    .line 131
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 133
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 134
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 137
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 138
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public write(I)V
    .locals 0

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 261
    return-void
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->write([BII)V

    .line 239
    return-void
.end method

.method public write([BII)V
    .locals 5

    .prologue
    .line 245
    move v0, p3

    move v1, p2

    :goto_0
    iget-object v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    array-length v2, v2

    iget v3, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    sub-int/2addr v2, v3

    .line 246
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 247
    if-lez v2, :cond_0

    .line 248
    iget-object v3, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e:[B

    iget v4, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    add-int/2addr v1, v2

    .line 250
    iget v3, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f:I

    .line 251
    sub-int/2addr v0, v2

    .line 253
    :cond_0
    if-gtz v0, :cond_1

    .line 256
    return-void

    .line 254
    :cond_1
    invoke-direct {p0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c()V

    goto :goto_0
.end method
