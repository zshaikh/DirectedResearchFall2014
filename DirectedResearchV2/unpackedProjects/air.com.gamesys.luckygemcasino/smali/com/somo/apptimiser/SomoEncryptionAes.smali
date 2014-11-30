.class Lcom/somo/apptimiser/SomoEncryptionAes;
.super Lcom/somo/apptimiser/SomoEncryptionRsa;
.source "SomoEncryptionAes.java"


# static fields
.field private static final log:Lcom/somo/apptimiser/SomoLogger;


# instance fields
.field private final aes:Ljavax/crypto/Cipher;

.field private base64SessionKey:Ljava/lang/String;

.field private final encryptedKeySizeBytes:I

.field private rsaEncryptedSessionKey:[B

.field private final sessionKey:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/somo/apptimiser/SomoLogger;->getLogger()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v0

    sput-object v0, Lcom/somo/apptimiser/SomoEncryptionAes;->log:Lcom/somo/apptimiser/SomoLogger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 9
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "size"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/somo/apptimiser/SomoEncryptionRsa;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 20
    iput-object v2, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->rsaEncryptedSessionKey:[B

    .line 52
    iput-object v2, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->base64SessionKey:Ljava/lang/String;

    .line 29
    iget v2, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->publicKeySizeBits:I

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->encryptedKeySizeBytes:I

    .line 31
    :try_start_0
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 32
    .local v1, "kg":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v1, p3}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 33
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->sessionKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 35
    sget-object v2, Lcom/somo/apptimiser/SomoEncryptionAes;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v3, "Generated %d bit session key"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 36
    sget-object v2, Lcom/somo/apptimiser/SomoEncryptionAes;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v3, "Session key: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->sessionKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 38
    const-string v2, "AES/ECB/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->aes:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return-void

    .line 39
    .end local v1    # "kg":Ljavax/crypto/KeyGenerator;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/security/GeneralSecurityException;
    sget-object v2, Lcom/somo/apptimiser/SomoEncryptionAes;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v3, "Cannot initialize encryptor"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->aes:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->sessionKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 64
    iget-object v1, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->aes:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/security/GeneralSecurityException;
    sget-object v1, Lcom/somo/apptimiser/SomoEncryptionAes;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v2, "Cannot ecrypt data"

    invoke-virtual {v1, v2, v0}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSessionKey()[B
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->rsaEncryptedSessionKey:[B

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->sessionKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v0

    invoke-super {p0, v0}, Lcom/somo/apptimiser/SomoEncryptionRsa;->encrypt([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->rsaEncryptedSessionKey:[B

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->rsaEncryptedSessionKey:[B

    return-object v0
.end method

.method public getSessionKeyAsBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->base64SessionKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/somo/apptimiser/SomoEncryptionAes;->getSessionKey()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/somo/apptimiser/SomoEncryptionAes;->getBase64([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->base64SessionKey:Ljava/lang/String;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEncryptionAes;->base64SessionKey:Ljava/lang/String;

    return-object v0
.end method
