.class public Lorg/apache/http/entity/mime/content/StringBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;
.source "StringBody.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    const-string v0, "text/plain"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p2}, Lorg/apache/http/entity/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    if-nez p3, :cond_1

    .line 64
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 66
    :goto_0
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/entity/mime/content/StringBody;->a:[B

    .line 67
    iput-object v0, p0, Lorg/apache/http/entity/mime/content/StringBody;->b:Ljava/nio/charset/Charset;

    .line 68
    return-void

    :cond_1
    move-object v0, p3

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "8bit"

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/http/entity/mime/content/StringBody;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 98
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 100
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 101
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 104
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/StringBody;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/StringBody;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method
