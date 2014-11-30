.class public Lorg/c/a/d/f/b;
.super Lorg/c/a/d/b/a;
.source "SslContextFactory.java"


# static fields
.field public static final a:[Ljavax/net/ssl/TrustManager;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static final f:Lorg/c/a/d/c/d;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Z

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Z

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:Ljava/security/KeyStore;

.field private M:Ljava/security/KeyStore;

.field private N:Z

.field private O:Ljavax/net/ssl/SSLContext;

.field private P:Z

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/io/InputStream;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/io/InputStream;

.field private t:Z

.field private u:Z

.field private v:Z

.field private transient w:Lorg/c/a/d/e/d;

.field private transient x:Lorg/c/a/d/e/d;

.field private transient y:Lorg/c/a/d/e/d;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/X509TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lorg/c/a/d/f/c;

    invoke-direct {v2}, Lorg/c/a/d/f/c;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lorg/c/a/d/f/b;->a:[Ljavax/net/ssl/TrustManager;

    .line 92
    const-class v0, Lorg/c/a/d/f/b;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/f/b;->f:Lorg/c/a/d/c/d;

    .line 94
    const-string v0, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SunX509"

    :goto_0
    sput-object v0, Lorg/c/a/d/f/b;->b:Ljava/lang/String;

    .line 97
    const-string v0, "ssl.TrustManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SunX509"

    :goto_1
    sput-object v0, Lorg/c/a/d/f/b;->c:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".keystore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/f/b;->d:Ljava/lang/String;

    return-void

    .line 94
    :cond_0
    const-string v0, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "ssl.TrustManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Lorg/c/a/d/b/a;-><init>()V

    .line 112
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/c/a/d/f/b;->g:Ljava/util/Set;

    .line 114
    iput-object v3, p0, Lorg/c/a/d/f/b;->h:Ljava/util/Set;

    .line 117
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/c/a/d/f/b;->i:Ljava/util/Set;

    .line 119
    iput-object v3, p0, Lorg/c/a/d/f/b;->j:Ljava/util/Set;

    .line 126
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/c/a/d/f/b;->m:Ljava/lang/String;

    .line 138
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/c/a/d/f/b;->r:Ljava/lang/String;

    .line 143
    iput-boolean v1, p0, Lorg/c/a/d/f/b;->t:Z

    .line 145
    iput-boolean v1, p0, Lorg/c/a/d/f/b;->u:Z

    .line 148
    iput-boolean v2, p0, Lorg/c/a/d/f/b;->v:Z

    .line 160
    const-string v0, "TLS"

    iput-object v0, p0, Lorg/c/a/d/f/b;->A:Ljava/lang/String;

    .line 165
    sget-object v0, Lorg/c/a/d/f/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/c/a/d/f/b;->C:Ljava/lang/String;

    .line 167
    sget-object v0, Lorg/c/a/d/f/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lorg/c/a/d/f/b;->D:Ljava/lang/String;

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lorg/c/a/d/f/b;->G:I

    .line 178
    iput-boolean v1, p0, Lorg/c/a/d/f/b;->I:Z

    .line 180
    iput-boolean v1, p0, Lorg/c/a/d/f/b;->J:Z

    .line 189
    iput-boolean v2, p0, Lorg/c/a/d/f/b;->N:Z

    .line 207
    iput-boolean v2, p0, Lorg/c/a/d/f/b;->P:Z

    .line 208
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1053
    invoke-static {p1, p2, p3, p4, p5}, Lorg/c/a/d/e/a;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1069
    invoke-static {p1}, Lorg/c/a/d/e/a;->a(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1

    .prologue
    .line 1497
    invoke-virtual {p0}, Lorg/c/a/d/f/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/d/f/b;->O:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 1501
    :goto_0
    invoke-virtual {p0, v0}, Lorg/c/a/d/f/b;->a(Ljavax/net/ssl/SSLEngine;)V

    .line 1502
    return-object v0

    .line 1497
    :cond_0
    iget-object v0, p0, Lorg/c/a/d/f/b;->O:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljavax/net/ssl/SSLEngine;)V
    .locals 2

    .prologue
    .line 1516
    invoke-virtual {p0}, Lorg/c/a/d/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    invoke-virtual {p0}, Lorg/c/a/d/f/b;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    .line 1518
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/d/f/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1519
    invoke-virtual {p0}, Lorg/c/a/d/f/b;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    .line 1521
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/c/a/d/f/b;->b([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 1525
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/c/a/d/f/b;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 1526
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lorg/c/a/d/f/b;->t:Z

    return v0
.end method

.method public a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1214
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1217
    iget-object v0, p0, Lorg/c/a/d/f/b;->h:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 1220
    iget-object v0, p0, Lorg/c/a/d/f/b;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1221
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1222
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1225
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1229
    :cond_2
    iget-object v0, p0, Lorg/c/a/d/f/b;->g:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 1230
    iget-object v0, p0, Lorg/c/a/d/f/b;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1232
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/security/KeyStore;)[Ljavax/net/ssl/KeyManager;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1075
    .line 1077
    if-eqz p1, :cond_4

    .line 1079
    iget-object v1, p0, Lorg/c/a/d/f/b;->C:Ljava/lang/String;

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 1080
    iget-object v2, p0, Lorg/c/a/d/f/b;->x:Lorg/c/a/d/e/d;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/c/a/d/f/b;->w:Lorg/c/a/d/e/d;

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, p1, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 1081
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    .line 1083
    iget-object v0, p0, Lorg/c/a/d/f/b;->o:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1085
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_3

    .line 1087
    aget-object v0, v2, v1

    instance-of v0, v0, Ljavax/net/ssl/X509KeyManager;

    if-eqz v0, :cond_0

    .line 1089
    new-instance v3, Lorg/c/a/d/f/a;

    iget-object v4, p0, Lorg/c/a/d/f/b;->o:Ljava/lang/String;

    aget-object v0, v2, v1

    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    invoke-direct {v3, v4, v0}, Lorg/c/a/d/f/a;-><init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;)V

    aput-object v3, v2, v1

    .line 1085
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1080
    :cond_1
    iget-object v0, p0, Lorg/c/a/d/f/b;->w:Lorg/c/a/d/e/d;

    invoke-virtual {v0}, Lorg/c/a/d/e/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/c/a/d/f/b;->x:Lorg/c/a/d/e/d;

    invoke-virtual {v0}, Lorg/c/a/d/e/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 1095
    :cond_4
    return-object v0
.end method

.method protected a(Ljava/security/KeyStore;Ljava/util/Collection;)[Ljavax/net/ssl/TrustManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;)[",
            "Ljavax/net/ssl/TrustManager;"
        }
    .end annotation

    .prologue
    .line 1101
    const/4 v0, 0x0

    .line 1102
    if-eqz p1, :cond_3

    .line 1105
    iget-boolean v0, p0, Lorg/c/a/d/f/b;->F:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/c/a/d/f/b;->D:Ljava/lang/String;

    const-string v1, "PKIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1107
    new-instance v0, Ljava/security/cert/PKIXBuilderParameters;

    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    invoke-direct {v0, p1, v1}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V

    .line 1110
    iget v1, p0, Lorg/c/a/d/f/b;->G:I

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->setMaxPathLength(I)V

    .line 1113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 1115
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1117
    const-string v1, "Collection"

    new-instance v2, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v2, p2}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 1120
    :cond_0
    iget-boolean v1, p0, Lorg/c/a/d/f/b;->I:Z

    if-eqz v1, :cond_1

    .line 1123
    const-string v1, "com.sun.security.enableCRLDP"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1126
    :cond_1
    iget-boolean v1, p0, Lorg/c/a/d/f/b;->J:Z

    if-eqz v1, :cond_2

    .line 1129
    const-string v1, "ocsp.enable"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object v1, p0, Lorg/c/a/d/f/b;->K:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1134
    const-string v1, "ocsp.responderURL"

    iget-object v2, p0, Lorg/c/a/d/f/b;->K:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_2
    iget-object v1, p0, Lorg/c/a/d/f/b;->D:Ljava/lang/String;

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 1139
    new-instance v2, Ljavax/net/ssl/CertPathTrustManagerParameters;

    invoke-direct {v2, v0}, Ljavax/net/ssl/CertPathTrustManagerParameters;-><init>(Ljava/security/cert/CertPathParameters;)V

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljavax/net/ssl/ManagerFactoryParameters;)V

    .line 1141
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 1152
    :cond_3
    :goto_0
    return-object v0

    .line 1145
    :cond_4
    iget-object v0, p0, Lorg/c/a/d/f/b;->D:Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 1146
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1148
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 673
    iget-boolean v0, p0, Lorg/c/a/d/f/b;->u:Z

    return v0
.end method

.method public b([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1246
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1249
    iget-object v0, p0, Lorg/c/a/d/f/b;->j:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 1252
    iget-object v0, p0, Lorg/c/a/d/f/b;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1253
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1254
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1257
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1261
    :cond_2
    iget-object v0, p0, Lorg/c/a/d/f/b;->i:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 1262
    iget-object v0, p0, Lorg/c/a/d/f/b;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1263
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected c()Ljava/security/KeyStore;
    .locals 6

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/c/a/d/f/b;->L:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/d/f/b;->L:Ljava/security/KeyStore;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/c/a/d/f/b;->n:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/c/a/d/f/b;->k:Ljava/lang/String;

    iget-object v3, p0, Lorg/c/a/d/f/b;->m:Ljava/lang/String;

    iget-object v4, p0, Lorg/c/a/d/f/b;->l:Ljava/lang/String;

    iget-object v0, p0, Lorg/c/a/d/f/b;->w:Lorg/c/a/d/e/d;

    if-nez v0, :cond_1

    const/4 v5, 0x0

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/c/a/d/f/b;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/c/a/d/f/b;->w:Lorg/c/a/d/e/d;

    invoke-virtual {v0}, Lorg/c/a/d/e/d;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method protected d()Ljava/security/KeyStore;
    .locals 6

    .prologue
    .line 1027
    iget-object v0, p0, Lorg/c/a/d/f/b;->M:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/d/f/b;->M:Ljava/security/KeyStore;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/c/a/d/f/b;->s:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/c/a/d/f/b;->p:Ljava/lang/String;

    iget-object v3, p0, Lorg/c/a/d/f/b;->r:Ljava/lang/String;

    iget-object v4, p0, Lorg/c/a/d/f/b;->q:Ljava/lang/String;

    iget-object v0, p0, Lorg/c/a/d/f/b;->y:Lorg/c/a/d/e/d;

    if-nez v0, :cond_1

    const/4 v5, 0x0

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/c/a/d/f/b;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/c/a/d/f/b;->y:Lorg/c/a/d/e/d;

    invoke-virtual {v0}, Lorg/c/a/d/e/d;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public e()V
    .locals 3

    .prologue
    .line 1164
    iget-object v0, p0, Lorg/c/a/d/f/b;->O:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    iget-object v0, p0, Lorg/c/a/d/f/b;->L:Ljava/security/KeyStore;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/c/a/d/f/b;->n:Ljava/io/InputStream;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/c/a/d/f/b;->k:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSL doesn\'t have a valid keystore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    :cond_2
    iget-object v0, p0, Lorg/c/a/d/f/b;->M:Ljava/security/KeyStore;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/c/a/d/f/b;->s:Ljava/io/InputStream;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/c/a/d/f/b;->p:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1175
    iget-object v0, p0, Lorg/c/a/d/f/b;->L:Ljava/security/KeyStore;

    iput-object v0, p0, Lorg/c/a/d/f/b;->M:Ljava/security/KeyStore;

    .line 1176
    iget-object v0, p0, Lorg/c/a/d/f/b;->k:Ljava/lang/String;

    iput-object v0, p0, Lorg/c/a/d/f/b;->p:Ljava/lang/String;

    .line 1177
    iget-object v0, p0, Lorg/c/a/d/f/b;->n:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/c/a/d/f/b;->s:Ljava/io/InputStream;

    .line 1178
    iget-object v0, p0, Lorg/c/a/d/f/b;->m:Ljava/lang/String;

    iput-object v0, p0, Lorg/c/a/d/f/b;->r:Ljava/lang/String;

    .line 1179
    iget-object v0, p0, Lorg/c/a/d/f/b;->l:Ljava/lang/String;

    iput-object v0, p0, Lorg/c/a/d/f/b;->q:Ljava/lang/String;

    .line 1180
    iget-object v0, p0, Lorg/c/a/d/f/b;->w:Lorg/c/a/d/e/d;

    iput-object v0, p0, Lorg/c/a/d/f/b;->y:Lorg/c/a/d/e/d;

    .line 1181
    iget-object v0, p0, Lorg/c/a/d/f/b;->C:Ljava/lang/String;

    iput-object v0, p0, Lorg/c/a/d/f/b;->D:Ljava/lang/String;

    .line 1185
    :cond_3
    iget-object v0, p0, Lorg/c/a/d/f/b;->n:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/d/f/b;->n:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/c/a/d/f/b;->s:Ljava/io/InputStream;

    if-ne v0, v1, :cond_0

    .line 1189
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1190
    iget-object v1, p0, Lorg/c/a/d/f/b;->n:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/c/a/d/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1191
    iget-object v1, p0, Lorg/c/a/d/f/b;->n:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1193
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lorg/c/a/d/f/b;->n:Ljava/io/InputStream;

    .line 1194
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lorg/c/a/d/f/b;->s:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1196
    :catch_0
    move-exception v0

    .line 1198
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 1402
    iget-boolean v0, p0, Lorg/c/a/d/f/b;->N:Z

    return v0
.end method

.method public g()Ljavax/net/ssl/SSLSocket;
    .locals 3

    .prologue
    .line 1477
    iget-object v0, p0, Lorg/c/a/d/f/b;->O:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 1479
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 1481
    invoke-virtual {p0}, Lorg/c/a/d/f/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1482
    invoke-virtual {p0}, Lorg/c/a/d/f/b;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 1483
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/d/f/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1484
    invoke-virtual {p0}, Lorg/c/a/d/f/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 1486
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/c/a/d/f/b;->b([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 1489
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/c/a/d/f/b;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 1491
    return-object v0
.end method

.method protected h()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lorg/c/a/d/f/b;->O:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/c/a/d/f/b;->L:Ljava/security/KeyStore;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/c/a/d/f/b;->n:Ljava/io/InputStream;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/c/a/d/f/b;->k:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/c/a/d/f/b;->M:Ljava/security/KeyStore;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/c/a/d/f/b;->s:Ljava/io/InputStream;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/c/a/d/f/b;->p:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 247
    iget-boolean v0, p0, Lorg/c/a/d/f/b;->P:Z

    if-eqz v0, :cond_b

    .line 249
    sget-object v0, Lorg/c/a/d/f/b;->f:Lorg/c/a/d/c/d;

    const-string v2, "No keystore or trust store configured.  ACCEPTING UNTRUSTED CERTIFICATES!!!!!"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    sget-object v0, Lorg/c/a/d/f/b;->a:[Ljavax/net/ssl/TrustManager;

    .line 254
    :goto_0
    iget-object v2, p0, Lorg/c/a/d/f/b;->B:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v1

    .line 255
    :goto_1
    iget-object v3, p0, Lorg/c/a/d/f/b;->A:Ljava/lang/String;

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    iput-object v3, p0, Lorg/c/a/d/f/b;->O:Ljavax/net/ssl/SSLContext;

    .line 256
    iget-object v3, p0, Lorg/c/a/d/f/b;->O:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v3, v1, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 305
    :cond_0
    :goto_2
    return-void

    .line 254
    :cond_1
    iget-object v2, p0, Lorg/c/a/d/f/b;->B:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {p0}, Lorg/c/a/d/f/b;->e()V

    .line 264
    invoke-virtual {p0}, Lorg/c/a/d/f/b;->c()Ljava/security/KeyStore;

    move-result-object v2

    .line 265
    invoke-virtual {p0}, Lorg/c/a/d/f/b;->d()Ljava/security/KeyStore;

    move-result-object v3

    .line 267
    iget-object v0, p0, Lorg/c/a/d/f/b;->H:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/c/a/d/f/b;->a(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    .line 269
    iget-boolean v0, p0, Lorg/c/a/d/f/b;->E:Z

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 271
    iget-object v0, p0, Lorg/c/a/d/f/b;->o:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 273
    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 274
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lorg/c/a/d/f/b;->o:Ljava/lang/String;

    .line 277
    :cond_3
    iget-object v0, p0, Lorg/c/a/d/f/b;->o:Ljava/lang/String;

    if-nez v0, :cond_5

    move-object v0, v1

    .line 278
    :goto_4
    if-nez v0, :cond_7

    .line 280
    new-instance v1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No certificate found in the keystore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/c/a/d/f/b;->o:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, v1

    .line 274
    goto :goto_3

    .line 277
    :cond_5
    iget-object v0, p0, Lorg/c/a/d/f/b;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_4

    .line 280
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " for alias "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/c/a/d/f/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 283
    :cond_7
    new-instance v5, Lorg/c/a/d/e/b;

    invoke-direct {v5, v3, v4}, Lorg/c/a/d/e/b;-><init>(Ljava/security/KeyStore;Ljava/util/Collection;)V

    .line 284
    iget v6, p0, Lorg/c/a/d/f/b;->G:I

    invoke-virtual {v5, v6}, Lorg/c/a/d/e/b;->a(I)V

    .line 285
    iget-boolean v6, p0, Lorg/c/a/d/f/b;->I:Z

    invoke-virtual {v5, v6}, Lorg/c/a/d/e/b;->a(Z)V

    .line 286
    iget-boolean v6, p0, Lorg/c/a/d/f/b;->J:Z

    invoke-virtual {v5, v6}, Lorg/c/a/d/e/b;->b(Z)V

    .line 287
    iget-object v6, p0, Lorg/c/a/d/f/b;->K:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/c/a/d/e/b;->a(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v5, v2, v0}, Lorg/c/a/d/e/b;->a(Ljava/security/KeyStore;Ljava/security/cert/Certificate;)V

    .line 291
    :cond_8
    invoke-virtual {p0, v2}, Lorg/c/a/d/f/b;->a(Ljava/security/KeyStore;)[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    .line 292
    invoke-virtual {p0, v3, v4}, Lorg/c/a/d/f/b;->a(Ljava/security/KeyStore;Ljava/util/Collection;)[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 294
    iget-object v0, p0, Lorg/c/a/d/f/b;->B:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 295
    :goto_6
    iget-object v0, p0, Lorg/c/a/d/f/b;->z:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/c/a/d/f/b;->A:Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lorg/c/a/d/f/b;->O:Ljavax/net/ssl/SSLContext;

    .line 296
    iget-object v0, p0, Lorg/c/a/d/f/b;->O:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 298
    invoke-virtual {p0}, Lorg/c/a/d/f/b;->i()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 300
    sget-object v1, Lorg/c/a/d/f/b;->f:Lorg/c/a/d/c/d;

    const-string v2, "Enabled Protocols {} of {}"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-interface {v1, v2, v3}, Lorg/c/a/d/c/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    sget-object v1, Lorg/c/a/d/f/b;->f:Lorg/c/a/d/c/d;

    invoke-interface {v1}, Lorg/c/a/d/c/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    sget-object v1, Lorg/c/a/d/f/b;->f:Lorg/c/a/d/c/d;

    const-string v2, "Enabled Ciphers   {} of {}"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-interface {v1, v2, v3}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 294
    :cond_9
    iget-object v0, p0, Lorg/c/a/d/f/b;->B:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    goto :goto_6

    .line 295
    :cond_a
    iget-object v0, p0, Lorg/c/a/d/f/b;->A:Ljava/lang/String;

    iget-object v4, p0, Lorg/c/a/d/f/b;->z:Ljava/lang/String;

    invoke-static {v0, v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_7

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public i()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lorg/c/a/d/f/b;->O:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 1509
    invoke-virtual {p0, v0}, Lorg/c/a/d/f/b;->a(Ljavax/net/ssl/SSLEngine;)V

    .line 1510
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1531
    const-string v0, "%s@%x(%s,%s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/c/a/d/f/b;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/c/a/d/f/b;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
