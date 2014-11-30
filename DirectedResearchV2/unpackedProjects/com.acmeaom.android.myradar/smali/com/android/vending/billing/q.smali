.class public abstract Lcom/android/vending/billing/q;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/security/SecureRandom;

.field private static b:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/android/vending/billing/q;->a:Ljava/security/SecureRandom;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vending/billing/q;->b:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 80
    sget-object v0, Lcom/android/vending/billing/q;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 81
    sget-object v2, Lcom/android/vending/billing/q;->b:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    return-wide v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 197
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 203
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "vending_public_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3

    .prologue
    .line 215
    :try_start_0
    invoke-static {p0}, Lcom/google/android/b/b/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 216
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 217
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/b/b/b; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 220
    :catch_1
    move-exception v0

    .line 221
    const-string v1, "Security"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 223
    :catch_2
    move-exception v0

    .line 224
    const-string v1, "Security"

    const-string v2, "Base64 decoding failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    const-string v2, "Security"

    const-string v3, "data is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v2, 0x0

    .line 190
    :goto_0
    return-object v2

    .line 115
    :cond_0
    const/4 v2, 0x0

    .line 116
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 130
    invoke-static/range {p0 .. p0}, Lcom/android/vending/billing/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {v2}, Lcom/android/vending/billing/q;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 132
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/android/vending/billing/q;->a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 133
    if-nez v2, :cond_1

    .line 134
    const-string v2, "Security"

    const-string v3, "signature does not match data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v10, v2

    .line 141
    :goto_1
    const/4 v2, 0x0

    .line 144
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    const-string v4, "nonce"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 148
    const-string v4, "orders"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 149
    if-eqz v16, :cond_6

    .line 150
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v11, v2

    .line 156
    :goto_2
    invoke-static {v14, v15}, Lcom/android/vending/billing/q;->b(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 157
    const-string v2, "Security"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nonce not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v2, 0x0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v2

    .line 153
    const/4 v2, 0x0

    goto :goto_0

    .line 161
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 163
    const/4 v2, 0x0

    move v13, v2

    :goto_3
    if-ge v13, v11, :cond_5

    .line 164
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 165
    const-string v3, "purchaseState"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 166
    invoke-static {v3}, Lcom/android/vending/billing/h;->a(I)Lcom/android/vending/billing/h;

    move-result-object v3

    .line 167
    const-string v4, "productId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    const-string v4, "packageName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    const-string v4, "purchaseTime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 170
    const-string v4, "orderId"

    const-string v6, ""

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 171
    const/4 v4, 0x0

    .line 172
    const-string v9, "notificationId"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 173
    const-string v4, "notificationId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    :cond_3
    const-string v9, "developerPayload"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 179
    sget-object v2, Lcom/android/vending/billing/h;->a:Lcom/android/vending/billing/h;

    if-ne v3, v2, :cond_4

    if-nez v10, :cond_4

    .line 163
    :goto_4
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_3

    .line 182
    :cond_4
    new-instance v2, Lcom/android/vending/billing/r;

    invoke-direct/range {v2 .. v9}, Lcom/android/vending/billing/r;-><init>(Lcom/android/vending/billing/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 185
    :catch_1
    move-exception v2

    .line 186
    const-string v3, "Security"

    const-string v4, "JSON exception: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 189
    :cond_5
    invoke-static {v14, v15}, Lcom/android/vending/billing/q;->a(J)V

    move-object v2, v12

    .line 190
    goto/16 :goto_0

    :cond_6
    move v11, v2

    goto/16 :goto_2

    :cond_7
    move v10, v2

    goto/16 :goto_1
.end method

.method public static a(J)V
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/android/vending/billing/q;->b:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public static a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 244
    :try_start_0
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 245
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 247
    invoke-static {p2}, Lcom/google/android/b/b/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    const-string v1, "Security"

    const-string v2, "Signature verification failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/b/b/b; {:try_start_0 .. :try_end_0} :catch_4

    .line 268
    :goto_0
    return v0

    .line 251
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 254
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hash algorithm not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    const-string v2, "Security"

    const-string v3, "Thanks, Sergey."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 257
    :cond_1
    throw v1

    .line 259
    :catch_1
    move-exception v1

    .line 260
    const-string v1, "Security"

    const-string v2, "NoSuchAlgorithmException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :catch_2
    move-exception v1

    .line 262
    const-string v1, "Security"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :catch_3
    move-exception v1

    .line 264
    const-string v1, "Security"

    const-string v2, "Signature exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :catch_4
    move-exception v1

    .line 266
    const-string v1, "Security"

    const-string v2, "Base64 decoding failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(J)Z
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/android/vending/billing/q;->b:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
