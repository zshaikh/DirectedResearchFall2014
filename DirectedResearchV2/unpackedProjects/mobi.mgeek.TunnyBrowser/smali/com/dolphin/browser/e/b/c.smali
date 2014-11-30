.class public Lcom/dolphin/browser/e/b/c;
.super Lcom/dolphin/browser/e/b/b;
.source "RSAKeyProvider.java"


# static fields
.field private static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/e/b/c;->d:[B

    return-void

    :array_0
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/e/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "RSA"

    return-object v0
.end method

.method protected a(Ljava/security/spec/KeySpec;Ljava/security/spec/KeySpec;)V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/e/b/b;->a(Ljava/security/spec/KeySpec;Ljava/security/spec/KeySpec;)V

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/e/b/c;->b:Ljava/security/PrivateKey;

    .line 77
    iget-object v1, p0, Lcom/dolphin/browser/e/b/c;->a:Ljava/security/PublicKey;

    .line 79
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 81
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/e/b/c;->a(Ljava/security/spec/KeySpec;)V

    .line 83
    :cond_0
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 89
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 90
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dolphin/browser/e/b/c;->a:Ljava/security/PublicKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 91
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    .line 94
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()[B
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/dolphin/browser/e/b/c;->d:[B

    return-object v0
.end method
