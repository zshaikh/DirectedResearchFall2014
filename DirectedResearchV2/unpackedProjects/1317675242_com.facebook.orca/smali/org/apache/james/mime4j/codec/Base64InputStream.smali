.class public Lorg/apache/james/mime4j/codec/Base64InputStream;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# static fields
.field static final synthetic a:Z

.field private static b:Lorg/apache/commons/logging/Log;

.field private static final c:[I


# instance fields
.field private final d:[B

.field private e:Z

.field private final f:Ljava/io/InputStream;

.field private g:Z

.field private final h:[B

.field private i:I

.field private j:I

.field private final k:Lorg/apache/james/mime4j/codec/ByteQueue;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x0

    .line 31
    const-class v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->a:Z

    .line 32
    const-class v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->b:Lorg/apache/commons/logging/Log;

    .line 36
    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->c:[I

    move v0, v3

    .line 39
    :goto_1
    if-ge v0, v4, :cond_1

    .line 40
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->c:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    .line 31
    goto :goto_0

    :cond_1
    move v0, v3

    .line 41
    :goto_2
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64OutputStream;->a:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 42
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->c:[I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->a:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    aput v0, v1, v2

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 43
    :cond_2
    return-void
.end method

.method private a(II[BII)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 230
    iput-boolean v2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->l:Z

    .line 232
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 235
    ushr-int/lit8 v0, p1, 0x4

    int-to-byte v0, v0

    .line 236
    if-ge p4, p5, :cond_0

    .line 237
    add-int/lit8 v1, p4, 0x1

    aput-byte v0, p3, p4

    move v0, v1

    .line 262
    :goto_0
    return v0

    .line 239
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->k:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    :goto_1
    move v0, p4

    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 244
    ushr-int/lit8 v0, p1, 0xa

    int-to-byte v0, v0

    .line 245
    ushr-int/lit8 v1, p1, 0x2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 247
    sub-int v2, p5, v2

    if-ge p4, v2, :cond_2

    .line 248
    add-int/lit8 v2, p4, 0x1

    aput-byte v0, p3, p4

    .line 249
    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p3, v2

    goto :goto_0

    .line 250
    :cond_2
    if-ge p4, p5, :cond_3

    .line 251
    add-int/lit8 v2, p4, 0x1

    aput-byte v0, p3, p4

    .line 252
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->k:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    move v0, v2

    goto :goto_0

    .line 254
    :cond_3
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->k:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    .line 255
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->k:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    goto :goto_1

    .line 259
    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;->b(I)V

    goto :goto_1
.end method

.method private a([BII)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 132
    .line 136
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->k:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->b()I

    move-result v0

    move v1, p2

    .line 137
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_0

    if-ge v1, p3, :cond_0

    .line 138
    add-int/lit8 v0, v1, 0x1

    iget-object v3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->k:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/codec/ByteQueue;->a()B

    move-result v3

    aput-byte v3, p1, v1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 143
    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->l:Z

    if-eqz v0, :cond_2

    .line 144
    if-ne v1, p2, :cond_1

    move v0, v7

    .line 225
    :goto_1
    return v0

    .line 144
    :cond_1
    sub-int v0, v1, p2

    goto :goto_1

    :cond_2
    move v0, v6

    move v2, v1

    move v1, v6

    .line 151
    :goto_2
    if-ge v2, p3, :cond_e

    .line 154
    :cond_3
    :goto_3
    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->i:I

    iget v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->j:I

    if-ne v3, v4, :cond_13

    .line 155
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->f:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->h:[B

    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->h:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 156
    if-ne v3, v7, :cond_6

    .line 157
    iput-boolean v8, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->l:Z

    .line 159
    if-eqz v0, :cond_4

    .line 161
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->a(I)V

    .line 164
    :cond_4
    if-ne v2, p2, :cond_5

    move v0, v7

    goto :goto_1

    :cond_5
    sub-int v0, v2, p2

    goto :goto_1

    .line 165
    :cond_6
    if-lez v3, :cond_7

    .line 166
    iput v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->i:I

    .line 167
    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->j:I

    goto :goto_3

    .line 169
    :cond_7
    sget-boolean v4, Lorg/apache/james/mime4j/codec/Base64InputStream;->a:Z

    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 183
    :cond_8
    sget-object v3, Lorg/apache/james/mime4j/codec/Base64InputStream;->c:[I

    aget v0, v3, v0

    .line 184
    if-gez v0, :cond_9

    .line 175
    :goto_4
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->i:I

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->j:I

    if-ge v0, v3, :cond_12

    if-ge v4, p3, :cond_12

    .line 176
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->h:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->i:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->i:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 178
    const/16 v3, 0x3d

    if-ne v0, v3, :cond_8

    move-object v0, p0

    move-object v3, p1

    move v5, p3

    .line 179
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/Base64InputStream;->a(II[BII)I

    move-result v0

    .line 180
    sub-int/2addr v0, p2

    goto :goto_1

    .line 187
    :cond_9
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    .line 188
    add-int/lit8 v1, v2, 0x1

    .line 190
    const/4 v2, 0x4

    if-ne v1, v2, :cond_11

    .line 193
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    .line 194
    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    .line 195
    int-to-byte v3, v0

    .line 197
    const/4 v5, 0x2

    sub-int v5, p3, v5

    if-ge v4, v5, :cond_a

    .line 198
    add-int/lit8 v5, v4, 0x1

    aput-byte v1, p1, v4

    .line 199
    add-int/lit8 v1, v5, 0x1

    aput-byte v2, p1, v5

    .line 200
    add-int/lit8 v2, v1, 0x1

    aput-byte v3, p1, v1

    move v1, v6

    :goto_5
    move v4, v2

    move v2, v1

    move v1, v0

    .line 220
    goto :goto_4

    .line 202
    :cond_a
    sub-int v0, p3, v8

    if-ge v4, v0, :cond_b

    .line 203
    add-int/lit8 v0, v4, 0x1

    aput-byte v1, p1, v4

    .line 204
    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    .line 205
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->k:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    move v0, v1

    .line 216
    :goto_6
    sget-boolean v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->a:Z

    if-nez v1, :cond_d

    if-eq v0, p3, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :cond_b
    if-ge v4, p3, :cond_c

    .line 207
    add-int/lit8 v0, v4, 0x1

    aput-byte v1, p1, v4

    .line 208
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->k:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    .line 209
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->k:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    goto :goto_6

    .line 211
    :cond_c
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->k:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    .line 212
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->k:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    .line 213
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->k:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    move v0, v4

    goto :goto_6

    .line 217
    :cond_d
    sub-int v0, p3, p2

    goto/16 :goto_1

    .line 223
    :cond_e
    sget-boolean v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->a:Z

    if-nez v1, :cond_f

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 224
    :cond_f
    sget-boolean v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->a:Z

    if-nez v0, :cond_10

    if-eq v2, p3, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 225
    :cond_10
    sub-int v0, p3, p2

    goto/16 :goto_1

    :cond_11
    move v2, v4

    goto :goto_5

    :cond_12
    move v0, v2

    move v2, v4

    goto/16 :goto_2

    :cond_13
    move v4, v2

    move v2, v0

    goto/16 :goto_4
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 266
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->e:Z

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->b:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of file; dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sextet(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 274
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->e:Z

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected padding character"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->b:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected padding character; dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sextet(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 279
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->g:Z

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->g:Z

    goto :goto_0
.end method

.method public read()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 78
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->g:Z

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->d:[B

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/james/mime4j/codec/Base64InputStream;->a([BII)I

    move-result v0

    .line 83
    if-ne v0, v1, :cond_1

    move v0, v1

    .line 87
    :goto_0
    return v0

    .line 86
    :cond_1
    if-ne v0, v3, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->d:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->g:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    if-nez p1, :cond_1

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 99
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    move v0, v1

    .line 102
    :goto_0
    return v0

    :cond_2
    array-length v0, p1

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->a([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->g:Z

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    if-nez p1, :cond_1

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 113
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 116
    :cond_3
    if-nez p3, :cond_4

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_4
    add-int v0, p2, p3

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->a([BII)I

    move-result v0

    goto :goto_0
.end method
