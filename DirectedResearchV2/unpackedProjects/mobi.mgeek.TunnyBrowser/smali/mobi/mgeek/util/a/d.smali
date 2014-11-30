.class public abstract Lmobi/mgeek/util/a/d;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field protected static final a:[B

.field protected static final b:[B

.field protected static final c:[B

.field protected static final d:[B

.field protected static final e:[B

.field protected static final f:[B

.field protected static final g:[B

.field protected static final h:[B

.field private static final i:[B


# instance fields
.field private j:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lmobi/mgeek/util/a/d;->a:[B

    .line 68
    sget-object v0, Lmobi/mgeek/util/a/d;->a:[B

    sput-object v0, Lmobi/mgeek/util/a/d;->i:[B

    .line 74
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lmobi/mgeek/util/a/d;->b:[B

    .line 80
    const-string v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lmobi/mgeek/util/a/d;->c:[B

    .line 87
    const-string v0, "--"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lmobi/mgeek/util/a/d;->d:[B

    .line 94
    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lmobi/mgeek/util/a/d;->e:[B

    .line 101
    const-string v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lmobi/mgeek/util/a/d;->f:[B

    .line 108
    const-string v0, "; charset="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lmobi/mgeek/util/a/d;->g:[B

    .line 115
    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lmobi/mgeek/util/a/d;->h:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Lmobi/mgeek/util/a/d;[B)J
    .locals 8

    .prologue
    const-wide/16 v3, 0x0

    .line 406
    if-nez p0, :cond_0

    .line 407
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parts may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    const/4 v0, 0x0

    move-wide v1, v3

    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_2

    .line 412
    aget-object v5, p0, v0

    invoke-virtual {v5, p1}, Lmobi/mgeek/util/a/d;->a([B)V

    .line 413
    aget-object v5, p0, v0

    invoke-virtual {v5}, Lmobi/mgeek/util/a/d;->h()J

    move-result-wide v5

    .line 414
    cmp-long v7, v5, v3

    if-gez v7, :cond_1

    .line 415
    const-wide/16 v0, -0x1

    .line 423
    :goto_1
    return-wide v0

    .line 417
    :cond_1
    add-long/2addr v1, v5

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_2
    sget-object v0, Lmobi/mgeek/util/a/d;->d:[B

    array-length v0, v0

    int-to-long v3, v0

    add-long v0, v1, v3

    .line 420
    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 421
    sget-object v2, Lmobi/mgeek/util/a/d;->d:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 422
    sget-object v2, Lmobi/mgeek/util/a/d;->b:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 423
    goto :goto_1
.end method

.method public static a(Ljava/io/OutputStream;[Lmobi/mgeek/util/a/d;[B)V
    .locals 2

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parts may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_2

    .line 368
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "partBoundary may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_2
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 372
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lmobi/mgeek/util/a/d;->a([B)V

    .line 373
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lmobi/mgeek/util/a/d;->h(Ljava/io/OutputStream;)V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_3
    sget-object v0, Lmobi/mgeek/util/a/d;->d:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 376
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 377
    sget-object v0, Lmobi/mgeek/util/a/d;->d:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 378
    sget-object v0, Lmobi/mgeek/util/a/d;->b:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 379
    return-void
.end method


# virtual methods
.method protected abstract a()J
.end method

.method protected a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lmobi/mgeek/util/a/d;->e:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 212
    sget-object v0, Lmobi/mgeek/util/a/d;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 213
    invoke-virtual {p0}, Lmobi/mgeek/util/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 214
    sget-object v0, Lmobi/mgeek/util/a/d;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 215
    return-void
.end method

.method a([B)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lmobi/mgeek/util/a/d;->j:[B

    .line 181
    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method protected abstract b(Ljava/io/OutputStream;)V
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method protected c(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lmobi/mgeek/util/a/d;->d:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 200
    invoke-virtual {p0}, Lmobi/mgeek/util/a/d;->f()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 201
    sget-object v0, Lmobi/mgeek/util/a/d;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 202
    return-void
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method protected d(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lmobi/mgeek/util/a/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 225
    sget-object v1, Lmobi/mgeek/util/a/d;->b:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 226
    sget-object v1, Lmobi/mgeek/util/a/d;->f:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 227
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 228
    invoke-virtual {p0}, Lmobi/mgeek/util/a/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    sget-object v1, Lmobi/mgeek/util/a/d;->g:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 231
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 234
    :cond_0
    return-void
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method protected e(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lmobi/mgeek/util/a/d;->e()Ljava/lang/String;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    sget-object v1, Lmobi/mgeek/util/a/d;->b:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 247
    sget-object v1, Lmobi/mgeek/util/a/d;->h:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 248
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 250
    :cond_0
    return-void
.end method

.method protected f(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lmobi/mgeek/util/a/d;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 259
    sget-object v0, Lmobi/mgeek/util/a/d;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 260
    return-void
.end method

.method protected f()[B
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lmobi/mgeek/util/a/d;->j:[B

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lmobi/mgeek/util/a/d;->i:[B

    .line 168
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmobi/mgeek/util/a/d;->j:[B

    goto :goto_0
.end method

.method protected g(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lmobi/mgeek/util/a/d;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 284
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public h()J
    .locals 4

    .prologue
    .line 314
    invoke-virtual {p0}, Lmobi/mgeek/util/a/d;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 315
    const-wide/16 v0, -0x1

    .line 324
    :goto_0
    return-wide v0

    .line 317
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 318
    invoke-virtual {p0, v0}, Lmobi/mgeek/util/a/d;->c(Ljava/io/OutputStream;)V

    .line 319
    invoke-virtual {p0, v0}, Lmobi/mgeek/util/a/d;->a(Ljava/io/OutputStream;)V

    .line 320
    invoke-virtual {p0, v0}, Lmobi/mgeek/util/a/d;->d(Ljava/io/OutputStream;)V

    .line 321
    invoke-virtual {p0, v0}, Lmobi/mgeek/util/a/d;->e(Ljava/io/OutputStream;)V

    .line 322
    invoke-virtual {p0, v0}, Lmobi/mgeek/util/a/d;->f(Ljava/io/OutputStream;)V

    .line 323
    invoke-virtual {p0, v0}, Lmobi/mgeek/util/a/d;->g(Ljava/io/OutputStream;)V

    .line 324
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lmobi/mgeek/util/a/d;->a()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public h(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lmobi/mgeek/util/a/d;->c(Ljava/io/OutputStream;)V

    .line 296
    invoke-virtual {p0, p1}, Lmobi/mgeek/util/a/d;->a(Ljava/io/OutputStream;)V

    .line 297
    invoke-virtual {p0, p1}, Lmobi/mgeek/util/a/d;->d(Ljava/io/OutputStream;)V

    .line 298
    invoke-virtual {p0, p1}, Lmobi/mgeek/util/a/d;->e(Ljava/io/OutputStream;)V

    .line 299
    invoke-virtual {p0, p1}, Lmobi/mgeek/util/a/d;->f(Ljava/io/OutputStream;)V

    .line 300
    invoke-virtual {p0, p1}, Lmobi/mgeek/util/a/d;->b(Ljava/io/OutputStream;)V

    .line 301
    invoke-virtual {p0, p1}, Lmobi/mgeek/util/a/d;->g(Ljava/io/OutputStream;)V

    .line 302
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lmobi/mgeek/util/a/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
