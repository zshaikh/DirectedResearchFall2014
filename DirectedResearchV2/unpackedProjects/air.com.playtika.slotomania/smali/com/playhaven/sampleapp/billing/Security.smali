.class public Lcom/playhaven/sampleapp/billing/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;
    }
.end annotation


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "Security"

.field private static sKnownNonces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/playhaven/sampleapp/billing/Security;->RANDOM:Ljava/security/SecureRandom;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/playhaven/sampleapp/billing/Security;->sKnownNonces:Ljava/util/HashSet;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNonce()J
    .locals 4

    .prologue
    .line 80
    sget-object v2, Lcom/playhaven/sampleapp/billing/Security;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 81
    .local v0, "nonce":J
    sget-object v2, Lcom/playhaven/sampleapp/billing/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    return-wide v0
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 6
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    const-string v5, "Security"

    .line 206
    :try_start_0
    const-string v4, "UTF8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 207
    .local v3, "pubKeyBytes":[B
    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 208
    .local v0, "decodedKey":[B
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 209
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 220
    .end local v0    # "decodedKey":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    .end local v3    # "pubKeyBytes":[B
    :goto_0
    return-object v4

    .line 210
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 211
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 212
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 213
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v4, "Security"

    const-string v4, "Invalid key specification."

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 215
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 216
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "Security"

    const-string v4, "Could not decode Base64 data"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 220
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isNonceKnown(J)Z
    .locals 2
    .param p0, "nonce"    # J

    .prologue
    .line 90
    sget-object v0, Lcom/playhaven/sampleapp/billing/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeNonce(J)V
    .locals 2
    .param p0, "nonce"    # J

    .prologue
    .line 86
    sget-object v0, Lcom/playhaven/sampleapp/billing/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v5, "Security"

    .line 238
    :try_start_0
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 239
    .local v1, "sig":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 242
    const-string v3, "UTF8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 243
    .local v2, "sigBytes":[B
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    const-string v3, "Security"

    const-string v4, "Signature verification failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    move v3, v6

    .line 258
    .end local v1    # "sig":Ljava/security/Signature;
    .end local v2    # "sigBytes":[B
    :goto_0
    return v3

    .restart local v1    # "sig":Ljava/security/Signature;
    .restart local v2    # "sigBytes":[B
    :cond_0
    move v3, v4

    .line 247
    goto :goto_0

    .line 248
    .end local v1    # "sig":Ljava/security/Signature;
    .end local v2    # "sigBytes":[B
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 249
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "Security"

    const-string v3, "NoSuchAlgorithmException."

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    move v3, v6

    .line 258
    goto :goto_0

    .line 250
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 251
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v3, "Security"

    const-string v3, "Invalid key specification."

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 252
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 253
    .local v0, "e":Ljava/security/SignatureException;
    const-string v3, "Security"

    const-string v3, "Signature exception."

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 254
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 255
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "Security"

    const-string v3, "Could not encode to Base64"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .param p0, "signedData"    # Ljava/lang/String;
    .param p1, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    if-nez p0, :cond_0

    .line 107
    const-string p0, "Security"

    .end local p0    # "signedData":Ljava/lang/String;
    const-string p1, "data is null"

    .end local p1    # "signature":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/16 p0, 0x0

    .line 194
    :goto_0
    return-object p0

    .line 113
    .restart local p0    # "signedData":Ljava/lang/String;
    .restart local p1    # "signature":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 114
    .local v3, "verified":Z
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 128
    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAj4d6s1uq7G068thJNzCoTKSJOCIZ1MAr4czazeXMDSJoR4vaIvQlAQBNCHV5h/HwYkPLXNAM5EXX4CuXYzaTS/GQ7W0omfuQwLUN0bpH3Toa3O66dhNCAz7TACKREvn2rczIWZrtHJRe+9FcPPX0f49YCb/v9F5QZz+Fi4+YQq9HzgWM99Xxv3R6Fr0TFDynzXWfjSmQjBGBCul7iWE33c7pylvGwkl9fLJKh5WYEcywtv2xYE36MataGJ88WSQ437mMcWzfZofe0sXFDvbiIy6hqB8lzdaj7J84pcSUjzeSo3kHCb2Q3pjrxHRIxM2zmTTacKv875qu4PEbaKDybwIDAQAB"

    .line 135
    .local v3, "base64EncodedPublicKey":Ljava/lang/String;
    invoke-static {v3}, Lcom/playhaven/sampleapp/billing/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 136
    .local v3, "key":Ljava/security/PublicKey;
    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/playhaven/sampleapp/billing/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 137
    .local p1, "verified":Z
    if-nez p1, :cond_1

    .line 138
    const-string p0, "Security"

    .end local p0    # "signedData":Ljava/lang/String;
    const-string p1, "signature does not match data."

    .end local p1    # "verified":Z
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/16 p0, 0x0

    goto :goto_0

    .restart local p0    # "signedData":Ljava/lang/String;
    .restart local p1    # "verified":Z
    :cond_1
    move/from16 v16, p1

    .line 144
    .end local v3    # "key":Ljava/security/PublicKey;
    .end local p1    # "verified":Z
    .local v16, "verified":Z
    :goto_1
    const/4 v3, 0x0

    .line 145
    .local v3, "jTransactionsArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 146
    .local v6, "numTransactions":I
    const-wide/16 v4, 0x0

    .line 148
    .local v4, "nonce":J
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    .local p1, "jObject":Lorg/json/JSONObject;
    const-string p0, "nonce"

    .end local p0    # "signedData":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 152
    .end local v4    # "nonce":J
    .local v12, "nonce":J
    :try_start_1
    const-string p0, "orders"

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v11

    .line 153
    .end local v3    # "jTransactionsArray":Lorg/json/JSONArray;
    .local v11, "jTransactionsArray":Lorg/json/JSONArray;
    if-eqz v11, :cond_6

    .line 154
    :try_start_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-result p0

    .end local v6    # "numTransactions":I
    .local p0, "numTransactions":I
    move/from16 v14, p0

    .line 160
    .end local p0    # "numTransactions":I
    .local v14, "numTransactions":I
    :goto_2
    invoke-static {v12, v13}, Lcom/playhaven/sampleapp/billing/Security;->isNonceKnown(J)Z

    move-result p0

    if-nez p0, :cond_2

    .line 161
    const-string p0, "Security"

    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "jObject":Lorg/json/JSONObject;
    const-string v3, "Nonce not found: "

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/16 p0, 0x0

    goto :goto_0

    .line 156
    .end local v11    # "jTransactionsArray":Lorg/json/JSONArray;
    .end local v12    # "nonce":J
    .end local v14    # "numTransactions":I
    .restart local v3    # "jTransactionsArray":Lorg/json/JSONArray;
    .restart local v4    # "nonce":J
    .restart local v6    # "numTransactions":I
    :catch_0
    move-exception p0

    move-object/from16 p1, v3

    .end local v3    # "jTransactionsArray":Lorg/json/JSONArray;
    .local p1, "jTransactionsArray":Lorg/json/JSONArray;
    move-wide/from16 v17, v4

    .end local v4    # "nonce":J
    .local v17, "nonce":J
    move-wide/from16 v3, v17

    .line 157
    .end local v17    # "nonce":J
    .local v3, "nonce":J
    .local p0, "e":Lorg/json/JSONException;
    :goto_3
    const/16 p0, 0x0

    goto :goto_0

    .line 165
    .end local v3    # "nonce":J
    .end local v6    # "numTransactions":I
    .end local p0    # "e":Lorg/json/JSONException;
    .restart local v11    # "jTransactionsArray":Lorg/json/JSONArray;
    .restart local v12    # "nonce":J
    .restart local v14    # "numTransactions":I
    .local p1, "jObject":Lorg/json/JSONObject;
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v15, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;>;"
    const/16 p0, 0x0

    .end local p1    # "jObject":Lorg/json/JSONObject;
    .local p0, "i":I
    :goto_4
    move/from16 v0, p0

    move v1, v14

    if-lt v0, v1, :cond_3

    .line 193
    invoke-static {v12, v13}, Lcom/playhaven/sampleapp/billing/Security;->removeNonce(J)V

    move-object/from16 p0, v15

    .line 194
    goto/16 :goto_0

    .line 168
    :cond_3
    :try_start_3
    move-object v0, v11

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 169
    .local p1, "jElement":Lorg/json/JSONObject;
    const-string v3, "purchaseState"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 170
    .local v3, "response":I
    invoke-static {v3}, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->valueOf(I)Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    move-result-object v4

    .line 171
    .local v4, "purchaseState":Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;
    const-string v3, "productId"

    .end local v3    # "response":I
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "productId":Ljava/lang/String;
    const-string v3, "packageName"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "packageName":Ljava/lang/String;
    const-string v3, "purchaseTime"

    .end local v3    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 174
    .local v8, "purchaseTime":J
    const-string v3, "orderId"

    const-string v5, ""

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "orderId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 176
    .local v5, "notifyId":Ljava/lang/String;
    const-string v3, "notificationId"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    const-string v3, "notificationId"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    :cond_4
    const-string v3, "developerPayload"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, "developerPayload":Ljava/lang/String;
    sget-object p1, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->PURCHASED:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    .end local p1    # "jElement":Lorg/json/JSONObject;
    move-object v0, v4

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_5

    if-nez v16, :cond_5

    .line 167
    :goto_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 186
    :cond_5
    new-instance v3, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;

    .line 187
    invoke-direct/range {v3 .. v10}, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;-><init>(Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 186
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 189
    .end local v4    # "purchaseState":Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;
    .end local v5    # "notifyId":Ljava/lang/String;
    .end local v6    # "productId":Ljava/lang/String;
    .end local v7    # "orderId":Ljava/lang/String;
    .end local v8    # "purchaseTime":J
    .end local v10    # "developerPayload":Ljava/lang/String;
    :catch_1
    move-exception p0

    .line 190
    .local p0, "e":Lorg/json/JSONException;
    const-string p1, "Security"

    const-string v3, "JSON exception: "

    move-object/from16 v0, p1

    move-object v1, v3

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 156
    .end local v11    # "jTransactionsArray":Lorg/json/JSONArray;
    .end local v14    # "numTransactions":I
    .end local v15    # "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;>;"
    .end local p0    # "e":Lorg/json/JSONException;
    .local v3, "jTransactionsArray":Lorg/json/JSONArray;
    .local v6, "numTransactions":I
    .local p1, "jObject":Lorg/json/JSONObject;
    :catch_2
    move-exception p0

    move-object/from16 p1, v3

    .end local v3    # "jTransactionsArray":Lorg/json/JSONArray;
    .local p1, "jTransactionsArray":Lorg/json/JSONArray;
    move-wide v3, v12

    .end local v12    # "nonce":J
    .local v3, "nonce":J
    goto/16 :goto_3

    .end local v3    # "nonce":J
    .restart local v11    # "jTransactionsArray":Lorg/json/JSONArray;
    .restart local v12    # "nonce":J
    .local p1, "jObject":Lorg/json/JSONObject;
    :catch_3
    move-exception p0

    move-wide v3, v12

    .end local v12    # "nonce":J
    .restart local v3    # "nonce":J
    move-object/from16 p1, v11

    .end local v11    # "jTransactionsArray":Lorg/json/JSONArray;
    .local p1, "jTransactionsArray":Lorg/json/JSONArray;
    goto/16 :goto_3

    .end local v3    # "nonce":J
    .restart local v11    # "jTransactionsArray":Lorg/json/JSONArray;
    .restart local v12    # "nonce":J
    .local p1, "jObject":Lorg/json/JSONObject;
    :cond_6
    move v14, v6

    .end local v6    # "numTransactions":I
    .restart local v14    # "numTransactions":I
    goto/16 :goto_2

    .end local v11    # "jTransactionsArray":Lorg/json/JSONArray;
    .end local v12    # "nonce":J
    .end local v14    # "numTransactions":I
    .end local v16    # "verified":Z
    .local v3, "verified":Z
    .local p0, "signedData":Ljava/lang/String;
    .local p1, "signature":Ljava/lang/String;
    :cond_7
    move/from16 v16, v3

    .end local v3    # "verified":Z
    .restart local v16    # "verified":Z
    goto/16 :goto_1
.end method
