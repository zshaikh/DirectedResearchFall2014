.class public Ldolphin/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field private static final a:Ldolphin/net/http/CertificateChainValidator;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ldolphin/net/http/CertificateChainValidator;

    invoke-direct {v0}, Ldolphin/net/http/CertificateChainValidator;-><init>()V

    sput-object v0, Ldolphin/net/http/CertificateChainValidator;->a:Ldolphin/net/http/CertificateChainValidator;

    .line 55
    const-class v0, Ldolphin/net/http/CertificateChainValidator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldolphin/net/http/CertificateChainValidator;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ldolphin/net/http/CertificateChainValidator;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Ldolphin/net/http/CertificateChainValidator;->a:Ldolphin/net/http/CertificateChainValidator;

    return-object v0
.end method

.method private a([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)Ldolphin/net/http/SslError;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 194
    aget-object v4, p1, v1

    .line 195
    if-nez v4, :cond_3

    .line 196
    const-string v0, "certificate for this site is null"

    invoke-direct {p0, p2, v0}, Ldolphin/net/http/CertificateChainValidator;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 218
    :cond_0
    array-length v0, p1

    .line 219
    array-length v2, p1

    if-le v2, v3, :cond_2

    move v0, v1

    .line 226
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 228
    add-int/lit8 v2, v0, 0x1

    .line 229
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_b

    .line 231
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    aget-object v6, p1, v2

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 235
    add-int/lit8 v5, v0, 0x1

    if-eq v2, v5, :cond_a

    .line 236
    aget-object v5, p1, v2

    .line 237
    add-int/lit8 v6, v0, 0x1

    aget-object v6, p1, v6

    aput-object v6, p1, v2

    .line 238
    add-int/lit8 v2, v0, 0x1

    aput-object v5, p1, v2

    move v2, v3

    .line 243
    :goto_2
    if-nez v2, :cond_6

    .line 249
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 250
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    .line 251
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 252
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    add-int/lit8 v0, v0, -0x1

    .line 260
    :cond_2
    new-array v2, v0, [Ljava/security/cert/X509Certificate;

    .line 261
    :goto_3
    if-ge v1, v0, :cond_7

    .line 262
    aget-object v3, p1, v1

    aput-object v3, v2, v1

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 199
    :cond_3
    invoke-static {v4, p3}, Ldolphin/net/b;->a(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "certificate not for this host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    if-eqz p2, :cond_4

    .line 207
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 209
    :cond_4
    new-instance v0, Ldolphin/net/http/SslError;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v4}, Ldolphin/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 296
    :goto_4
    return-object v0

    .line 230
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 226
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 272
    :cond_7
    :try_start_0
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-nez v0, :cond_8

    invoke-static {}, Ldolphin/net/http/SslErrorJssePackagePlatformTry;->isSslJssePackageExist()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 273
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0, v2, p4}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 280
    :goto_5
    const/4 v0, 0x0

    goto :goto_4

    .line 276
    :cond_8
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0, v2, p4}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_5

    .line 281
    :catch_0
    move-exception v0

    .line 282
    if-eqz p2, :cond_9

    .line 283
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 291
    :cond_9
    new-instance v0, Ldolphin/net/http/SslError;

    invoke-direct {v0, v7, v4}, Ldolphin/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_4

    .line 294
    :catch_1
    move-exception v0

    .line 295
    sget-object v1, Ldolphin/net/http/CertificateChainValidator;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Ldolphin/net/http/SslError;

    invoke-direct {v0, v7, v4}, Ldolphin/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_4

    :cond_a
    move v2, v3

    goto/16 :goto_2

    :cond_b
    move v2, v1

    goto/16 :goto_2
.end method

.method private a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 315
    if-eqz p1, :cond_1

    .line 316
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 321
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 324
    :cond_1
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v0, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    if-eqz p2, :cond_0

    :goto_0
    invoke-direct {p0, p1, p2}, Ldolphin/net/http/CertificateChainValidator;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 307
    return-void

    :cond_0
    move-object p2, p3

    .line 305
    goto :goto_0
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Ldolphin/net/http/SslError;
    .locals 6
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 145
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad certificate chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    array-length v0, p0

    new-array v2, v0, [Ljava/security/cert/X509Certificate;

    .line 151
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 152
    aget-object v0, p0, v1

    .line 154
    :try_start_0
    new-instance v3, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v3, v0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v3, v2, v1
    :try_end_0
    .catch Lorg/apache/harmony/security/asn1/ASN1Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v3

    .line 156
    sget-object v3, Ldolphin/net/http/CertificateChainValidator;->b:Ljava/lang/String;

    const-string v4, "Bad DER format, try BER..."

    invoke-static {v3, v4}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v3, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    sget-object v4, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    new-instance v5, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v5, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    invoke-virtual {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v3, v0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    aput-object v3, v2, v1

    goto :goto_1

    .line 164
    :cond_2
    invoke-static {}, Ldolphin/net/http/CertificateChainValidator;->a()Ldolphin/net/http/CertificateChainValidator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Ldolphin/net/http/CertificateChainValidator;->a([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)Ldolphin/net/http/SslError;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ldolphin/net/http/r;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Ldolphin/net/http/SslError;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 83
    .line 87
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, v1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 88
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_2

    .line 100
    :cond_0
    const-string v0, "failed to retrieve peer certificates"

    invoke-direct {p0, p2, v0}, Ldolphin/net/http/CertificateChainValidator;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    :cond_1
    :goto_1
    move-object v0, v1

    .line 129
    check-cast v0, [Ljava/security/cert/X509Certificate;

    check-cast v0, [Ljava/security/cert/X509Certificate;

    const-string v1, "RSA"

    invoke-direct {p0, v0, p2, p3, v1}, Ldolphin/net/http/CertificateChainValidator;->a([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)Ldolphin/net/http/SslError;

    move-result-object v0

    return-object v0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to perform SSL handshake"

    invoke-direct {p0, p2, v1, v2}, Ldolphin/net/http/CertificateChainValidator;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    array-length v2, v1

    new-array v3, v2, [Ljava/security/cert/X509Certificate;

    move v2, v0

    .line 105
    :goto_2
    array-length v0, v1

    if-ge v2, v0, :cond_3

    .line 106
    aget-object v0, v1, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    check-cast v0, Ljava/security/cert/X509Certificate;

    aput-object v0, v3, v2

    .line 105
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 111
    :cond_3
    if-eqz p1, :cond_1

    .line 113
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, v3, v0

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Landroid/net/http/SslCertificate;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-direct {v0, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1, v0}, Ldolphin/net/http/r;->a(Landroid/net/http/SslCertificate;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 117
    :catch_1
    move-exception v0

    goto :goto_1
.end method
