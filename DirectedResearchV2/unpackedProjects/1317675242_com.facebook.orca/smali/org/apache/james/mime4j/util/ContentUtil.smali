.class public Lorg/apache/james/mime4j/util/ContentUtil;
.super Ljava/lang/Object;
.source "ContentUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static a(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    instance-of v0, p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 125
    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->c()[B

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/apache/james/mime4j/util/ContentUtil;->a(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 127
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/util/ByteSequence;->a()[B

    move-result-object v0

    .line 128
    invoke-static {p0, v0, p2, p3}, Lorg/apache/james/mime4j/util/ContentUtil;->a(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->a:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/apache/james/mime4j/util/ByteSequence;->b()I

    move-result v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/james/mime4j/util/ContentUtil;->a(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/james/mime4j/util/ContentUtil;->a(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/util/ContentUtil;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 4

    .prologue
    .line 57
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 58
    new-instance v1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->a([BII)V

    .line 60
    return-object v1
.end method
