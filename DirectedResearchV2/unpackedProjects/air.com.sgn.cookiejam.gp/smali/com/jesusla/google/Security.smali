.class public Lcom/jesusla/google/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "Security"

.field private static sIdentity:Ljava/lang/String;

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
    .line 42
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/jesusla/google/Security;->RANDOM:Ljava/security/SecureRandom;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/jesusla/google/Security;->sKnownNonces:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNonce()J
    .locals 4

    .prologue
    .line 59
    sget-object v2, Lcom/jesusla/google/Security;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 60
    .local v0, "nonce":J
    sget-object v2, Lcom/jesusla/google/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    return-wide v0
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    const-string v4, "Security"

    .line 179
    :try_start_0
    invoke-static {p0}, Lcom/jesusla/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 180
    .local v0, "decodedKey":[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 181
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/jesusla/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    .line 182
    .end local v0    # "decodedKey":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 183
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 184
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 185
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "Security"

    const-string v3, "Invalid key specification."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 187
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 188
    .local v1, "e":Lcom/jesusla/util/Base64DecoderException;
    const-string v3, "Security"

    const-string v3, "Base64 decoding failed."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isNonceKnown(J)Z
    .locals 2
    .param p0, "nonce"    # J

    .prologue
    .line 69
    sget-object v0, Lcom/jesusla/google/Security;->sKnownNonces:Ljava/util/HashSet;

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
    .line 65
    sget-object v0, Lcom/jesusla/google/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public static setIdentity(Ljava/lang/String;)V
    .locals 0
    .param p0, "identity"    # Ljava/lang/String;

    .prologue
    .line 229
    sput-object p0, Lcom/jesusla/google/Security;->sIdentity:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const-string v4, "Security"

    .line 204
    const-string v2, "Security"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :try_start_0
    const-string v2, "SHA1withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 209
    .local v1, "sig":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 211
    invoke-static {p2}, Lcom/jesusla/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    const-string v2, "Security"

    const-string v3, "Signature verification failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/jesusla/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    move v2, v5

    .line 225
    .end local v1    # "sig":Ljava/security/Signature;
    :goto_0
    return v2

    .line 215
    .restart local v1    # "sig":Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 217
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "Security"

    const-string v2, "NoSuchAlgorithmException."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    move v2, v5

    .line 225
    goto :goto_0

    .line 218
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 219
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v2, "Security"

    const-string v2, "Invalid key specification."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 220
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 221
    .local v0, "e":Ljava/security/SignatureException;
    const-string v2, "Security"

    const-string v2, "Signature exception."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 222
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 223
    .local v0, "e":Lcom/jesusla/util/Base64DecoderException;
    const-string v2, "Security"

    const-string v2, "Base64 decoding failed."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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
            "Lcom/jesusla/google/VerifiedPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    if-nez p0, :cond_0

    .line 86
    const-string p0, "Security"

    .end local p0    # "signedData":Ljava/lang/String;
    const-string p1, "data is null"

    .end local p1    # "signature":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/16 p0, 0x0

    .line 167
    :goto_0
    return-object p0

    .line 90
    .restart local p0    # "signedData":Ljava/lang/String;
    .restart local p1    # "signature":Ljava/lang/String;
    :cond_0
    const-string v3, "Security"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "signedData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v3, 0x0

    .line 93
    .local v3, "verified":Z
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 107
    sget-object v3, Lcom/jesusla/google/Security;->sIdentity:Ljava/lang/String;

    .line 108
    .local v3, "base64EncodedPublicKey":Ljava/lang/String;
    invoke-static {v3}, Lcom/jesusla/google/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 109
    .local v3, "key":Ljava/security/PublicKey;
    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/jesusla/google/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 110
    .local p1, "verified":Z
    if-nez p1, :cond_1

    .line 111
    const-string p0, "Security"

    .end local p0    # "signedData":Ljava/lang/String;
    const-string p1, "signature does not match data."

    .end local p1    # "verified":Z
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/16 p0, 0x0

    goto :goto_0

    .restart local p0    # "signedData":Ljava/lang/String;
    .restart local p1    # "verified":Z
    :cond_1
    move/from16 v16, p1

    .line 117
    .end local v3    # "key":Ljava/security/PublicKey;
    .end local p1    # "verified":Z
    .local v16, "verified":Z
    :goto_1
    const/4 v3, 0x0

    .line 118
    .local v3, "jTransactionsArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 119
    .local v6, "numTransactions":I
    const-wide/16 v4, 0x0

    .line 121
    .local v4, "nonce":J
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    .local p1, "jObject":Lorg/json/JSONObject;
    const-string p0, "nonce"

    .end local p0    # "signedData":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 125
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

    .line 126
    .end local v3    # "jTransactionsArray":Lorg/json/JSONArray;
    .local v11, "jTransactionsArray":Lorg/json/JSONArray;
    if-eqz v11, :cond_6

    .line 127
    :try_start_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-result p0

    .end local v6    # "numTransactions":I
    .local p0, "numTransactions":I
    move/from16 v14, p0

    .line 133
    .end local p0    # "numTransactions":I
    .local v14, "numTransactions":I
    :goto_2
    invoke-static {v12, v13}, Lcom/jesusla/google/Security;->isNonceKnown(J)Z

    move-result p0

    if-nez p0, :cond_2

    .line 134
    const-string p0, "Security"

    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "jObject":Lorg/json/JSONObject;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nonce not found: "

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 129
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

    .line 130
    .end local v17    # "nonce":J
    .local v3, "nonce":J
    .local p0, "e":Lorg/json/JSONException;
    :goto_3
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 138
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

    .line 140
    .local v15, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jesusla/google/VerifiedPurchase;>;"
    const/16 p0, 0x0

    .end local p1    # "jObject":Lorg/json/JSONObject;
    .local p0, "i":I
    :goto_4
    move/from16 v0, p0

    move v1, v14

    if-ge v0, v1, :cond_5

    .line 141
    :try_start_3
    move-object v0, v11

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 142
    .local p1, "jElement":Lorg/json/JSONObject;
    const-string v3, "purchaseState"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 143
    .local v3, "response":I
    invoke-static {v3}, Lcom/jesusla/google/Consts$PurchaseState;->valueOf(I)Lcom/jesusla/google/Consts$PurchaseState;

    move-result-object v4

    .line 144
    .local v4, "purchaseState":Lcom/jesusla/google/Consts$PurchaseState;
    const-string v3, "productId"

    .end local v3    # "response":I
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "productId":Ljava/lang/String;
    const-string v3, "purchaseTime"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 147
    .local v8, "purchaseTime":J
    const-string v3, "orderId"

    const-string v5, ""

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "orderId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 149
    .local v5, "notifyId":Ljava/lang/String;
    const-string v3, "notificationId"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    const-string v3, "notificationId"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 152
    :cond_3
    const-string v3, "developerPayload"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 156
    .local v10, "developerPayload":Ljava/lang/String;
    sget-object p1, Lcom/jesusla/google/Consts$PurchaseState;->PURCHASED:Lcom/jesusla/google/Consts$PurchaseState;

    .end local p1    # "jElement":Lorg/json/JSONObject;
    move-object v0, v4

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    if-nez v16, :cond_4

    .line 140
    :goto_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 159
    :cond_4
    new-instance v3, Lcom/jesusla/google/VerifiedPurchase;

    invoke-direct/range {v3 .. v10}, Lcom/jesusla/google/VerifiedPurchase;-><init>(Lcom/jesusla/google/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 162
    .end local v4    # "purchaseState":Lcom/jesusla/google/Consts$PurchaseState;
    .end local v5    # "notifyId":Ljava/lang/String;
    .end local v6    # "productId":Ljava/lang/String;
    .end local v7    # "orderId":Ljava/lang/String;
    .end local v8    # "purchaseTime":J
    .end local v10    # "developerPayload":Ljava/lang/String;
    :catch_1
    move-exception p0

    .line 163
    .local p0, "e":Lorg/json/JSONException;
    const-string p1, "Security"

    const-string v3, "JSON exception: "

    move-object/from16 v0, p1

    move-object v1, v3

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 166
    .local p0, "i":I
    :cond_5
    invoke-static {v12, v13}, Lcom/jesusla/google/Security;->removeNonce(J)V

    move-object/from16 p0, v15

    .line 167
    goto/16 :goto_0

    .line 129
    .end local v11    # "jTransactionsArray":Lorg/json/JSONArray;
    .end local v14    # "numTransactions":I
    .end local v15    # "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jesusla/google/VerifiedPurchase;>;"
    .end local p0    # "i":I
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
