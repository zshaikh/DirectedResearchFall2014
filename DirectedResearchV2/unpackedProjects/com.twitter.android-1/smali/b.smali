.class public final Lb;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:B

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lb;->a:[B

    const/16 v0, 0x3d

    iput-byte v0, p0, Lb;->b:B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lb;->c:[B

    invoke-direct {p0}, Lb;->a()V

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lb;->a:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lb;->c:[B

    iget-object v2, p0, Lb;->a:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([BIILjava/io/OutputStream;)I
    .locals 9

    const/4 v0, 0x0

    rem-int/lit8 v2, p3, 0x3

    sub-int v3, p3, v2

    move v1, v0

    :goto_0
    add-int/lit8 v4, v3, 0x0

    if-ge v1, v4, :cond_0

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    iget-object v7, p0, Lb;->a:[B

    ushr-int/lit8 v8, v4, 0x2

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    invoke-virtual {p4, v7}, Ljava/io/OutputStream;->write(I)V

    iget-object v7, p0, Lb;->a:[B

    shl-int/lit8 v4, v4, 0x4

    ushr-int/lit8 v8, v5, 0x4

    or-int/2addr v4, v8

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v7, v4

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Lb;->a:[B

    shl-int/lit8 v5, v5, 0x2

    ushr-int/lit8 v7, v6, 0x6

    or-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Lb;->a:[B

    and-int/lit8 v5, v6, 0x3f

    aget-byte v4, v4, v5

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    div-int/lit8 v1, v3, 0x3

    mul-int/lit8 v1, v1, 0x4

    if-nez v2, :cond_1

    :goto_2
    add-int/2addr v0, v1

    return v0

    :pswitch_1
    add-int/lit8 v1, v3, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    iget-object v5, p0, Lb;->a:[B

    aget-byte v4, v5, v4

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Lb;->a:[B

    aget-byte v1, v4, v1

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    iget-byte v1, p0, Lb;->b:B

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    iget-byte v1, p0, Lb;->b:B

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :pswitch_2
    add-int/lit8 v1, v3, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v3, 0x0

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v6, v4, 0x4

    or-int/2addr v1, v6

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    iget-object v6, p0, Lb;->a:[B

    aget-byte v5, v6, v5

    invoke-virtual {p4, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v5, p0, Lb;->a:[B

    aget-byte v1, v5, v1

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v1, p0, Lb;->a:[B

    aget-byte v1, v1, v4

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    iget-byte v1, p0, Lb;->b:B

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
