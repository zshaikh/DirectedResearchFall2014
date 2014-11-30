.class public Lcom/dolphin/browser/e/a/g;
.super Lcom/dolphin/browser/e/a/f;
.source "RSAECBCryptor.java"


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/e/b/b;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/dolphin/browser/e/a/f;-><init>(Lcom/dolphin/browser/e/b/b;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "RSA/ECB/PKCS1Padding"

    return-object v0
.end method

.method public b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 53
    invoke-static {p1, p2}, Lcom/dolphin/browser/e/a/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 54
    invoke-virtual {p0}, Lcom/dolphin/browser/e/a/g;->c()Ljavax/crypto/Cipher;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    :try_start_0
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 58
    new-array v2, v0, [B

    .line 59
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 60
    :goto_0
    if-lez v0, :cond_0

    .line 61
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 62
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 63
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .line 73
    :cond_0
    :goto_1
    return-void

    .line 70
    :catch_1
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 66
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public b([BII)[B
    .locals 3

    .prologue
    .line 29
    invoke-static {p1, p2, p3}, Lcom/dolphin/browser/e/a/g;->a([BII)V

    .line 30
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 31
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/e/a/g;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 33
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 34
    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 35
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 36
    return-object v2
.end method
