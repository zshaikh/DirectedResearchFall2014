.class Lcom/somo/apptimiser/SomoEncryptionRsa;
.super Lcom/somo/apptimiser/SomoEncryption;
.source "SomoEncryptionRsa.java"


# static fields
.field private static final log:Lcom/somo/apptimiser/SomoLogger;


# instance fields
.field private final pk:Ljava/security/PublicKey;

.field protected final publicKeySizeBits:I

.field private final rsa:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/somo/apptimiser/SomoLogger;->getLogger()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v0

    sput-object v0, Lcom/somo/apptimiser/SomoEncryptionRsa;->log:Lcom/somo/apptimiser/SomoLogger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 4
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/somo/apptimiser/SomoEncryption;-><init>()V

    .line 27
    :try_start_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iput v1, p0, Lcom/somo/apptimiser/SomoEncryptionRsa;->publicKeySizeBits:I

    .line 28
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, p1, p2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lcom/somo/apptimiser/SomoEncryptionRsa;->pk:Ljava/security/PublicKey;

    .line 30
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/somo/apptimiser/SomoEncryptionRsa;->rsa:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/security/GeneralSecurityException;
    sget-object v1, Lcom/somo/apptimiser/SomoEncryptionRsa;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v2, "Cannot initialize encryptor"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/somo/apptimiser/SomoEncryptionRsa;->rsa:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/somo/apptimiser/SomoEncryptionRsa;->pk:Ljava/security/PublicKey;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 41
    iget-object v1, p0, Lcom/somo/apptimiser/SomoEncryptionRsa;->rsa:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/security/GeneralSecurityException;
    sget-object v1, Lcom/somo/apptimiser/SomoEncryptionRsa;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v2, "Cannot ecrypt data"

    invoke-virtual {v1, v2, v0}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
