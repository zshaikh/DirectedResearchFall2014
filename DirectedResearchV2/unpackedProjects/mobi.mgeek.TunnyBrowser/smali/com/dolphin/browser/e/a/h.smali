.class public abstract Lcom/dolphin/browser/e/a/h;
.super Lcom/dolphin/browser/e/a/b;
.source "SymmetricCipherCryptor.java"


# instance fields
.field protected a:Lcom/dolphin/browser/e/b/d;


# direct methods
.method protected constructor <init>(Lcom/dolphin/browser/e/b/d;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/dolphin/browser/e/a/b;-><init>()V

    .line 31
    const-string v0, "keyProvider"

    invoke-static {p1, v0}, Lcom/dolphin/browser/e/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/dolphin/browser/e/a/h;->a:Lcom/dolphin/browser/e/b/d;

    .line 33
    return-void
.end method


# virtual methods
.method protected a(I)Ljavax/crypto/Cipher;
    .locals 3

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/e/a/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/dolphin/browser/e/a/h;->a:Lcom/dolphin/browser/e/b/d;

    invoke-virtual {v1}, Lcom/dolphin/browser/e/b/d;->b()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/dolphin/browser/e/a/h;->a:Lcom/dolphin/browser/e/b/d;

    invoke-virtual {v2}, Lcom/dolphin/browser/e/b/d;->c()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v2

    .line 57
    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .line 68
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 68
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 63
    :catch_2
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 65
    :catch_3
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1
.end method

.method protected a([BIII)[B
    .locals 1

    .prologue
    .line 122
    invoke-static {p1, p2, p3}, Lcom/dolphin/browser/e/a/h;->a([BII)V

    .line 123
    invoke-virtual {p0, p4}, Lcom/dolphin/browser/e/a/h;->a(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .line 133
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1
.end method

.method public b([BII)[B
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/dolphin/browser/e/a/h;->a([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljavax/crypto/Cipher;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/e/a/h;->a(I)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/dolphin/browser/e/b/d;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/e/a/h;->a:Lcom/dolphin/browser/e/b/d;

    return-object v0
.end method
