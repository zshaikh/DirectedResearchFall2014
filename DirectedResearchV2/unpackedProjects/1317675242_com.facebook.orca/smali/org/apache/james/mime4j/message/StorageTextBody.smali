.class Lorg/apache/james/mime4j/message/StorageTextBody;
.super Lorg/apache/james/mime4j/message/TextBody;
.source "StorageTextBody.java"


# instance fields
.field private a:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->a:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 62
    invoke-static {v0, p1}, Lorg/apache/james/mime4j/codec/CodecUtil;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 64
    return-void
.end method
