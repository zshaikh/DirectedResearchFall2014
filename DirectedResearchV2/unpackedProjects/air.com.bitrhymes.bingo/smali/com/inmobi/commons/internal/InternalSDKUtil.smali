.class public Lcom/inmobi/commons/internal/InternalSDKUtil;
.super Ljava/lang/Object;
.source "InternalSDKUtil.java"


# static fields
.field public static final INMOBI_SDK_RELEASE_VERSION:Ljava/lang/String; = "3.6.1"

.field static final a:Ljava/lang/String; = "IMCOMMONS_3.6.1"

.field private static final b:Ljava/lang/String; = "3.6.1"

.field private static final c:Ljava/lang/String; = "C10F7968CFE2C76AC6F0650C877806D4514DE58FC239592D2385BCE5609A84B2A0FBDAF29B05505EAD1FDFEF3D7209ACBF34B5D0A806DF18147EA9C0337D6B5B"

.field private static final d:Ljava/lang/String; = "010001"

.field private static final e:Ljava/lang/String; = "1"

.field private static f:I = 0x0

.field private static g:Ljava/lang/String; = null

.field private static final h:Ljava/lang/String; = "getRotation"

.field private static final i:Ljava/lang/String; = "getOrientation"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->f:I

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const-string v0, "UTF-8"

    .line 189
    const-string v0, ""

    .line 194
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 196
    array-length v2, v1

    new-array v2, v2, [B

    .line 197
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 199
    const/4 v4, 0x0

    :goto_0
    array-length v5, v1

    if-lt v4, v5, :cond_0

    .line 202
    const/4 v1, 0x2

    invoke-static {v2, v1}, Lcom/inmobi/commons/internal/Base64;->encode([BI)[B

    move-result-object v1

    .line 203
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v2

    .line 212
    :goto_1
    return-object v0

    .line 200
    :cond_0
    aget-byte v5, v1, v4

    array-length v6, v3

    rem-int v6, v4, v6

    aget-byte v6, v3, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    const-string v2, "IMCOMMONS_3.6.1"

    .line 209
    const-string v3, "Exception in xor with random integer"

    .line 208
    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a([BILjavax/crypto/Cipher;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x40

    const/4 v4, 0x0

    .line 247
    new-array v0, v4, [B

    .line 248
    new-array v0, v4, [B

    .line 250
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v1, v2

    .line 251
    :goto_0
    array-length v2, p0

    .line 253
    new-array v3, v1, [B

    move v7, v4

    move-object v4, v0

    move v0, v7

    .line 255
    :goto_1
    if-lt v0, v2, :cond_1

    .line 268
    invoke-virtual {p2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 269
    invoke-static {v4, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B[B)[B

    move-result-object v0

    .line 271
    return-object v0

    :cond_0
    move v1, v2

    .line 250
    goto :goto_0

    .line 256
    :cond_1
    if-lez v0, :cond_2

    rem-int v5, v0, v1

    if-nez v5, :cond_2

    .line 257
    invoke-virtual {p2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 258
    invoke-static {v4, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B[B)[B

    move-result-object v3

    .line 260
    add-int/lit8 v4, v0, 0x40

    if-le v4, v2, :cond_3

    .line 261
    sub-int v4, v2, v0

    .line 263
    :goto_2
    new-array v4, v4, [B

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    .line 265
    :cond_2
    rem-int v5, v0, v1

    aget-byte v6, p0, v0

    aput-byte v6, v3, v5

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_2
.end method

.method private static a([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 275
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    move v1, v3

    .line 276
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    move v1, v3

    .line 279
    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 282
    return-object v0

    .line 277
    :cond_0
    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_1
    array-length v2, p0

    add-int/2addr v2, v1

    aget-byte v3, p1, v1

    aput-byte v3, v0, v2

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    const/16 v0, 0x10

    :try_start_0
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 53
    const/4 v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    shr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    aput-char v3, v1, v2

    const/4 v2, 0x1

    and-int/lit8 v3, p0, 0xf

    aget-char v0, v0, v3

    aput-char v0, v1, v2

    .line 54
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static checkNetworkAvailibility(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 470
    if-nez p0, :cond_0

    move v0, v1

    .line 475
    :goto_0
    return v0

    .line 472
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 473
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    .line 474
    goto :goto_0

    .line 475
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public static encryptRSA(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 219
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "C10F7968CFE2C76AC6F0650C877806D4514DE58FC239592D2385BCE5609A84B2A0FBDAF29B05505EAD1FDFEF3D7209ACBF34B5D0A806DF18147EA9C0337D6B5B"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 220
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "010001"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 221
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 222
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v4, v0, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 224
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 223
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 226
    const-string v2, "RSA/ECB/nopadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 227
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 229
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 231
    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([BILjavax/crypto/Cipher;)[B

    move-result-object v0

    .line 234
    const/4 v2, 0x0

    .line 233
    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Base64;->encode([BI)[B

    move-result-object v0

    .line 236
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 241
    :goto_0
    return-object v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    const-string v2, "IMCOMMONS_3.6.1"

    const-string v3, "Exception in encryptRSA"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string v0, "android_id"

    .line 313
    const/4 v0, 0x0

    .line 315
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 316
    const-string v2, "android_id"

    .line 315
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 319
    :goto_0
    if-nez v0, :cond_0

    .line 321
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 322
    const-string v2, "android_id"

    .line 321
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 326
    :cond_0
    :goto_1
    return-object v0

    .line 323
    :catch_0
    move-exception v1

    goto :goto_1

    .line 317
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getAndroidIdMD5(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 451
    :try_start_0
    invoke-static {p0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 452
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 453
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 454
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 456
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 457
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 460
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    :goto_1
    return-object v0

    .line 458
    :cond_0
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    const-string v1, "IMCOMMONS_3.6.1"

    const-string v2, "Exception in getting MD5 Android Id"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getConnectivityType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "carrier"

    .line 331
    const/4 v0, 0x0

    .line 333
    :try_start_0
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 335
    const-string v1, "connectivity"

    .line 334
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 336
    if-eqz p0, :cond_0

    .line 337
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 339
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 340
    if-ne v2, v3, :cond_1

    .line 341
    const-string v0, "wifi"

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 342
    :cond_1
    if-nez v2, :cond_0

    .line 343
    const-string v0, "carrier"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    if-ne v1, v3, :cond_2

    .line 345
    :try_start_1
    const-string v0, "gprs"

    goto :goto_0

    .line 346
    :cond_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 347
    const-string v0, "edge"

    goto :goto_0

    .line 348
    :cond_3
    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    .line 349
    const-string v0, "umts"

    goto :goto_0

    .line 350
    :cond_4
    if-nez v1, :cond_5

    .line 351
    const-string v0, "carrier"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 357
    :goto_1
    const-string v2, "IMCOMMONS_3.6.1"

    const-string v3, "Error getting the network info"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 356
    :catch_1
    move-exception v0

    move-object v1, v4

    goto :goto_1

    :cond_5
    move-object v0, v4

    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/view/Display;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-class v0, Landroid/view/Display;

    .line 384
    const/16 v0, -0x3e7

    .line 387
    :try_start_0
    const-class v1, Landroid/view/Display;

    .line 388
    const-string v2, "getRotation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 397
    :goto_0
    if-eqz v1, :cond_0

    .line 399
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 403
    :cond_0
    :goto_1
    return v0

    .line 389
    :catch_0
    move-exception v1

    .line 391
    :try_start_2
    const-class v1, Landroid/view/Display;

    .line 392
    const-string v2, "getOrientation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_0

    .line 393
    :catch_1
    move-exception v1

    move-object v1, v4

    goto :goto_0

    .line 400
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static getODIN1(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 95
    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v5

    .line 113
    :goto_0
    return-object v0

    .line 97
    :cond_1
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 101
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_2

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_2
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 107
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v1, "IMCOMMONS_3.6.1"

    const-string v2, "Exception in getting ODIN-1"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 113
    goto :goto_0
.end method

.method public static getODIN1MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 423
    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v5

    .line 444
    :goto_0
    return-object v0

    .line 427
    :cond_1
    invoke-static {p0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    if-nez v0, :cond_2

    move-object v0, v5

    .line 430
    goto :goto_0

    .line 432
    :cond_2
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 433
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 434
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 436
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 437
    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_3

    .line 440
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 438
    :cond_3
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    const-string v0, "IMCOMMONS_3.6.1"

    const-string v1, "Error generating Odin1"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 444
    goto :goto_0
.end method

.method public static getRSAKeyVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "1"

    return-object v0
.end method

.method public static getUIDMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const-string v8, "O1:\'"

    const-string v7, ","

    const-string v6, "\'"

    .line 120
    const/4 v0, 0x0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    const/4 v2, 0x0

    .line 124
    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    if-eqz p0, :cond_0

    .line 126
    invoke-static {p0, p5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    const-string v3, "LID:\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v2, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v5

    .line 133
    :cond_0
    if-eqz p1, :cond_2

    .line 134
    if-ne v2, v5, :cond_1

    .line 135
    const-string v2, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    invoke-static {p1, p5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    const-string v3, "SID:\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v2, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v5

    .line 144
    :cond_2
    if-eqz p3, :cond_4

    .line 145
    if-ne v2, v5, :cond_3

    .line 146
    const-string v2, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_3
    invoke-static {p3, p5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    const-string v3, "UM5:\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v2, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v5

    .line 155
    :cond_4
    if-gtz p4, :cond_8

    .line 156
    if-eqz p2, :cond_6

    .line 157
    if-ne v2, v5, :cond_5

    .line 158
    const-string v2, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_5
    invoke-static {p2, p5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    const-string v3, "O1:\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v2, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v5

    .line 179
    :cond_6
    :goto_0
    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    if-ne v2, v5, :cond_7

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->encryptRSA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_7
    return-object v0

    .line 167
    :cond_8
    if-eqz p2, :cond_6

    and-int/lit8 v3, p4, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    .line 168
    and-int/lit8 v3, p4, 0x1

    if-ne v3, v5, :cond_6

    .line 169
    if-ne v2, v5, :cond_9

    .line 170
    const-string v2, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_9
    invoke-static {p2, p5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    const-string v3, "O1:\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v2, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v5

    .line 176
    goto :goto_0
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 370
    const-class v0, Lcom/inmobi/commons/internal/InternalSDKUtil;

    monitor-enter v0

    .line 371
    :try_start_0
    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 373
    :try_start_1
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 374
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    :cond_1
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->g:Ljava/lang/String;

    return-object v0

    .line 370
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 375
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getWhetherTablet(III)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 408
    if-le p1, p2, :cond_1

    .line 409
    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    move v0, v1

    .line 416
    :goto_0
    return v0

    .line 412
    :cond_1
    if-ge p1, p2, :cond_3

    .line 413
    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    :cond_2
    move v0, v1

    .line 414
    goto :goto_0

    .line 416
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized incrementBaseUrl()I
    .locals 2

    .prologue
    .line 286
    const-class v0, Lcom/inmobi/commons/internal/InternalSDKUtil;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->f:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->f:I

    .line 287
    sget v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 286
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static validateAppId(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "IMCOMMONS_3.6.1"

    .line 292
    if-nez p0, :cond_0

    .line 293
    const-string v0, "IMCOMMONS_3.6.1"

    .line 294
    const-string v0, "appId is null"

    .line 293
    invoke-static {v3, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 308
    :goto_0
    return v0

    .line 298
    :cond_0
    const-string v0, "(x)+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    const-string v0, "IMCOMMONS_3.6.1"

    .line 300
    const-string v0, "appId is all xxxxxxx"

    .line 299
    invoke-static {v3, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 301
    goto :goto_0

    .line 303
    :cond_1
    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    const-string v0, "IMCOMMONS_3.6.1"

    .line 305
    const-string v0, "appId is all blank"

    .line 304
    invoke-static {v3, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 306
    goto :goto_0

    .line 308
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
