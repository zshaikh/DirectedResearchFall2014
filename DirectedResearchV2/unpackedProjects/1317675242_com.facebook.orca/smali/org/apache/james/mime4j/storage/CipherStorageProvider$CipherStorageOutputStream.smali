.class final Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;
.super Lorg/apache/james/mime4j/storage/StorageOutputStream;
.source "CipherStorageProvider.java"


# instance fields
.field private final a:Lorg/apache/james/mime4j/storage/StorageOutputStream;

.field private final b:Ljava/lang/String;

.field private final c:Ljavax/crypto/spec/SecretKeySpec;

.field private final d:Ljavax/crypto/CipherOutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageOutputStream;Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;-><init>()V

    .line 109
    :try_start_0
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->a:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    .line 110
    iput-object p2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->b:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 113
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 116
    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->d:Ljavax/crypto/CipherOutputStream;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method


# virtual methods
.method protected a([BII)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->d:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    .line 132
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    .line 125
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->d:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 126
    return-void
.end method
