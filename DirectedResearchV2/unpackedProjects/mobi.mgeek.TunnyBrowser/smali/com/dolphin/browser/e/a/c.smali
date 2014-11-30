.class public abstract Lcom/dolphin/browser/e/a/c;
.super Lcom/dolphin/browser/e/a/b;
.source "PublicKeyCryptor.java"


# instance fields
.field protected a:Lcom/dolphin/browser/e/b/b;


# direct methods
.method protected constructor <init>(Lcom/dolphin/browser/e/b/b;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dolphin/browser/e/a/b;-><init>()V

    .line 29
    const-string v0, "keyProvider"

    invoke-static {p1, v0}, Lcom/dolphin/browser/e/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/dolphin/browser/e/a/c;->a:Lcom/dolphin/browser/e/b/b;

    .line 31
    return-void
.end method

.method private a(ILjava/security/Key;)Ljavax/crypto/Cipher;
    .locals 1

    .prologue
    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/e/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 258
    :goto_0
    return-object v0

    .line 248
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 258
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :catch_1
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 254
    :catch_2
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 100
    invoke-static {p1, p2}, Lcom/dolphin/browser/e/a/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 101
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dolphin/browser/e/a/c;->a:Lcom/dolphin/browser/e/b/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/e/b/b;->e()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/e/a/c;->a(ILjava/security/Key;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    const/16 v0, 0x1000

    :try_start_0
    new-array v2, v0, [B

    .line 105
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 106
    :goto_0
    if-lez v0, :cond_0

    .line 107
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    .line 108
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 109
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    .line 112
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :cond_1
    :goto_1
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 114
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public b([BII)[B
    .locals 2

    .prologue
    .line 68
    invoke-static {p1, p2, p3}, Lcom/dolphin/browser/e/a/c;->a([BII)V

    .line 69
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dolphin/browser/e/a/c;->a:Lcom/dolphin/browser/e/b/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/e/b/b;->e()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/e/a/c;->a(ILjava/security/Key;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .line 79
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1
.end method

.method protected c()Ljavax/crypto/Cipher;
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dolphin/browser/e/a/c;->a:Lcom/dolphin/browser/e/b/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/e/b/b;->e()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/e/a/c;->a(ILjava/security/Key;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/e/a/c;->a:Lcom/dolphin/browser/e/b/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/e/b/b;->d()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/dolphin/browser/e/a/c;->d()I

    move-result v0

    return v0
.end method
