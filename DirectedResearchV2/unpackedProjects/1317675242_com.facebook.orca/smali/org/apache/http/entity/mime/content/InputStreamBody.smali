.class public Lorg/apache/http/entity/mime/content/InputStreamBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;
.source "InputStreamBody.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/lang/String;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "binary"

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    const/16 v0, 0x1000

    :try_start_0
    new-array v0, v0, [B

    .line 81
    :goto_0
    iget-object v1, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 82
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 84
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 88
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 99
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->b:Ljava/lang/String;

    return-object v0
.end method
