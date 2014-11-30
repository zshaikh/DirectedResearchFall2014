.class public Ldolphin/webkit/a/c/a/b;
.super Ljava/lang/Object;
.source "Base64Encoder.java"

# interfaces
.implements Ldolphin/webkit/a/c/a/c;


# instance fields
.field protected final a:[B

.field protected b:B

.field protected final c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Ldolphin/webkit/a/c/a/b;->a:[B

    .line 25
    const/16 v0, 0x3d

    iput-byte v0, p0, Ldolphin/webkit/a/c/a/b;->b:B

    .line 30
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Ldolphin/webkit/a/c/a/b;->c:[B

    .line 42
    invoke-virtual {p0}, Ldolphin/webkit/a/c/a/b;->a()V

    .line 43
    return-void

    .line 9
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


# virtual methods
.method public a([BIILjava/io/OutputStream;)I
    .locals 8

    .prologue
    .line 57
    rem-int/lit8 v1, p3, 0x3

    .line 58
    sub-int v2, p3, v1

    move v0, p2

    .line 61
    :goto_0
    add-int v3, p2, v2

    if-ge v0, v3, :cond_0

    .line 63
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    .line 64
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 65
    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 67
    iget-object v6, p0, Ldolphin/webkit/a/c/a/b;->a:[B

    ushr-int/lit8 v7, v3, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    invoke-virtual {p4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 68
    iget-object v6, p0, Ldolphin/webkit/a/c/a/b;->a:[B

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v7, v4, 0x4

    or-int/2addr v3, v7

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 69
    iget-object v3, p0, Ldolphin/webkit/a/c/a/b;->a:[B

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v6, v5, 0x6

    or-int/2addr v4, v6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 70
    iget-object v3, p0, Ldolphin/webkit/a/c/a/b;->a:[B

    and-int/lit8 v4, v5, 0x3f

    aget-byte v3, v3, v4

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 61
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 79
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 108
    :goto_1
    :pswitch_0
    div-int/lit8 v0, v2, 0x3

    mul-int/lit8 v2, v0, 0x4

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_2
    add-int/2addr v0, v2

    return v0

    .line 84
    :pswitch_1
    add-int v0, p2, v2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 85
    ushr-int/lit8 v3, v0, 0x2

    and-int/lit8 v3, v3, 0x3f

    .line 86
    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3f

    .line 88
    iget-object v4, p0, Ldolphin/webkit/a/c/a/b;->a:[B

    aget-byte v3, v4, v3

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 89
    iget-object v3, p0, Ldolphin/webkit/a/c/a/b;->a:[B

    aget-byte v0, v3, v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 90
    iget-byte v0, p0, Ldolphin/webkit/a/c/a/b;->b:B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 91
    iget-byte v0, p0, Ldolphin/webkit/a/c/a/b;->b:B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 94
    :pswitch_2
    add-int v0, p2, v2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 95
    add-int v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 97
    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    .line 98
    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v5, v3, 0x4

    or-int/2addr v0, v5

    and-int/lit8 v0, v0, 0x3f

    .line 99
    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    .line 101
    iget-object v5, p0, Ldolphin/webkit/a/c/a/b;->a:[B

    aget-byte v4, v5, v4

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    .line 102
    iget-object v4, p0, Ldolphin/webkit/a/c/a/b;->a:[B

    aget-byte v0, v4, v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 103
    iget-object v0, p0, Ldolphin/webkit/a/c/a/b;->a:[B

    aget-byte v0, v0, v3

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 104
    iget-byte v0, p0, Ldolphin/webkit/a/c/a/b;->b:B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 108
    :cond_1
    const/4 v0, 0x4

    goto :goto_2

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a()V
    .locals 4

    .prologue
    .line 34
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldolphin/webkit/a/c/a/b;->a:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 36
    iget-object v1, p0, Ldolphin/webkit/a/c/a/b;->c:[B

    iget-object v2, p0, Ldolphin/webkit/a/c/a/b;->a:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method
