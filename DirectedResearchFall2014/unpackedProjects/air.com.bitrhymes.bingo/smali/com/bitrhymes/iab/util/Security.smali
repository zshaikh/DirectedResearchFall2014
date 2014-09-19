.class public Lcom/bitrhymes/iab/util/Security;
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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .parameter "encodedPublicKey"

    .prologue
    const-string v4, "IABUtil/Security"

    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/bitrhymes/iab/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 67
    .local v0, decodedKey:[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 68
    .local v2, keyFactory:Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/bitrhymes/iab/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    .line 69
    .end local v0           #decodedKey:[B
    .end local v2           #keyFactory:Ljava/security/KeyFactory;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 70
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 71
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 72
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "IABUtil/Security"

    const-string v3, "Invalid key specification."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 74
    .end local v1           #e:Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 75
    .local v1, e:Lcom/bitrhymes/iab/util/Base64DecoderException;
    const-string v3, "IABUtil/Security"

    const-string v3, "Base64 decoding failed."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "publicKey"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    const/4 v5, 0x0

    const-string v4, "IABUtil/Security"

    .line 92
    :try_start_0
    const-string v2, "SHA1withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 93
    .local v1, sig:Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 95
    invoke-static {p2}, Lcom/bitrhymes/iab/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const-string v2, "IABUtil/Security"

    const-string v3, "Signature verification failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/bitrhymes/iab/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    move v2, v5

    .line 109
    .end local v1           #sig:Ljava/security/Signature;
    :goto_0
    return v2

    .line 99
    .restart local v1       #sig:Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 100
    .end local v1           #sig:Ljava/security/Signature;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 101
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v2, "IABUtil/Security"

    const-string v2, "NoSuchAlgorithmException."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    move v2, v5

    .line 109
    goto :goto_0

    .line 102
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 103
    .local v0, e:Ljava/security/InvalidKeyException;
    const-string v2, "IABUtil/Security"

    const-string v2, "Invalid key specification."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    .end local v0           #e:Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 105
    .local v0, e:Ljava/security/SignatureException;
    const-string v2, "IABUtil/Security"

    const-string v2, "Signature exception."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 106
    .end local v0           #e:Ljava/security/SignatureException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 107
    .local v0, e:Lcom/bitrhymes/iab/util/Base64DecoderException;
    const-string v2, "IABUtil/Security"

    const-string v2, "Base64 decoding failed."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "base64PublicKey"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    const/4 v3, 0x0

    const-string v4, "IABUtil/Security"

    .line 40
    if-nez p1, :cond_0

    .line 41
    const-string v2, "IABUtil/Security"

    const-string v2, "data is null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 54
    :goto_0
    return v2

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    .local v1, verified:Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    invoke-static {p0}, Lcom/bitrhymes/iab/util/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 48
    .local v0, key:Ljava/security/PublicKey;
    invoke-static {v0, p1, p2}, Lcom/bitrhymes/iab/util/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    const-string v2, "IABUtil/Security"

    const-string v2, "signature does not match data."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 51
    goto :goto_0

    .line 54
    .end local v0           #key:Ljava/security/PublicKey;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
