.class public final Lcom/a/a/a/j;
.super Ljava/lang/Object;
.source "MyTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private a:Ljavax/net/ssl/X509TrustManager;

.field private b:Ljavax/net/ssl/X509TrustManager;

.field private c:[Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/a/a/a/j;->a:Ljavax/net/ssl/X509TrustManager;

    .line 21
    iput-object v1, p0, Lcom/a/a/a/j;->b:Ljavax/net/ssl/X509TrustManager;

    .line 22
    iput-object v1, p0, Lcom/a/a/a/j;->c:[Ljava/security/cert/X509Certificate;

    .line 72
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/a/a/a/j;->a(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/a/j;->a:Ljavax/net/ssl/X509TrustManager;

    .line 73
    iget-object v1, p0, Lcom/a/a/a/j;->a:Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could\'t find X509TrustManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 77
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/a/a/a/j;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/a/j;->b:Ljavax/net/ssl/X509TrustManager;

    .line 78
    iget-object v1, p0, Lcom/a/a/a/j;->a:Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could\'t find X509TrustManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/a/a/a/j;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 85
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/a/a/a/j;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    .line 89
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lcom/a/a/a/j;->c:[Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    return-void
.end method

.method private static a()Ljavax/net/ssl/X509TrustManager;
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/a/a/a/k;->a()Lcom/a/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/k;->b()Ljava/security/KeyStore;

    move-result-object v0

    .line 39
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 42
    invoke-static {v1}, Lcom/a/a/a/j;->a(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could\'t find X509TrustManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 56
    invoke-static {v0}, Lcom/a/a/a/j;->a(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could\'t find X509TrustManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    return-object v0
.end method

.method private static a(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 3

    .prologue
    .line 25
    invoke-virtual {p0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 26
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 27
    aget-object v2, v1, v0

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_0

    .line 28
    aget-object v0, v1, v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 32
    :goto_1
    return-object v0

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/j;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/a/a/a/j;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/j;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/a/a/a/j;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 122
    const-string v0, "ssl:"

    const-string v1, "self sign failed"

    invoke-static {v0, v1}, Lcom/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/a/a/a/j;->c:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
