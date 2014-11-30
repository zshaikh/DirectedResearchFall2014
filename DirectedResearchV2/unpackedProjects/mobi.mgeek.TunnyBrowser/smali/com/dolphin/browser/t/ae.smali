.class Lcom/dolphin/browser/t/ae;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/IWebView;

.field final synthetic b:Lcom/dolphin/browser/core/ISslErrorHandler;

.field final synthetic c:Landroid/net/http/SslError;

.field final synthetic d:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 2459
    iput-object p1, p0, Lcom/dolphin/browser/t/ae;->d:Lcom/dolphin/browser/t/l;

    iput-object p2, p0, Lcom/dolphin/browser/t/ae;->a:Lcom/dolphin/browser/core/IWebView;

    iput-object p3, p0, Lcom/dolphin/browser/t/ae;->b:Lcom/dolphin/browser/core/ISslErrorHandler;

    iput-object p4, p0, Lcom/dolphin/browser/t/ae;->c:Landroid/net/http/SslError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2463
    iget-object v0, p0, Lcom/dolphin/browser/t/ae;->d:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v1}, Lcom/dolphin/browser/t/l;->c(Lcom/dolphin/browser/t/l;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2464
    iget-object v0, p0, Lcom/dolphin/browser/t/ae;->d:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/IWebView;

    .line 2465
    iget-object v0, p0, Lcom/dolphin/browser/t/ae;->d:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ISslErrorHandler;)Lcom/dolphin/browser/core/ISslErrorHandler;

    .line 2466
    iget-object v0, p0, Lcom/dolphin/browser/t/ae;->d:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;Landroid/net/http/SslError;)Landroid/net/http/SslError;

    .line 2468
    iget-object v0, p0, Lcom/dolphin/browser/t/ae;->d:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->n(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/t/ae;->a:Lcom/dolphin/browser/core/IWebView;

    iget-object v2, p0, Lcom/dolphin/browser/t/ae;->b:Lcom/dolphin/browser/core/ISslErrorHandler;

    iget-object v3, p0, Lcom/dolphin/browser/t/ae;->c:Landroid/net/http/SslError;

    invoke-interface {v0, v1, v2, v3}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedSslError(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V

    .line 2469
    return-void
.end method
