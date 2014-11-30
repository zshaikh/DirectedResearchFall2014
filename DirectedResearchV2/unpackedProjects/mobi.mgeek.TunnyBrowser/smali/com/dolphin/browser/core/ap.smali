.class Lcom/dolphin/browser/core/ap;
.super Ljava/lang/Object;
.source "TabImpl.java"

# interfaces
.implements Lcom/dolphin/browser/core/ISslErrorHandler;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/ao;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/ao;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/dolphin/browser/core/ap;->a:Lcom/dolphin/browser/core/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 690
    iget-object v0, p0, Lcom/dolphin/browser/core/ap;->a:Lcom/dolphin/browser/core/ao;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/core/ao;->a(Lcom/dolphin/browser/core/ao;Z)Z

    .line 691
    iget-object v0, p0, Lcom/dolphin/browser/core/ap;->a:Lcom/dolphin/browser/core/ao;

    iget-object v0, v0, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/an;->stopLoading()V

    .line 692
    iget-object v0, p0, Lcom/dolphin/browser/core/ap;->a:Lcom/dolphin/browser/core/ao;

    iget-object v1, p0, Lcom/dolphin/browser/core/ap;->a:Lcom/dolphin/browser/core/ao;

    iget-object v1, v1, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/an;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    const/16 v2, -0xb

    const-string v3, "Certificate revoked."

    iget-object v4, p0, Lcom/dolphin/browser/core/ap;->a:Lcom/dolphin/browser/core/ao;

    iget-object v4, v4, Lcom/dolphin/browser/core/ao;->a:Lcom/dolphin/browser/core/an;

    invoke-virtual {v4}, Lcom/dolphin/browser/core/an;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/core/ao;->onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method public proceed()V
    .locals 0

    .prologue
    .line 686
    return-void
.end method
