.class public abstract Lcom/dolphin/browser/e/b/b;
.super Ljava/lang/Object;
.source "KeyPairProvider.java"

# interfaces
.implements Lcom/dolphin/browser/e/b;


# static fields
.field private static final d:[B

.field private static final e:[B


# instance fields
.field protected a:Ljava/security/PublicKey;

.field protected b:Ljava/security/PrivateKey;

.field protected c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/e/b/b;->d:[B

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dolphin/browser/e/b/b;->e:[B

    return-void

    .line 62
    nop

    :array_0
    .array-data 1
        0x5t
        0x0t
    .end array-data

    .line 64
    nop

    :array_1
    .array-data 1
        0x2t
        0x1t
        0x0t
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/dolphin/browser/e/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/dolphin/browser/e/c;->a(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 209
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 210
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p3}, Lcom/dolphin/browser/e/b/b;->a(Ljava/io/InputStream;ZI)V

    .line 211
    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 250
    invoke-static {p1, v4, v4}, Lcom/dolphin/browser/e/b/b;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/e/b/b;->c()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/e/b/b;->a([B[B)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/dolphin/browser/e/b/b;->a([B[BI)V
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 255
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v0, v1}, Lcom/dolphin/browser/e/b/b;->a([B[BI)V

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;I)V
    .locals 1

    .prologue
    .line 261
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 262
    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 263
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/e/b/b;->a:Ljava/security/PublicKey;

    .line 264
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static final a(I)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 67
    const-string v0, "length"

    invoke-static {p0, v0}, Lcom/dolphin/browser/e/c;->a(ILjava/lang/String;)V

    .line 68
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_1

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 78
    :cond_0
    return-object v0

    .line 71
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v2, v0, 0x4

    .line 72
    add-int/lit8 v0, v2, 0x1

    new-array v0, v0, [B

    .line 73
    or-int/lit16 v3, v2, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 74
    invoke-static {p0}, Lcom/dolphin/browser/util/ai;->a(I)[B

    move-result-object v3

    .line 75
    :goto_0
    if-ge v1, v2, :cond_0

    .line 76
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v3, v5

    aput-byte v5, v0, v4

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 159
    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 160
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {p1, v0}, Lcom/dolphin/browser/e/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Bad PEM file."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p2, v0}, Lcom/dolphin/browser/e/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    invoke-static {p2, v0}, Lcom/dolphin/browser/e/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Bad PEM file."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V

    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/aa;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 176
    return-object v0
.end method

.method private static a([B[B)[B
    .locals 8

    .prologue
    const/16 v7, 0x30

    .line 118
    array-length v0, p1

    .line 119
    invoke-static {v0}, Lcom/dolphin/browser/e/b/b;->a(I)[B

    move-result-object v0

    .line 120
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    add-int/2addr v1, v2

    sget-object v2, Lcom/dolphin/browser/e/b/b;->d:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 121
    invoke-static {v1}, Lcom/dolphin/browser/e/b/b;->a(I)[B

    move-result-object v2

    .line 122
    array-length v3, p0

    .line 123
    invoke-static {v3}, Lcom/dolphin/browser/e/b/b;->a(I)[B

    move-result-object v4

    .line 124
    sget-object v5, Lcom/dolphin/browser/e/b/b;->e:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    array-length v6, v2

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    array-length v5, v4

    add-int/2addr v1, v5

    add-int/2addr v1, v3

    .line 125
    invoke-static {v1}, Lcom/dolphin/browser/e/b/b;->a(I)[B

    move-result-object v3

    .line 126
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v5, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 127
    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 128
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 129
    sget-object v1, Lcom/dolphin/browser/e/b/b;->e:[B

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 130
    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 131
    invoke-virtual {v5, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 132
    const/4 v1, 0x6

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 133
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 134
    invoke-virtual {v5, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 135
    sget-object v0, Lcom/dolphin/browser/e/b/b;->d:[B

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 136
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 137
    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 138
    invoke-virtual {v5, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 140
    invoke-static {v5}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 141
    return-object v0
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;ZI)V
    .locals 1

    .prologue
    .line 231
    packed-switch p3, :pswitch_data_0

    .line 239
    invoke-static {p1}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 240
    invoke-virtual {p0, v0, p3}, Lcom/dolphin/browser/e/b/b;->a([BI)V

    .line 243
    :goto_0
    if-eqz p2, :cond_0

    .line 244
    invoke-static {p1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 246
    :cond_0
    return-void

    .line 233
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/dolphin/browser/e/b/b;->a(Ljava/io/InputStream;I)V

    goto :goto_0

    .line 236
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/e/b/b;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Ljava/security/spec/KeySpec;)V
    .locals 1

    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 348
    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/e/b/b;->a:Ljava/security/PublicKey;

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/e/b/b;->b()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/e/b/b;->c:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    .line 357
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 354
    :catch_1
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/security/spec/KeySpec;Ljava/security/spec/KeySpec;)V
    .locals 2

    .prologue
    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 317
    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/e/b/b;->b:Ljava/security/PrivateKey;

    .line 320
    :cond_0
    if-eqz p2, :cond_1

    .line 321
    invoke-virtual {v0, p2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/e/b/b;->a:Ljava/security/PublicKey;

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/e/b/b;->b()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/e/b/b;->c:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method protected a([BI)V
    .locals 2

    .prologue
    .line 277
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    invoke-virtual {p0, p1, p1, p2}, Lcom/dolphin/browser/e/b/b;->a([B[BI)V

    .line 281
    return-void
.end method

.method protected a([B[BI)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 284
    if-eq p3, v0, :cond_0

    if-eqz p3, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    if-nez p3, :cond_1

    :try_start_0
    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 297
    :goto_0
    if-eqz p2, :cond_3

    .line 298
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/KeySpec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v3, v0

    .line 304
    :goto_2
    if-eqz p1, :cond_2

    .line 305
    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/KeySpec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v2, v0

    .line 310
    :goto_4
    invoke-virtual {p0, v2, v3}, Lcom/dolphin/browser/e/b/b;->a(Ljava/security/spec/KeySpec;Ljava/security/spec/KeySpec;)V

    .line 311
    return-void

    .line 291
    :cond_1
    :try_start_3
    const-class v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "failed to get key constructor."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 300
    :catch_1
    move-exception v0

    move-object v3, v2

    goto :goto_2

    .line 307
    :catch_2
    move-exception v0

    goto :goto_4

    :cond_2
    move-object v0, v2

    goto :goto_3

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method protected abstract b()I
.end method

.method protected abstract c()[B
.end method

.method public d()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/dolphin/browser/e/b/b;->c:I

    return v0
.end method

.method public e()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/dolphin/browser/e/b/b;->a:Ljava/security/PublicKey;

    return-object v0
.end method
