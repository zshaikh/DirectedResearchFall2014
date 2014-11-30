.class public final Lcom/twitter/android/network/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final d:Ljava/util/Random;

.field private static final e:Lz;

.field private static f:[B

.field private static g:[B

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:[B

.field private static k:[B


# instance fields
.field public final c:Lcom/twitter/android/network/c;

.field private final l:I

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x7

    const/16 v3, 0x16

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/twitter/android/network/i;->d:Ljava/util/Random;

    new-instance v0, Lz;

    const-string v1, "-._~"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/twitter/android/network/i;->e:Lz;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/android/network/i;->f:[B

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/twitter/android/network/i;->g:[B

    sget-object v0, Lcom/twitter/android/network/i;->f:[B

    invoke-static {v3, v0}, Lcom/twitter/android/network/i;->a(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/network/i;->h:Ljava/lang/String;

    sget-object v0, Lcom/twitter/android/network/i;->g:[B

    invoke-static {v3, v0}, Lcom/twitter/android/network/i;->a(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/network/i;->i:Ljava/lang/String;

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/twitter/android/network/i;->j:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/twitter/android/network/i;->k:[B

    sget-object v0, Lcom/twitter/android/network/i;->k:[B

    invoke-static {v4, v0}, Lcom/twitter/android/network/i;->a(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/network/i;->a:Ljava/lang/String;

    sget-object v0, Lcom/twitter/android/network/i;->j:[B

    invoke-static {v4, v0}, Lcom/twitter/android/network/i;->a(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/network/i;->b:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        -0x1dt
        -0x58t
        -0x40t
        -0x5ft
        -0x3dt
        -0x59t
        -0x2ct
        -0x44t
        -0x58t
        -0x62t
        -0x20t
        -0x3ft
        -0x1et
        -0x60t
        -0x64t
        -0x3ft
        -0x62t
        -0x50t
        -0x1ft
        -0x61t
    .end array-data

    :array_1
    .array-data 1
        -0x2ct
        -0x4dt
        -0x5dt
        -0x1ft
        -0x23t
        -0x2ft
        -0x30t
        -0x4ct
        -0x4ct
        -0x5dt
        -0x4et
        -0x30t
        -0x20t
        -0x3dt
        -0x56t
        -0x23t
        -0x38t
        -0x51t
        -0x21t
        -0x1bt
        -0x5dt
        -0x57t
        -0x51t
        -0x3dt
        -0x5et
        -0x41t
        -0x2ft
        -0x31t
        -0x61t
        -0x42t
        -0x42t
        -0x35t
        -0x3dt
        -0x54t
        -0x43t
        -0x60t
        -0x3at
        -0x40t
        -0x5et
        -0x21t
        -0x5bt
        -0x63t
        -0x5dt
    .end array-data

    :array_2
    .array-data 1
        -0x6et
        -0x5dt
        -0x67t
        -0x6ct
        -0x5ct
        -0x2at
        -0x42t
        -0x3at
        -0x72t
        -0x4dt
        -0x4at
        -0x67t
        -0x64t
        -0x63t
        -0x29t
        -0x44t
        -0x49t
        -0x5ft
        -0x53t
        -0x5ft
        -0x5ft
        -0x5bt
        -0x32t
        -0x6et
        -0x6ct
        -0x53t
        -0x2ft
        -0x53t
        -0x6at
        -0x4ft
        -0x68t
        -0x51t
        -0x5ct
        -0x5dt
        -0x3dt
        -0x2ct
        -0x68t
        -0x71t
        -0x42t
        -0x4ft
        -0x68t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x66t
        -0x32t
        -0x4at
        -0x6ct
        -0x6bt
        -0x6bt
        -0x66t
        -0x43t
        -0x68t
        -0x3at
        -0x47t
        -0x40t
        -0x4bt
        -0x48t
        -0x3at
        -0x62t
        -0x47t
        -0x44t
        -0x5at
        -0x3ct
        -0x31t
        -0x60t
    .end array-data
.end method

.method public constructor <init>(Lcom/twitter/android/network/c;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/twitter/android/network/i;->h:Ljava/lang/String;

    sget-object v5, Lcom/twitter/android/network/i;->i:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/twitter/android/network/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/network/i;->c:Lcom/twitter/android/network/c;

    iput p2, p0, Lcom/twitter/android/network/i;->l:I

    iput-object p3, p0, Lcom/twitter/android/network/i;->m:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/network/i;->n:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/network/i;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/network/c;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x2

    sget-object v4, Lcom/twitter/android/network/i;->h:Ljava/lang/String;

    sget-object v5, Lcom/twitter/android/network/i;->i:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/network/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(B[B)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p1, v0

    sub-int v3, p0, v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/android/network/i;->e:Lz;

    invoke-virtual {v0, p0}, Lz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    :try_start_0
    const-string p2, ""

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF8"

    invoke-static {p1, v1}, Lcom/twitter/android/util/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-static {p2, v1}, Lcom/twitter/android/util/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA1"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string v1, "UTF8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lw;->a([B)[B

    move-result-object v0

    const-string v2, "UTF8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "UTF8"

    invoke-static {v1, v0}, Lcom/twitter/android/util/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, ""

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/twitter/android/network/c;JLjava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/twitter/android/network/c;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/android/network/c;->a:Ljava/lang/String;

    move-object v6, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/network/i;->d:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p4

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/i;->a(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5, v6}, Lcom/twitter/android/network/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_1

    const-string v1, "OAuth realm=\"%s\", oauth_version=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\""

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "http://api.twitter.com/"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "1.0"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v0, 0x5

    aput-object p4, v2, v0

    const/4 v0, 0x6

    const-string v3, "HMAC-SHA1"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0

    :cond_1
    const-string v1, "OAuth realm=\"%s\", oauth_version=\"%s\", oauth_token=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\""

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "http://api.twitter.com/"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "1.0"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    aput-object v3, v5, v2

    const/4 v2, 0x4

    aput-object v4, v5, v2

    const/4 v2, 0x5

    aput-object v0, v5, v2

    const/4 v0, 0x6

    aput-object p4, v5, v0

    const/4 v0, 0x7

    const-string v2, "HMAC-SHA1"

    aput-object v2, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p5, :cond_2

    invoke-interface {p5}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "application/x-www-form-urlencoded"

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {p5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/twitter/android/network/i;->a(Ljava/lang/String;Z)Ljava/util/TreeMap;

    move-result-object v1

    const-string v2, "oauth_consumer_key"

    invoke-virtual {v1, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oauth_nonce"

    invoke-virtual {v1, v2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oauth_signature_method"

    const-string v3, "HMAC-SHA1"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oauth_timestamp"

    invoke-virtual {v1, v2, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oauth_version"

    const-string v3, "1.0"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    const-string v2, "oauth_token"

    invoke-virtual {v1, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/twitter/android/network/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v4

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/network/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/network/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "%3D"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/network/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/network/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    if-ge v0, v4, :cond_4

    const-string v1, "%26"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/TreeMap;
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    if-eqz p0, :cond_2

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    aget-object v6, v5, v1

    const-string v7, "UTF8"

    invoke-static {v6, v7}, Lcom/twitter/android/util/q;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    const-string v7, "UTF8"

    invoke-static {v5, v7}, Lcom/twitter/android/util/q;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v6, v5, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v5, v5, v1

    const-string v6, "UTF8"

    invoke-static {v5, v6}, Lcom/twitter/android/util/q;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v2
.end method


# virtual methods
.method public final a(Lorg/apache/http/client/methods/HttpRequestBase;JLorg/apache/http/HttpEntity;)V
    .locals 8

    iget v0, p0, Lcom/twitter/android/network/i;->l:I

    iget-object v1, p0, Lcom/twitter/android/network/i;->c:Lcom/twitter/android/network/c;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v4, p0, Lcom/twitter/android/network/i;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/network/i;->o:Ljava/lang/String;

    move-object v0, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/twitter/android/network/i;->a(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/twitter/android/network/c;JLjava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v7, p0, Lcom/twitter/android/network/i;->m:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/twitter/android/network/i;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/network/i;->o:Ljava/lang/String;

    move-wide v2, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/twitter/android/network/i;->a(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/twitter/android/network/c;JLjava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Auth-Service-Provider"

    invoke-virtual {p1, v1, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-Verify-Credentials-Authorization"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
