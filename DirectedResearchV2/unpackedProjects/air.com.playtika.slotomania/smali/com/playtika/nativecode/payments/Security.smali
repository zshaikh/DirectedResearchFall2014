.class public Lcom/playtika/nativecode/payments/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;
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
    .line 41
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/playtika/nativecode/payments/Security;->RANDOM:Ljava/security/SecureRandom;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/playtika/nativecode/payments/Security;->sKnownNonces:Ljava/util/HashSet;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNonce()J
    .locals 4

    .prologue
    .line 78
    sget-object v2, Lcom/playtika/nativecode/payments/Security;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 79
    .local v0, "nonce":J
    sget-object v2, Lcom/playtika/nativecode/payments/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    return-wide v0
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    const-string v4, "Security"

    .line 198
    :try_start_0
    invoke-static {p0}, Lcom/playtika/nativecode/payments/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 199
    .local v0, "decodedKey":[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 200
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/playtika/nativecode/payments/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    .line 201
    .end local v0    # "decodedKey":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 202
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 203
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 204
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "Security"

    const-string v3, "Invalid key specification."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 206
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 207
    .local v1, "e":Lcom/playtika/nativecode/payments/util/Base64DecoderException;
    const-string v3, "Security"

    const-string v3, "Base64 decoding failed."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isNonceKnown(J)Z
    .locals 2
    .param p0, "nonce"    # J

    .prologue
    .line 88
    sget-object v0, Lcom/playtika/nativecode/payments/Security;->sKnownNonces:Ljava/util/HashSet;

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
    .line 84
    sget-object v0, Lcom/playtika/nativecode/payments/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 85
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

    .line 227
    :try_start_0
    const-string v2, "SHA1withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 228
    .local v1, "sig":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 230
    invoke-static {p2}, Lcom/playtika/nativecode/payments/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    const-string v2, "Security"

    const-string v3, "Signature verification failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/playtika/nativecode/payments/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    move v2, v5

    .line 244
    .end local v1    # "sig":Ljava/security/Signature;
    :goto_0
    return v2

    .line 234
    .restart local v1    # "sig":Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 236
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "Security"

    const-string v2, "NoSuchAlgorithmException."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    move v2, v5

    .line 244
    goto :goto_0

    .line 237
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 238
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v2, "Security"

    const-string v2, "Invalid key specification."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 239
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 240
    .local v0, "e":Ljava/security/SignatureException;
    const-string v2, "Security"

    const-string v2, "Signature exception."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 242
    .local v0, "e":Lcom/playtika/nativecode/payments/util/Base64DecoderException;
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
            "Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 105
    const-string p0, "Security"

    .end local p0    # "signedData":Ljava/lang/String;
    const-string p1, "data is null"

    .end local p1    # "signature":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/16 p0, 0x0

    .line 186
    :goto_0
    return-object p0

    .line 111
    .restart local p0    # "signedData":Ljava/lang/String;
    .restart local p1    # "signature":Ljava/lang/String;
    :cond_0
    const/16 v16, 0x1

    .line 136
    .local v16, "verified":Z
    const/4 v3, 0x0

    .line 137
    .local v3, "jTransactionsArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 138
    .local v6, "numTransactions":I
    const-wide/16 v4, 0x0

    .line 140
    .local v4, "nonce":J
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "signature":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    .local p1, "jObject":Lorg/json/JSONObject;
    const-string p0, "nonce"

    .end local p0    # "signedData":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 144
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

    .line 145
    .end local v3    # "jTransactionsArray":Lorg/json/JSONArray;
    .local v11, "jTransactionsArray":Lorg/json/JSONArray;
    if-eqz v11, :cond_5

    .line 146
    :try_start_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-result p0

    .end local v6    # "numTransactions":I
    .local p0, "numTransactions":I
    move/from16 v14, p0

    .line 152
    .end local p0    # "numTransactions":I
    .local v14, "numTransactions":I
    :goto_1
    invoke-static {v12, v13}, Lcom/playtika/nativecode/payments/Security;->isNonceKnown(J)Z

    move-result p0

    if-nez p0, :cond_1

    .line 153
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

    .line 154
    const/16 p0, 0x0

    goto :goto_0

    .line 148
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

    .line 149
    .end local v17    # "nonce":J
    .local v3, "nonce":J
    .local p0, "e":Lorg/json/JSONException;
    :goto_2
    const/16 p0, 0x0

    goto :goto_0

    .line 157
    .end local v3    # "nonce":J
    .end local v6    # "numTransactions":I
    .end local p0    # "e":Lorg/json/JSONException;
    .restart local v11    # "jTransactionsArray":Lorg/json/JSONArray;
    .restart local v12    # "nonce":J
    .restart local v14    # "numTransactions":I
    .local p1, "jObject":Lorg/json/JSONObject;
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v15, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;>;"
    const/16 p0, 0x0

    .end local p1    # "jObject":Lorg/json/JSONObject;
    .local p0, "i":I
    :goto_3
    move/from16 v0, p0

    move v1, v14

    if-lt v0, v1, :cond_2

    .line 185
    invoke-static {v12, v13}, Lcom/playtika/nativecode/payments/Security;->removeNonce(J)V

    move-object/from16 p0, v15

    .line 186
    goto :goto_0

    .line 160
    :cond_2
    :try_start_3
    move-object v0, v11

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 161
    .local p1, "jElement":Lorg/json/JSONObject;
    const-string v3, "purchaseState"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 162
    .local v3, "response":I
    invoke-static {v3}, Lcom/playtika/nativecode/payments/Consts$PurchaseState;->valueOf(I)Lcom/playtika/nativecode/payments/Consts$PurchaseState;

    move-result-object v4

    .line 163
    .local v4, "purchaseState":Lcom/playtika/nativecode/payments/Consts$PurchaseState;
    const-string v3, "productId"

    .end local v3    # "response":I
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "productId":Ljava/lang/String;
    const-string v3, "purchaseTime"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 166
    .local v8, "purchaseTime":J
    const-string v3, "orderId"

    const-string v5, ""

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "orderId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 168
    .local v5, "notifyId":Ljava/lang/String;
    const-string v3, "notificationId"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    const-string v3, "notificationId"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    :cond_3
    const-string v3, "developerPayload"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 175
    .local v10, "developerPayload":Ljava/lang/String;
    sget-object p1, Lcom/playtika/nativecode/payments/Consts$PurchaseState;->PURCHASED:Lcom/playtika/nativecode/payments/Consts$PurchaseState;

    .end local p1    # "jElement":Lorg/json/JSONObject;
    move-object v0, v4

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    if-nez v16, :cond_4

    .line 159
    :goto_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 178
    :cond_4
    new-instance v3, Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;

    .line 179
    invoke-direct/range {v3 .. v10}, Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;-><init>(Lcom/playtika/nativecode/payments/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 178
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 181
    .end local v4    # "purchaseState":Lcom/playtika/nativecode/payments/Consts$PurchaseState;
    .end local v5    # "notifyId":Ljava/lang/String;
    .end local v6    # "productId":Ljava/lang/String;
    .end local v7    # "orderId":Ljava/lang/String;
    .end local v8    # "purchaseTime":J
    .end local v10    # "developerPayload":Ljava/lang/String;
    :catch_1
    move-exception p0

    .line 182
    .local p0, "e":Lorg/json/JSONException;
    const-string p1, "Security"

    const-string v3, "JSON exception: "

    move-object/from16 v0, p1

    move-object v1, v3

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 148
    .end local v11    # "jTransactionsArray":Lorg/json/JSONArray;
    .end local v14    # "numTransactions":I
    .end local v15    # "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;>;"
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
    goto/16 :goto_2

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
    goto/16 :goto_2

    .end local v3    # "nonce":J
    .restart local v11    # "jTransactionsArray":Lorg/json/JSONArray;
    .restart local v12    # "nonce":J
    .local p1, "jObject":Lorg/json/JSONObject;
    :cond_5
    move v14, v6

    .end local v6    # "numTransactions":I
    .restart local v14    # "numTransactions":I
    goto/16 :goto_1
.end method
