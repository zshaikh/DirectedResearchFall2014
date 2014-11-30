.class Lcom/dolphin/browser/j/b/q;
.super Ljava/lang/Object;
.source "SiteCertificateVerifyResult.java"


# instance fields
.field final a:Ljava/security/cert/X509Certificate;

.field final b:Z


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;Z)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/dolphin/browser/j/b/q;->a:Ljava/security/cert/X509Certificate;

    .line 11
    iput-boolean p2, p0, Lcom/dolphin/browser/j/b/q;->b:Z

    .line 12
    return-void
.end method
