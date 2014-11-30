.class public final Lcom/dolphin/browser/j/b/b;
.super Ljava/lang/Object;
.source "CRLVerifier.java"


# static fields
.field public static final a:Lorg/a/a/m;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lorg/a/a/m;

    const-string v1, "2.5.29.31"

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/j/b/b;->a:Lorg/a/a/m;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/dolphin/browser/j/b/b;->b:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/j/b/b;->c:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/j/b/b;->d:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 3

    .prologue
    .line 173
    .line 174
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ftp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    invoke-static {p0}, Lcom/dolphin/browser/j/b/b;->b(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v0

    .line 181
    return-object v0

    .line 178
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not download CRL from certificate distribution point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/security/cert/X509Certificate;)V
    .locals 6

    .prologue
    .line 132
    invoke-static {p0}, Lcom/dolphin/browser/j/b/b;->c(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/dolphin/browser/j/b/b;->d(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    .line 138
    if-nez v0, :cond_4

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-static {p0}, Lcom/dolphin/browser/j/b/b;->b(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    const-string v3, "CRLVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CRL dist point:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v0}, Lcom/dolphin/browser/j/b/b;->a(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v0

    .line 144
    invoke-static {p0, v0}, Lcom/dolphin/browser/j/b/b;->a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)V

    .line 145
    invoke-virtual {v0, p0}, Ljava/security/cert/X509CRL;->isRevoked(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/dolphin/browser/j/b/b;->a(Ljava/security/cert/X509Certificate;Z)V

    .line 147
    const-string v1, "CRLVerifier"

    const-string v2, "Certificate %s is revoked."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    new-instance v1, Lcom/dolphin/browser/j/b/c;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/j/b/c;-><init>(Ljava/security/cert/Certificate;Ljava/security/cert/CRL;)V

    throw v1
    :try_end_0
    .catch Lcom/dolphin/browser/j/b/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    throw v0

    .line 150
    :cond_2
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/dolphin/browser/j/b/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 164
    :catch_1
    move-exception v0

    .line 165
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not verify CRL for certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 152
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    invoke-static {p0, v0}, Lcom/dolphin/browser/j/b/b;->a(Ljava/security/cert/X509Certificate;Z)V

    goto/16 :goto_0

    .line 154
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 155
    invoke-virtual {v0, p0}, Ljava/security/cert/X509CRL;->isRevoked(Ljava/security/cert/Certificate;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/dolphin/browser/j/b/b;->a(Ljava/security/cert/X509Certificate;Z)V

    .line 157
    const-string v1, "CRLVerifier"

    const-string v2, "Certificate %s is revoked."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 158
    new-instance v1, Lcom/dolphin/browser/j/b/c;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/j/b/c;-><init>(Ljava/security/cert/Certificate;Ljava/security/cert/CRL;)V

    throw v1
    :try_end_2
    .catch Lcom/dolphin/browser/j/b/c; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method private static a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)V
    .locals 4

    .prologue
    .line 88
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 90
    sget-object v2, Lcom/dolphin/browser/j/b/b;->c:Ljava/util/Map;

    monitor-enter v2

    .line 91
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/j/b/b;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 92
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    sget-object v3, Lcom/dolphin/browser/j/b/b;->c:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    monitor-exit v2

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/security/cert/X509Certificate;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 112
    sget-object v2, Lcom/dolphin/browser/j/b/b;->d:Ljava/util/Map;

    monitor-enter v2

    .line 113
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/j/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcom/dolphin/browser/j/b/b;->d:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_0
    monitor-exit v2

    .line 120
    return-void

    .line 117
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/security/cert/X509Certificate;Z)V
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/dolphin/browser/j/b/b;->b:Ljava/util/Set;

    monitor-enter v1

    .line 70
    if-eqz p1, :cond_0

    .line 71
    :try_start_0
    sget-object v2, Lcom/dolphin/browser/j/b/b;->b:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_0
    monitor-exit v1

    .line 76
    return-void

    .line 73
    :cond_0
    sget-object v2, Lcom/dolphin/browser/j/b/b;->b:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 194
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 195
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static b(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-static {p0}, Lcom/dolphin/browser/j/b/b;->e(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    .line 208
    if-nez v0, :cond_0

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    sget-object v0, Lcom/dolphin/browser/j/b/b;->a:Lorg/a/a/m;

    invoke-virtual {v0}, Lorg/a/a/m;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 211
    if-nez v0, :cond_1

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 214
    :cond_1
    new-instance v3, Lorg/a/a/i;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/a/a/i;-><init>(Ljava/io/InputStream;)V

    .line 215
    invoke-virtual {v3}, Lorg/a/a/i;->c()Lorg/a/a/bd;

    move-result-object v0

    .line 216
    check-cast v0, Lorg/a/a/bf;

    .line 217
    invoke-virtual {v0}, Lorg/a/a/bf;->f()[B

    move-result-object v0

    .line 218
    new-instance v3, Lorg/a/a/i;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/a/a/i;-><init>(Ljava/io/InputStream;)V

    .line 219
    invoke-virtual {v3}, Lorg/a/a/i;->c()Lorg/a/a/bd;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lorg/a/a/c/a;->a(Ljava/lang/Object;)Lorg/a/a/c/a;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lorg/a/a/c/a;->e()[Lorg/a/a/c/b;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 222
    invoke-virtual {v0}, Lorg/a/a/c/b;->e()Lorg/a/a/c/c;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_3

    .line 225
    invoke-virtual {v0}, Lorg/a/a/c/c;->e()I

    move-result v6

    if-nez v6, :cond_3

    .line 226
    invoke-virtual {v0}, Lorg/a/a/c/c;->f()Lorg/a/a/d;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/c/e;->a(Ljava/lang/Object;)Lorg/a/a/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/c/e;->e()[Lorg/a/a/c/d;

    move-result-object v6

    .line 228
    array-length v7, v6

    move v0, v2

    :goto_2
    if-ge v0, v7, :cond_3

    aget-object v8, v6, v0

    .line 229
    invoke-virtual {v8}, Lorg/a/a/c/d;->e()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_2

    .line 230
    invoke-virtual {v8}, Lorg/a/a/c/d;->f()Lorg/a/a/ar;

    move-result-object v8

    invoke-static {v8}, Lorg/a/a/az;->a(Ljava/lang/Object;)Lorg/a/a/az;

    move-result-object v8

    invoke-virtual {v8}, Lorg/a/a/az;->s_()Ljava/lang/String;

    move-result-object v8

    .line 231
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 221
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 237
    :cond_4
    invoke-static {p0, v1}, Lcom/dolphin/browser/j/b/b;->a(Ljava/security/cert/X509Certificate;Ljava/util/List;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static c(Ljava/security/cert/X509Certificate;)Z
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/dolphin/browser/j/b/b;->b:Ljava/util/Set;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v2, Lcom/dolphin/browser/j/b/b;->b:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static d(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/dolphin/browser/j/b/b;->c:Ljava/util/Map;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v2, Lcom/dolphin/browser/j/b/b;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 83
    monitor-exit v1

    .line 84
    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static e(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/dolphin/browser/j/b/b;->d:Ljava/util/Map;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v2, Lcom/dolphin/browser/j/b/b;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    monitor-exit v1

    .line 106
    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
