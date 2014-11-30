.class public Lcom/dolphin/browser/j/b/a;
.super Ljava/lang/Object;
.source "CRLTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    const-string v0, "verifyCertificateCRLs"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v1

    .line 35
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/dolphin/browser/j/b/b;->a(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Lcom/dolphin/browser/j/b/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v1}, Lcom/dolphin/browser/util/cw;->a()J

    .line 44
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/dolphin/browser/util/cw;->a()J

    throw v0

    .line 38
    :catch_1
    move-exception v0

    .line 40
    :try_start_2
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    invoke-virtual {v1}, Lcom/dolphin/browser/util/cw;->a()J

    goto :goto_0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method
