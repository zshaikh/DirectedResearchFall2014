.class public final Lr;
.super Ljava/io/InputStream;


# instance fields
.field private a:Ld;

.field private b:Ljava/io/InputStream;

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ld;Ljava/io/InputStream;[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lr;->a:Ld;

    iput-object p2, p0, Lr;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lr;->c:[B

    iput p4, p0, Lr;->d:I

    iput p5, p0, Lr;->e:I

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lr;->c:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lr;->c:[B

    iget-object v1, p0, Lr;->a:Ld;

    invoke-virtual {v1, v0}, Ld;->a([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    iget-object v0, p0, Lr;->c:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lr;->e:I

    iget v1, p0, Lr;->d:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lr;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    invoke-direct {p0}, Lr;->a()V

    iget-object v0, p0, Lr;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final mark(I)V
    .locals 1

    iget-object v0, p0, Lr;->c:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lr;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    :cond_0
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    iget-object v0, p0, Lr;->c:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lr;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final read()I
    .locals 3

    iget-object v0, p0, Lr;->c:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr;->c:[B

    iget v1, p0, Lr;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lr;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lr;->d:I

    iget v2, p0, Lr;->e:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lr;->a()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lr;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lr;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 2

    iget-object v0, p0, Lr;->c:[B

    if-eqz v0, :cond_2

    iget v0, p0, Lr;->e:I

    iget v1, p0, Lr;->d:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_0

    move p3, v0

    :cond_0
    iget-object v0, p0, Lr;->c:[B

    iget v1, p0, Lr;->d:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lr;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lr;->d:I

    iget v0, p0, Lr;->d:I

    iget v1, p0, Lr;->e:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lr;->a()V

    :cond_1
    :goto_0
    return p3

    :cond_2
    iget-object v0, p0, Lr;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    goto :goto_0
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Lr;->c:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lr;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_0
    return-void
.end method

.method public final skip(J)J
    .locals 6

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lr;->c:[B

    if-eqz v0, :cond_2

    iget v0, p0, Lr;->e:I

    iget v1, p0, Lr;->d:I

    sub-int v4, v0, v1

    int-to-long v0, v4

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    iget v0, p0, Lr;->d:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lr;->d:I

    :goto_0
    return-wide p1

    :cond_0
    invoke-direct {p0}, Lr;->a()V

    int-to-long v0, v4

    add-long/2addr v0, v2

    int-to-long v4, v4

    sub-long/2addr p1, v4

    :goto_1
    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lr;->b:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_1
    move-wide p1, v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method
