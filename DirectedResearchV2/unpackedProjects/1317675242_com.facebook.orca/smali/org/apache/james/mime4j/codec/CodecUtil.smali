.class public Lorg/apache/james/mime4j/codec/CodecUtil;
.super Ljava/lang/Object;
.source "CodecUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 42
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method
