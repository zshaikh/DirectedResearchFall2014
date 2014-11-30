.class Lorg/apache/james/mime4j/message/StringTextBody;
.super Lorg/apache/james/mime4j/message/TextBody;
.source "StringTextBody.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/nio/charset/Charset;


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 60
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StringTextBody;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/StringTextBody;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 63
    const/16 v2, 0x400

    new-array v2, v2, [C

    .line 65
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    .line 66
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 72
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 73
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 74
    return-void

    .line 69
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method
