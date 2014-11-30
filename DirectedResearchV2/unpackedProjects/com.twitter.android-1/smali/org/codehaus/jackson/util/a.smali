.class public final Lorg/codehaus/jackson/util/a;
.super Ljava/io/OutputStream;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lorg/codehaus/jackson/util/BufferRecycler;

.field private final c:Ljava/util/LinkedList;

.field private d:I

.field private e:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/codehaus/jackson/util/a;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/a;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/util/a;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;I)V

    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/a;->c:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/util/a;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    const/16 v0, 0x1f4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/a;->e:[B

    return-void
.end method

.method private a()V
    .locals 3

    const/high16 v0, 0x40000

    iget v1, p0, Lorg/codehaus/jackson/util/a;->d:I

    iget-object v2, p0, Lorg/codehaus/jackson/util/a;->e:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/util/a;->d:I

    iget v1, p0, Lorg/codehaus/jackson/util/a;->d:I

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lorg/codehaus/jackson/util/a;->c:Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/codehaus/jackson/util/a;->e:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/a;->e:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/util/a;->f:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final write(I)V
    .locals 3

    iget v0, p0, Lorg/codehaus/jackson/util/a;->f:I

    iget-object v1, p0, Lorg/codehaus/jackson/util/a;->e:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/codehaus/jackson/util/a;->a()V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/a;->e:[B

    iget v1, p0, Lorg/codehaus/jackson/util/a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/a;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/util/a;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/a;->e:[B

    array-length v0, v0

    iget v1, p0, Lorg/codehaus/jackson/util/a;->f:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/codehaus/jackson/util/a;->e:[B

    iget v2, p0, Lorg/codehaus/jackson/util/a;->f:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    iget v1, p0, Lorg/codehaus/jackson/util/a;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/util/a;->f:I

    sub-int/2addr p3, v0

    :cond_0
    if-lez p3, :cond_1

    invoke-direct {p0}, Lorg/codehaus/jackson/util/a;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method
