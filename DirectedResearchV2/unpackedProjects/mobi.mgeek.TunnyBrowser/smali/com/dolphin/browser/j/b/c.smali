.class public Lcom/dolphin/browser/j/b/c;
.super Ljava/security/cert/CertificateException;
.source "RevokedCertificateException.java"


# instance fields
.field private a:Ljava/security/cert/Certificate;

.field private b:Ljava/security/cert/CRL;


# direct methods
.method constructor <init>(Ljava/security/cert/Certificate;Ljava/security/cert/CRL;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/j/b/c;-><init>(Ljava/security/cert/Certificate;Ljava/security/cert/CRL;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method

.method constructor <init>(Ljava/security/cert/Certificate;Ljava/security/cert/CRL;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The certificate \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/dolphin/browser/j/b/c;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" is revoked by CRL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/dolphin/browser/j/b/c;->a(Ljava/security/cert/CRL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iput-object p1, p0, Lcom/dolphin/browser/j/b/c;->a:Ljava/security/cert/Certificate;

    .line 38
    iput-object p2, p0, Lcom/dolphin/browser/j/b/c;->b:Ljava/security/cert/CRL;

    .line 39
    return-void
.end method

.method static a(Ljava/security/cert/CRL;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    instance-of v0, p0, Ljava/security/cert/X509CRL;

    if-eqz v0, :cond_0

    .line 16
    check-cast p0, Ljava/security/cert/X509CRL;

    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/CRL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 23
    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/j/b/c;->a:Ljava/security/cert/Certificate;

    return-object v0
.end method
