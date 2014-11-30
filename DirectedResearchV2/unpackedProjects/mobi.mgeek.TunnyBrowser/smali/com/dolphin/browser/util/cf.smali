.class public Lcom/dolphin/browser/util/cf;
.super Ljava/lang/Object;
.source "SecurityUtil.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "SecurityUtil"

    sput-object v0, Lcom/dolphin/browser/util/cf;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, ""

    .line 102
    :goto_0
    return-object v0

    .line 96
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/cf;->c([B)[B

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/dolphin/browser/util/cf;->a([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 102
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 210
    :try_start_0
    invoke-static {p1}, Lcom/dolphin/browser/util/cn;->k(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-static {p0}, Lcom/dolphin/browser/util/cn;->e(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 184
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 186
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 187
    const-string v1, "DES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 188
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "12345678"

    invoke-static {v3}, Lcom/dolphin/browser/util/cn;->e(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 190
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 191
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 192
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/aa;->b([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    const-string v0, ""

    .line 54
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/bh;->a([BZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 132
    if-nez p0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    invoke-static {v2}, Lcom/dolphin/browser/util/cf;->a(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 142
    if-eqz v2, :cond_0

    .line 144
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    sget-object v2, Lcom/dolphin/browser/util/cf;->a:Ljava/lang/String;

    const-string v3, "Could not close stream"

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 139
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 140
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    if-eqz v2, :cond_0

    .line 144
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 145
    :catch_2
    move-exception v1

    .line 146
    sget-object v2, Lcom/dolphin/browser/util/cf;->a:Ljava/lang/String;

    const-string v3, "Could not close stream"

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_2

    .line 144
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 147
    :cond_2
    :goto_3
    throw v0

    .line 145
    :catch_3
    move-exception v1

    .line 146
    sget-object v2, Lcom/dolphin/browser/util/cf;->a:Ljava/lang/String;

    const-string v3, "Could not close stream"

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 142
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 139
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 106
    if-nez p0, :cond_0

    .line 128
    :goto_0
    return-object v0

    .line 111
    :cond_0
    const/16 v1, 0xfbc

    new-array v1, v1, [B

    .line 114
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 116
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 117
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 121
    :catch_0
    move-exception v1

    .line 122
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 119
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    .line 123
    :catch_1
    move-exception v1

    .line 124
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 125
    :catch_2
    move-exception v1

    .line 126
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a([BLjava/security/Key;)[B
    .locals 2

    .prologue
    .line 166
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 167
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 168
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    const-string v0, "dolphinbrowser"

    invoke-static {v0, p0}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 220
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p1, v1}, Lcom/dolphin/browser/util/aa;->a(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/dolphin/browser/util/cf;->b(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 221
    invoke-static {v1}, Lcom/dolphin/browser/util/cn;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;[B)[B
    .locals 4

    .prologue
    .line 196
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-static {p0}, Lcom/dolphin/browser/util/cn;->e(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 197
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 200
    const-string v1, "DES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 201
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "12345678"

    invoke-static {v3}, Lcom/dolphin/browser/util/cn;->e(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 203
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 204
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B)[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 65
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 66
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b([BLjava/security/Key;)[B
    .locals 2

    .prologue
    .line 172
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 173
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 174
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const-string v0, "dolphinbrowser"

    invoke-static {v0, p0}, Lcom/dolphin/browser/util/cf;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c([B)[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 75
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 82
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 83
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d([B)Ljava/security/PublicKey;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 160
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 161
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 162
    return-object v0
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 264
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/dolphin/browser/util/cf;->e([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 268
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/dolphin/browser/util/cf;->g([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e([B)[B
    .locals 1

    .prologue
    .line 245
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 247
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 250
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    invoke-static {p0}, Lcom/dolphin/browser/util/cf;->e([B)[B

    move-result-object v0

    .line 281
    invoke-static {v0}, Lcom/dolphin/browser/util/cf;->g([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    array-length v3, p0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, p0, v0

    .line 306
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
