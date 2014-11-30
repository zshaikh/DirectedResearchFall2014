.class public Lorg/apache/james/mime4j/io/EOLConvertingInputStream;
.super Ljava/io/InputStream;
.source "EOLConvertingInputStream.java"


# instance fields
.field private a:Ljava/io/PushbackInputStream;

.field private b:I

.field private c:I


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 76
    return-void
.end method

.method public read()I
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v2, -0x1

    const/16 v3, 0xa

    .line 83
    iget-object v0, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 85
    if-ne v0, v2, :cond_0

    move v0, v2

    .line 104
    :goto_0
    return v0

    .line 89
    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    if-ne v0, v4, :cond_3

    .line 90
    iget-object v1, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 91
    if-eq v1, v2, :cond_1

    .line 92
    iget-object v2, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 94
    :cond_1
    if-eq v1, v3, :cond_2

    .line 95
    iget-object v1, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 102
    :cond_2
    :goto_1
    iput v0, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->b:I

    goto :goto_0

    .line 97
    :cond_3
    iget v1, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    if-ne v0, v3, :cond_2

    iget v1, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->b:I

    if-eq v1, v4, :cond_2

    .line 99
    iget-object v0, p0, Lorg/apache/james/mime4j/io/EOLConvertingInputStream;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    move v0, v4

    goto :goto_1
.end method
