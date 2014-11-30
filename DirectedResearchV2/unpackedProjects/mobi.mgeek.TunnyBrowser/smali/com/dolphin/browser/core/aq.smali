.class Lcom/dolphin/browser/core/aq;
.super Ljava/lang/Object;
.source "TabImpl.java"

# interfaces
.implements Lcom/dolphin/browser/j/b/k;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/ao;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/ao;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/dolphin/browser/core/aq;->a:Lcom/dolphin/browser/core/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 700
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 701
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/security/cert/X509Certificate;Z)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 706
    if-eqz p3, :cond_0

    .line 708
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 709
    new-instance v0, Landroid/net/http/SslError;

    invoke-direct {v0, v2, p2, p1}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 713
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/core/aq;->a:Lcom/dolphin/browser/core/ao;

    iget-object v2, p0, Lcom/dolphin/browser/core/aq;->a:Lcom/dolphin/browser/core/ao;

    iget-object v2, v2, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v2}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/core/aq;->a:Lcom/dolphin/browser/core/ao;

    invoke-static {v3}, Lcom/dolphin/browser/core/ao;->a(Lcom/dolphin/browser/core/ao;)Lcom/dolphin/browser/core/ISslErrorHandler;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/dolphin/browser/core/ao;->onReceivedSslError(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V

    .line 715
    :cond_0
    return-void

    .line 711
    :cond_1
    new-instance v0, Landroid/net/http/SslError;

    invoke-direct {v0, v2, p2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_0
.end method
