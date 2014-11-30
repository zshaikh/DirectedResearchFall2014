.class public final Lcom/mobosquare/sdk/subscription/c/a;
.super Ljava/lang/Object;
.source "BitUtil.java"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static c:[I

.field private static d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mobosquare/sdk/subscription/c/a;->a:[B

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mobosquare/sdk/subscription/c/a;->b:[B

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mobosquare/sdk/subscription/c/a;->c:[I

    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mobosquare/sdk/subscription/c/a;->d:[I

    .line 24
    return-void

    .line 29
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    .line 33
    nop

    :array_1
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data

    .line 35
    :array_2
    .array-data 4
        0xff
        0x7f
        0x3f
        0x1f
        0xf
        0x7
        0x3
        0x1
    .end array-data

    .line 36
    :array_3
    .array-data 4
        0xffff
        0x7fff
        0x3fff
        0x1fff
        0xfff
        0x7ff
        0x3ff
        0x1ff
        0xff
        0x7f
        0x3f
        0x1f
        0xf
        0x7
        0x3
        0x1
    .end array-data
.end method

.method public static final a(J)[B
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 95
    new-array v0, v4, [B

    const/4 v1, 0x0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 96
    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 95
    return-object v0
.end method
