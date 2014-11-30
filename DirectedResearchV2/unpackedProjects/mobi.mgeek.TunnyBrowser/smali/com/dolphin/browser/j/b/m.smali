.class Lcom/dolphin/browser/j/b/m;
.super Ljava/lang/Object;
.source "SiteCertRevocationValidator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/security/cert/X509Certificate;

.field final synthetic b:Z

.field final synthetic c:Lcom/dolphin/browser/j/b/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/j/b/l;Ljava/security/cert/X509Certificate;Z)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dolphin/browser/j/b/m;->c:Lcom/dolphin/browser/j/b/l;

    iput-object p2, p0, Lcom/dolphin/browser/j/b/m;->a:Ljava/security/cert/X509Certificate;

    iput-boolean p3, p0, Lcom/dolphin/browser/j/b/m;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/j/b/m;->c:Lcom/dolphin/browser/j/b/l;

    iget-object v0, v0, Lcom/dolphin/browser/j/b/l;->b:Lcom/dolphin/browser/j/b/k;

    iget-object v1, p0, Lcom/dolphin/browser/j/b/m;->c:Lcom/dolphin/browser/j/b/l;

    iget-object v1, v1, Lcom/dolphin/browser/j/b/l;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/j/b/m;->a:Ljava/security/cert/X509Certificate;

    iget-boolean v3, p0, Lcom/dolphin/browser/j/b/m;->b:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/dolphin/browser/j/b/k;->a(Ljava/lang/String;Ljava/security/cert/X509Certificate;Z)V

    .line 73
    return-void
.end method
