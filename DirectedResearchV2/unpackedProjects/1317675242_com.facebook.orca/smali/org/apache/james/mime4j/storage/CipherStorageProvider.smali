.class public Lorg/apache/james/mime4j/storage/CipherStorageProvider;
.super Lorg/apache/james/mime4j/storage/AbstractStorageProvider;
.source "CipherStorageProvider.java"


# instance fields
.field private final a:Lorg/apache/james/mime4j/storage/StorageProvider;

.field private final b:Ljava/lang/String;

.field private final c:Ljavax/crypto/KeyGenerator;


# direct methods
.method private b()Ljavax/crypto/spec/SecretKeySpec;
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->c:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 96
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public a()Lorg/apache/james/mime4j/storage/StorageOutputStream;
    .locals 4

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->b()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    .line 90
    new-instance v1, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->a:Lorg/apache/james/mime4j/storage/StorageProvider;

    invoke-interface {v2}, Lorg/apache/james/mime4j/storage/StorageProvider;->a()Lorg/apache/james/mime4j/storage/StorageOutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;-><init>(Lorg/apache/james/mime4j/storage/StorageOutputStream;Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    return-object v1
.end method
