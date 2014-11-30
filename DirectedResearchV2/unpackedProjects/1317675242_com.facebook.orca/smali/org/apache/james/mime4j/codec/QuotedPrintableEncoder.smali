.class final Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;
.super Ljava/lang/Object;
.source "QuotedPrintableEncoder.java"


# static fields
.field private static final a:[B


# instance fields
.field private final b:[B

.field private final c:[B

.field private final d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->a:[B

    return-void

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
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->b:[B

    .line 51
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c:[B

    .line 52
    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->i:I

    .line 53
    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->h:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->j:Ljava/io/OutputStream;

    .line 55
    iput-boolean p2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->d:Z

    .line 56
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->e:Z

    .line 57
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->f:Z

    .line 58
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->g:Z

    .line 59
    return-void
.end method

.method private a(B)V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/16 v2, 0x20

    const/4 v1, 0x1

    .line 107
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    .line 108
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->d:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c()V

    .line 110
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c(B)V

    .line 157
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->g:Z

    if-eqz v0, :cond_3

    .line 115
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->e:Z

    if-eqz v0, :cond_2

    .line 116
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c(B)V

    .line 120
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->f()V

    .line 121
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->d()V

    goto :goto_0

    .line 117
    :cond_2
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->f:Z

    if-eqz v0, :cond_1

    .line 118
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c(B)V

    goto :goto_1

    .line 123
    :cond_3
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c()V

    .line 124
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->b(B)V

    goto :goto_0

    .line 127
    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_6

    .line 128
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->d:Z

    if-eqz v0, :cond_5

    .line 129
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c(B)V

    goto :goto_0

    .line 131
    :cond_5
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->g:Z

    goto :goto_0

    .line 134
    :cond_6
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c()V

    .line 135
    if-ne p1, v2, :cond_8

    .line 136
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->d:Z

    if-eqz v0, :cond_7

    .line 137
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c(B)V

    goto :goto_0

    .line 139
    :cond_7
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->e:Z

    goto :goto_0

    .line 141
    :cond_8
    if-ne p1, v3, :cond_a

    .line 142
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->d:Z

    if-eqz v0, :cond_9

    .line 143
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c(B)V

    goto :goto_0

    .line 145
    :cond_9
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->f:Z

    goto :goto_0

    .line 147
    :cond_a
    if-ge p1, v2, :cond_b

    .line 148
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c(B)V

    goto :goto_0

    .line 149
    :cond_b
    const/16 v0, 0x7e

    if-le p1, v0, :cond_c

    .line 150
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c(B)V

    goto :goto_0

    .line 151
    :cond_c
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_d

    .line 152
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c(B)V

    goto :goto_0

    .line 154
    :cond_d
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->b(B)V

    goto :goto_0
.end method

.method private b(B)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 160
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->h:I

    if-gt v0, v1, :cond_0

    .line 161
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->e()V

    .line 163
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->d(B)V

    .line 164
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->e:Z

    if-eqz v0, :cond_1

    .line 91
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->b(B)V

    .line 97
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->d()V

    .line 98
    return-void

    .line 92
    :cond_1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->f:Z

    if-eqz v0, :cond_2

    .line 93
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->b(B)V

    goto :goto_0

    .line 94
    :cond_2
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->g:Z

    if-eqz v0, :cond_0

    .line 95
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->b(B)V

    goto :goto_0
.end method

.method private c(B)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 167
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->h:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->h:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 168
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->e()V

    .line 171
    :cond_0
    and-int/lit16 v0, p1, 0xff

    .line 173
    const/16 v1, 0x3d

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->d(B)V

    .line 174
    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->h:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->h:I

    .line 175
    sget-object v1, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->a:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v1, v1, v2

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->d(B)V

    .line 176
    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->h:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->h:I

    .line 177
    sget-object v1, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->a:[B

    rem-int/lit8 v0, v0, 0x10

    aget-byte v0, v1, v0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->d(B)V

    .line 178
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->e:Z

    .line 102
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->f:Z

    .line 103
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->g:Z

    .line 104
    return-void
.end method

.method private d(B)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->i:I

    aput-byte p1, v0, v1

    .line 182
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->i:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->b()V

    .line 185
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->d(B)V

    .line 189
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->f()V

    .line 190
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 193
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->d(B)V

    .line 194
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->d(B)V

    .line 195
    const/16 v0, 0x4c

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->h:I

    .line 196
    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c()V

    .line 77
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->b()V

    .line 78
    return-void
.end method

.method a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->j:Ljava/io/OutputStream;

    .line 63
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->e:Z

    .line 64
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->f:Z

    .line 65
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->g:Z

    .line 66
    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->h:I

    .line 67
    return-void
.end method

.method a([BII)V
    .locals 2

    .prologue
    .line 70
    move v0, p2

    :goto_0
    add-int v1, p3, p2

    if-ge v0, v1, :cond_0

    .line 71
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->a(B)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->i:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->j:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->i:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 204
    :goto_0
    iput v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->i:I

    .line 205
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->j:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->c:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method
