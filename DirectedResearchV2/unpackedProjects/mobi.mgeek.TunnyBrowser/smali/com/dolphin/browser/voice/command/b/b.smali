.class public Lcom/dolphin/browser/voice/command/b/b;
.super Ljava/lang/Object;
.source "SecurityUtil.java"


# static fields
.field private static a:Ljava/security/Key;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 44
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/voice/command/b/b;->a:Ljava/security/Key;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "SecurityUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init key error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    nop

    :array_0
    .array-data 1
        -0x52t
        0x26t
        0x19t
        0x43t
        0x20t
        0x37t
        0x6dt
        -0x5t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, ""

    .line 108
    :goto_0
    return-object v0

    .line 102
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/b/b;->b([B)[B

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/dolphin/browser/voice/command/b/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 53
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    const-string v0, ""

    .line 60
    :goto_0
    return-object v0

    .line 56
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    array-length v3, p0

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-byte v4, p0, v0

    .line 58
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    :goto_0
    return-object v0

    .line 122
    :cond_0
    :try_start_0
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 123
    const/4 v2, 0x2

    sget-object v3, Lcom/dolphin/browser/voice/command/b/b;->a:Ljava/security/Key;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 125
    invoke-static {p0}, Lcom/dolphin/browser/voice/command/b/b;->c(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 126
    invoke-static {v1}, Lcom/dolphin/browser/util/cn;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    const-string v2, "DESDecrypt"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b([B)[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 81
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 88
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 89
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    new-array v0, v1, [B

    .line 145
    :cond_0
    return-object v0

    .line 136
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of the hex string must be 2x."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    .line 141
    new-array v0, v2, [B

    .line 142
    :goto_0
    if-ge v1, v2, :cond_0

    .line 143
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
