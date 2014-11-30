.class final Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;
.super Ljava/lang/Object;
.source "CipherStorageProvider.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# instance fields
.field private a:Lorg/apache/james/mime4j/storage/Storage;

.field private final b:Ljava/lang/String;

.field private final c:Ljavax/crypto/spec/SecretKeySpec;


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->a:Lorg/apache/james/mime4j/storage/Storage;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->b:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 167
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->c:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 169
    iget-object v1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->a:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v1}, Lorg/apache/james/mime4j/storage/Storage;->a()Ljava/io/InputStream;

    move-result-object v1

    .line 170
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, v1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method
