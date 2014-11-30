.class public Lorg/apache/c/b/a;
.super Lorg/apache/c/b/f;
.source "TBinaryProtocol.java"


# static fields
.field private static final f:Lorg/apache/c/b/j;

.field private static final g:Ljava/nio/charset/Charset;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I

.field protected d:Z

.field private h:[B

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:[B

.field private o:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/apache/c/b/j;

    invoke-direct {v0}, Lorg/apache/c/b/j;-><init>()V

    sput-object v0, Lorg/apache/c/b/a;->f:Lorg/apache/c/b/j;

    .line 36
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/c/b/a;->g:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lorg/apache/c/c/b;)V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/c/b/a;-><init>(Lorg/apache/c/c/b;ZZ)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/apache/c/c/b;ZZ)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 86
    invoke-direct {p0, p1}, Lorg/apache/c/b/f;-><init>(Lorg/apache/c/c/b;)V

    .line 41
    iput-boolean v0, p0, Lorg/apache/c/b/a;->a:Z

    .line 42
    iput-boolean v1, p0, Lorg/apache/c/b/a;->b:Z

    .line 45
    iput-boolean v0, p0, Lorg/apache/c/b/a;->d:Z

    .line 147
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/c/b/a;->h:[B

    .line 153
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/c/b/a;->i:[B

    .line 160
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/c/b/a;->j:[B

    .line 169
    new-array v0, v4, [B

    iput-object v0, p0, Lorg/apache/c/b/a;->k:[B

    .line 258
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/c/b/a;->l:[B

    .line 269
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/c/b/a;->m:[B

    .line 288
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/c/b/a;->n:[B

    .line 307
    new-array v0, v4, [B

    iput-object v0, p0, Lorg/apache/c/b/a;->o:[B

    .line 87
    iput-boolean p2, p0, Lorg/apache/c/b/a;->a:Z

    .line 88
    iput-boolean p3, p0, Lorg/apache/c/b/a;->b:Z

    .line 89
    return-void
.end method

.method private b([BII)I
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0, p3}, Lorg/apache/c/b/a;->c(I)V

    .line 379
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/c/c/b;->c([BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public A()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/apache/c/b/a;->w()I

    move-result v1

    .line 357
    invoke-virtual {p0, v1}, Lorg/apache/c/b/a;->c(I)V

    .line 359
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v0}, Lorg/apache/c/c/b;->e()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v0}, Lorg/apache/c/c/b;->c()[B

    move-result-object v0

    iget-object v2, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v2}, Lorg/apache/c/c/b;->d()I

    move-result v2

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 361
    iget-object v2, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v2, v1}, Lorg/apache/c/c/b;->a(I)V

    .line 367
    :goto_0
    return-object v0

    .line 365
    :cond_0
    new-array v0, v1, [B

    .line 366
    iget-object v2, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lorg/apache/c/c/b;->c([BII)I

    .line 367
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public B()[B
    .locals 4

    .prologue
    .line 371
    invoke-virtual {p0}, Lorg/apache/c/b/a;->w()I

    move-result v0

    .line 372
    new-array v1, v0, [B

    .line 373
    iget-object v2, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lorg/apache/c/c/b;->c([BII)I

    .line 374
    return-object v1
.end method

.method public a()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public a(B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v0, p0, Lorg/apache/c/b/a;->h:[B

    aput-byte p1, v0, v3

    .line 150
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    iget-object v1, p0, Lorg/apache/c/b/a;->h:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/c/c/b;->b([BII)V

    .line 151
    return-void
.end method

.method public a(D)V
    .locals 2

    .prologue
    .line 183
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/c/b/a;->a(J)V

    .line 184
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v0, p0, Lorg/apache/c/b/a;->j:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 163
    iget-object v0, p0, Lorg/apache/c/b/a;->j:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 164
    iget-object v0, p0, Lorg/apache/c/b/a;->j:[B

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 165
    iget-object v0, p0, Lorg/apache/c/b/a;->j:[B

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 166
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    iget-object v1, p0, Lorg/apache/c/b/a;->j:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/c/c/b;->b([BII)V

    .line 167
    return-void
.end method

.method public a(J)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    .line 171
    iget-object v0, p0, Lorg/apache/c/b/a;->k:[B

    const/16 v1, 0x38

    shr-long v1, p1, v1

    and-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 172
    iget-object v0, p0, Lorg/apache/c/b/a;->k:[B

    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 173
    iget-object v0, p0, Lorg/apache/c/b/a;->k:[B

    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 174
    iget-object v0, p0, Lorg/apache/c/b/a;->k:[B

    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 175
    iget-object v0, p0, Lorg/apache/c/b/a;->k:[B

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 176
    iget-object v0, p0, Lorg/apache/c/b/a;->k:[B

    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 177
    iget-object v0, p0, Lorg/apache/c/b/a;->k:[B

    const/4 v1, 0x6

    shr-long v2, p1, v7

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 178
    iget-object v0, p0, Lorg/apache/c/b/a;->k:[B

    const/4 v1, 0x7

    and-long v2, v4, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 179
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    iget-object v1, p0, Lorg/apache/c/b/a;->k:[B

    invoke-virtual {v0, v1, v6, v7}, Lorg/apache/c/c/b;->b([BII)V

    .line 180
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 187
    sget-object v0, Lorg/apache/c/b/a;->g:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 189
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 190
    array-length v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(I)V

    .line 191
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/c/c/b;->b([BII)V

    .line 192
    return-void
.end method

.method public a(Lorg/apache/c/b/b;)V
    .locals 1

    .prologue
    .line 111
    iget-byte v0, p1, Lorg/apache/c/b/b;->b:B

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(B)V

    .line 112
    iget-short v0, p1, Lorg/apache/c/b/b;->c:S

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(S)V

    .line 113
    return-void
.end method

.method public a(Lorg/apache/c/b/c;)V
    .locals 1

    .prologue
    .line 130
    iget-byte v0, p1, Lorg/apache/c/b/c;->a:B

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(B)V

    .line 131
    iget v0, p1, Lorg/apache/c/b/c;->b:I

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(I)V

    .line 132
    return-void
.end method

.method public a(Lorg/apache/c/b/d;)V
    .locals 1

    .prologue
    .line 122
    iget-byte v0, p1, Lorg/apache/c/b/d;->a:B

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(B)V

    .line 123
    iget-byte v0, p1, Lorg/apache/c/b/d;->b:B

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(B)V

    .line 124
    iget v0, p1, Lorg/apache/c/b/d;->c:I

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(I)V

    .line 125
    return-void
.end method

.method public a(Lorg/apache/c/b/e;)V
    .locals 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/apache/c/b/a;->b:Z

    if-eqz v0, :cond_0

    .line 93
    const/high16 v0, -0x7fff0000

    iget-byte v1, p1, Lorg/apache/c/b/e;->b:B

    or-int/2addr v0, v1

    .line 94
    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(I)V

    .line 95
    iget-object v0, p1, Lorg/apache/c/b/e;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(Ljava/lang/String;)V

    .line 96
    iget v0, p1, Lorg/apache/c/b/e;->c:I

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(I)V

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p1, Lorg/apache/c/b/e;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(Ljava/lang/String;)V

    .line 99
    iget-byte v0, p1, Lorg/apache/c/b/e;->b:B

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(B)V

    .line 100
    iget v0, p1, Lorg/apache/c/b/e;->c:I

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(I)V

    goto :goto_0
.end method

.method public a(Lorg/apache/c/b/i;)V
    .locals 1

    .prologue
    .line 137
    iget-byte v0, p1, Lorg/apache/c/b/i;->a:B

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(B)V

    .line 138
    iget v0, p1, Lorg/apache/c/b/i;->b:I

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(I)V

    .line 139
    return-void
.end method

.method public a(Lorg/apache/c/b/j;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public a(S)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v0, p0, Lorg/apache/c/b/a;->i:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 156
    iget-object v0, p0, Lorg/apache/c/b/a;->i:[B

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 157
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    iget-object v1, p0, Lorg/apache/c/b/a;->i:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/c/c/b;->b([BII)V

    .line 158
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 144
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(B)V

    .line 145
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([BII)V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0, p3}, Lorg/apache/c/b/a;->a(I)V

    .line 197
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/c/c/b;->b([BII)V

    .line 198
    return-void
.end method

.method public b(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lorg/apache/c/b/a;->c(I)V

    .line 350
    new-array v0, p1, [B

    .line 351
    iget-object v1, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lorg/apache/c/c/b;->c([BII)I

    .line 352
    sget-object v1, Lorg/apache/c/b/a;->g:Ljava/nio/charset/Charset;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected c(I)V
    .locals 3

    .prologue
    .line 388
    if-gez p1, :cond_0

    .line 389
    new-instance v0, Lorg/apache/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/c/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    iget-boolean v0, p0, Lorg/apache/c/b/a;->d:Z

    if-eqz v0, :cond_1

    .line 392
    iget v0, p0, Lorg/apache/c/b/a;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/c/b/a;->c:I

    .line 393
    iget v0, p0, Lorg/apache/c/b/a;->c:I

    if-gez v0, :cond_1

    .line 394
    new-instance v0, Lorg/apache/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message length exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/c/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/c/b/a;->a(B)V

    .line 119
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public i()Lorg/apache/c/b/e;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 205
    invoke-virtual {p0}, Lorg/apache/c/b/a;->w()I

    move-result v1

    .line 206
    if-gez v1, :cond_1

    .line 207
    const/high16 v0, -0x10000

    and-int/2addr v0, v1

    .line 208
    const/high16 v2, -0x7fff0000

    if-eq v0, v2, :cond_0

    .line 209
    new-instance v0, Lorg/apache/c/b/g;

    const-string v1, "Bad version in readMessageBegin"

    invoke-direct {v0, v3, v1}, Lorg/apache/c/b/g;-><init>(ILjava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    new-instance v0, Lorg/apache/c/b/e;

    invoke-virtual {p0}, Lorg/apache/c/b/a;->z()Ljava/lang/String;

    move-result-object v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0}, Lorg/apache/c/b/a;->w()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/c/b/e;-><init>(Ljava/lang/String;BI)V

    .line 216
    :goto_0
    return-object v0

    .line 213
    :cond_1
    iget-boolean v0, p0, Lorg/apache/c/b/a;->a:Z

    if-eqz v0, :cond_2

    .line 214
    new-instance v0, Lorg/apache/c/b/g;

    const-string v1, "Missing version in readMessageBegin, old client?"

    invoke-direct {v0, v3, v1}, Lorg/apache/c/b/g;-><init>(ILjava/lang/String;)V

    throw v0

    .line 216
    :cond_2
    new-instance v0, Lorg/apache/c/b/e;

    invoke-virtual {p0, v1}, Lorg/apache/c/b/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/c/b/a;->u()B

    move-result v2

    invoke-virtual {p0}, Lorg/apache/c/b/a;->w()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/c/b/e;-><init>(Ljava/lang/String;BI)V

    goto :goto_0
.end method

.method public j()Lorg/apache/c/b/j;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lorg/apache/c/b/a;->f:Lorg/apache/c/b/j;

    return-object v0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public l()Lorg/apache/c/b/b;
    .locals 4

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/apache/c/b/a;->u()B

    move-result v1

    .line 230
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 231
    :goto_0
    new-instance v2, Lorg/apache/c/b/b;

    const-string v3, ""

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    return-object v2

    .line 230
    :cond_0
    invoke-virtual {p0}, Lorg/apache/c/b/a;->v()S

    move-result v0

    goto :goto_0
.end method

.method public m()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public n()Lorg/apache/c/b/d;
    .locals 4

    .prologue
    .line 237
    new-instance v0, Lorg/apache/c/b/d;

    invoke-virtual {p0}, Lorg/apache/c/b/a;->u()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/c/b/a;->u()B

    move-result v2

    invoke-virtual {p0}, Lorg/apache/c/b/a;->w()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/c/b/d;-><init>(BBI)V

    return-object v0
.end method

.method public o()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public p()Lorg/apache/c/b/c;
    .locals 3

    .prologue
    .line 243
    new-instance v0, Lorg/apache/c/b/c;

    invoke-virtual {p0}, Lorg/apache/c/b/a;->u()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/c/b/a;->w()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/c/b/c;-><init>(BI)V

    return-object v0
.end method

.method public q()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public r()Lorg/apache/c/b/i;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Lorg/apache/c/b/i;

    invoke-virtual {p0}, Lorg/apache/c/b/a;->u()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/c/b/a;->w()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/c/b/i;-><init>(BI)V

    return-object v0
.end method

.method public s()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public t()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 255
    invoke-virtual {p0}, Lorg/apache/c/b/a;->u()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()B
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 260
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v0}, Lorg/apache/c/c/b;->e()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 261
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v0}, Lorg/apache/c/c/b;->c()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v1}, Lorg/apache/c/c/b;->d()I

    move-result v1

    aget-byte v0, v0, v1

    .line 262
    iget-object v1, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v1, v2}, Lorg/apache/c/c/b;->a(I)V

    .line 266
    :goto_0
    return v0

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/apache/c/b/a;->l:[B

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/c/b/a;->b([BII)I

    .line 266
    iget-object v0, p0, Lorg/apache/c/b/a;->l:[B

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public v()S
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 271
    iget-object v1, p0, Lorg/apache/c/b/a;->m:[B

    .line 274
    iget-object v2, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v2}, Lorg/apache/c/c/b;->e()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 275
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v0}, Lorg/apache/c/c/b;->c()[B

    move-result-object v1

    .line 276
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v0}, Lorg/apache/c/c/b;->d()I

    move-result v0

    .line 277
    iget-object v2, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v2, v3}, Lorg/apache/c/c/b;->a(I)V

    .line 282
    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0

    .line 279
    :cond_0
    iget-object v2, p0, Lorg/apache/c/b/a;->m:[B

    invoke-direct {p0, v2, v0, v3}, Lorg/apache/c/b/a;->b([BII)I

    goto :goto_0
.end method

.method public w()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x4

    .line 290
    iget-object v1, p0, Lorg/apache/c/b/a;->n:[B

    .line 293
    iget-object v2, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v2}, Lorg/apache/c/c/b;->e()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 294
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v0}, Lorg/apache/c/c/b;->c()[B

    move-result-object v1

    .line 295
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v0}, Lorg/apache/c/c/b;->d()I

    move-result v0

    .line 296
    iget-object v2, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v2, v3}, Lorg/apache/c/c/b;->a(I)V

    .line 300
    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0

    .line 298
    :cond_0
    iget-object v2, p0, Lorg/apache/c/b/a;->n:[B

    invoke-direct {p0, v2, v0, v3}, Lorg/apache/c/b/a;->b([BII)I

    goto :goto_0
.end method

.method public x()J
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/16 v7, 0x8

    .line 309
    iget-object v1, p0, Lorg/apache/c/b/a;->o:[B

    .line 312
    iget-object v2, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v2}, Lorg/apache/c/c/b;->e()I

    move-result v2

    if-lt v2, v7, :cond_0

    .line 313
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v0}, Lorg/apache/c/c/b;->c()[B

    move-result-object v1

    .line 314
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v0}, Lorg/apache/c/c/b;->d()I

    move-result v0

    .line 315
    iget-object v2, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v2, v7}, Lorg/apache/c/c/b;->a(I)V

    .line 320
    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v2

    return-wide v0

    .line 317
    :cond_0
    iget-object v2, p0, Lorg/apache/c/b/a;->o:[B

    invoke-direct {p0, v2, v0, v7}, Lorg/apache/c/b/a;->b([BII)I

    goto :goto_0
.end method

.method public y()D
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lorg/apache/c/b/a;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public z()Ljava/lang/String;
    .locals 4

    .prologue
    .line 336
    invoke-virtual {p0}, Lorg/apache/c/b/a;->w()I

    move-result v1

    .line 338
    iget-object v0, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v0}, Lorg/apache/c/c/b;->e()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 339
    sget-object v0, Lorg/apache/c/b/a;->g:Ljava/nio/charset/Charset;

    iget-object v2, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v2}, Lorg/apache/c/c/b;->c()[B

    move-result-object v2

    iget-object v3, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v3}, Lorg/apache/c/c/b;->d()I

    move-result v3

    invoke-static {v2, v3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    iget-object v2, p0, Lorg/apache/c/b/a;->e:Lorg/apache/c/c/b;

    invoke-virtual {v2, v1}, Lorg/apache/c/c/b;->a(I)V

    .line 345
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/c/b/a;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
