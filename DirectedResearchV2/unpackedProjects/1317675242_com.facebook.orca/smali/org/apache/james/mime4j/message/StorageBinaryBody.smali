.class Lorg/apache/james/mime4j/message/StorageBinaryBody;
.super Lorg/apache/james/mime4j/message/BinaryBody;
.source "StorageBinaryBody.java"


# instance fields
.field private a:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->a:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 52
    invoke-static {v0, p1}, Lorg/apache/james/mime4j/codec/CodecUtil;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 54
    return-void
.end method
