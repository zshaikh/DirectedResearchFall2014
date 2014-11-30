.class public Lcom/gamesys/android/billing/google/util/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "IABUtil/Security"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64Key(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 131
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 141
    .end local p0    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 135
    .restart local p0    # "key":Ljava/lang/String;
    :cond_1
    const/16 v4, 0x4bc

    .local v4, "xorKey":I
    const/16 v0, 0x7be

    .local v0, "andKey":I
    const/16 v2, 0x3d

    .line 136
    .local v2, "orKey":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 137
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_2

    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    xor-int/lit16 v5, v5, 0x33f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    invoke-static {p0}, Lcom/gamesys/android/billing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 80
    .local v0, "decodedKey":[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 81
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/gamesys/android/billing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    .line 82
    .end local v0    # "decodedKey":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 84
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "IABUtil/Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 87
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    .line 88
    .local v1, "e":Lcom/gamesys/android/billing/util/Base64DecoderException;
    const-string v3, "IABUtil/Security"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "signedVersionOfData"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 104
    :try_start_0
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 105
    .local v1, "sig":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 107
    invoke-static {p2}, Lcom/gamesys/android/billing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    const-string v3, "IABUtil/Security"

    const-string v4, "Signature verification failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/gamesys/android/billing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 121
    .end local v1    # "sig":Ljava/security/Signature;
    :goto_0
    return v2

    .line 111
    .restart local v1    # "sig":Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "IABUtil/Security"

    const-string v4, "NoSuchAlgorithmException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 115
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v3, "IABUtil/Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 117
    .local v0, "e":Ljava/security/SignatureException;
    const-string v3, "IABUtil/Security"

    const-string v4, "Signature exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 119
    .local v0, "e":Lcom/gamesys/android/billing/util/Base64DecoderException;
    const-string v3, "IABUtil/Security"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "base64PublicKey"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "signedVersionOfData"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 53
    if-nez p1, :cond_1

    .line 54
    const-string v2, "IABUtil/Security"

    const-string v3, "data is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v2, 0x0

    .line 68
    :cond_0
    :goto_0
    return v2

    .line 58
    :cond_1
    const/4 v1, 0x0

    .line 59
    .local v1, "verified":Z
    const-string v3, "IABUtil/Security"

    const-string v4, "Verifying purchase locally"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    invoke-static {p0}, Lcom/gamesys/android/billing/google/util/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 62
    .local v0, "key":Ljava/security/PublicKey;
    invoke-static {v0, p1, p2}, Lcom/gamesys/android/billing/google/util/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 63
    if-nez v1, :cond_0

    .line 64
    const-string v3, "IABUtil/Security"

    const-string v4, "Signature does not match data."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
