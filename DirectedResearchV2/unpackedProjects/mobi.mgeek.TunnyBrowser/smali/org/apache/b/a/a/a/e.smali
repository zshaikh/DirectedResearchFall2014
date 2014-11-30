.class public Lorg/apache/b/a/a/a/e;
.super Lorg/apache/b/a/a/a/a;
.source "InputStreamBody.java"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/b/a/a/a/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p2}, Lorg/apache/b/a/a/a/a;-><init>(Ljava/lang/String;)V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lorg/apache/b/a/a/a/e;->a:Ljava/io/InputStream;

    .line 51
    iput-object p3, p0, Lorg/apache/b/a/a/a/e;->b:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/b/a/a/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    const/16 v0, 0x1000

    :try_start_0
    new-array v0, v0, [B

    .line 77
    :goto_0
    iget-object v1, p0, Lorg/apache/b/a/a/a/e;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 78
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/b/a/a/a/e;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 80
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    iget-object v0, p0, Lorg/apache/b/a/a/a/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 84
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "binary"

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 95
    const-wide/16 v0, -0x1

    return-wide v0
.end method
