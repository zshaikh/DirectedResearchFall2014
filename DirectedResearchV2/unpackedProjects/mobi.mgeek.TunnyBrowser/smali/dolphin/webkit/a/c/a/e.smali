.class public Ldolphin/webkit/a/c/a/e;
.super Ljava/lang/Object;
.source "HexEncoder.java"

# interfaces
.implements Ldolphin/webkit/a/c/a/c;


# instance fields
.field protected final a:[B

.field protected final b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Ldolphin/webkit/a/c/a/e;->a:[B

    .line 18
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Ldolphin/webkit/a/c/a/e;->b:[B

    .line 37
    invoke-virtual {p0}, Ldolphin/webkit/a/c/a/e;->a()V

    .line 38
    return-void

    .line 9
    :array_0
    .array-data 1
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method


# virtual methods
.method public a([BIILjava/io/OutputStream;)I
    .locals 4

    .prologue
    .line 52
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 54
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 56
    iget-object v2, p0, Ldolphin/webkit/a/c/a/e;->a:[B

    ushr-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 57
    iget-object v2, p0, Ldolphin/webkit/a/c/a/e;->a:[B

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, v2, v1

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    mul-int/lit8 v0, p3, 0x2

    return v0
.end method

.method protected a()V
    .locals 4

    .prologue
    .line 22
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldolphin/webkit/a/c/a/e;->a:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 24
    iget-object v1, p0, Ldolphin/webkit/a/c/a/e;->b:[B

    iget-object v2, p0, Ldolphin/webkit/a/c/a/e;->a:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/a/c/a/e;->b:[B

    const/16 v1, 0x41

    iget-object v2, p0, Ldolphin/webkit/a/c/a/e;->b:[B

    const/16 v3, 0x61

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 28
    iget-object v0, p0, Ldolphin/webkit/a/c/a/e;->b:[B

    const/16 v1, 0x42

    iget-object v2, p0, Ldolphin/webkit/a/c/a/e;->b:[B

    const/16 v3, 0x62

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 29
    iget-object v0, p0, Ldolphin/webkit/a/c/a/e;->b:[B

    const/16 v1, 0x43

    iget-object v2, p0, Ldolphin/webkit/a/c/a/e;->b:[B

    const/16 v3, 0x63

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 30
    iget-object v0, p0, Ldolphin/webkit/a/c/a/e;->b:[B

    const/16 v1, 0x44

    iget-object v2, p0, Ldolphin/webkit/a/c/a/e;->b:[B

    const/16 v3, 0x64

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 31
    iget-object v0, p0, Ldolphin/webkit/a/c/a/e;->b:[B

    const/16 v1, 0x45

    iget-object v2, p0, Ldolphin/webkit/a/c/a/e;->b:[B

    const/16 v3, 0x65

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 32
    iget-object v0, p0, Ldolphin/webkit/a/c/a/e;->b:[B

    const/16 v1, 0x46

    iget-object v2, p0, Ldolphin/webkit/a/c/a/e;->b:[B

    const/16 v3, 0x66

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 33
    return-void
.end method
