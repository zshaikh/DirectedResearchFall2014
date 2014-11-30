.class Lcom/dolphin/browser/q/b/z;
.super Lcom/dolphin/browser/core/WebViewCallback;
.source "EvernoteAuthDialog.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/y;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/y;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/dolphin/browser/q/b/z;->a:Lcom/dolphin/browser/q/b/y;

    invoke-direct {p0}, Lcom/dolphin/browser/core/WebViewCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 345
    const-string v0, "RegisterDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview finish loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/WebViewCallback;->onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/q/b/z;->a:Lcom/dolphin/browser/q/b/y;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/y;->f(Lcom/dolphin/browser/q/b/y;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 348
    iget-object v0, p0, Lcom/dolphin/browser/q/b/z;->a:Lcom/dolphin/browser/q/b/y;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/y;->d(Lcom/dolphin/browser/q/b/y;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/dolphin/browser/q/b/z;->a:Lcom/dolphin/browser/q/b/y;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/y;->g(Lcom/dolphin/browser/q/b/y;)V

    .line 350
    return-void
.end method

.method public onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/WebViewCallback;->onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 340
    iget-object v0, p0, Lcom/dolphin/browser/q/b/z;->a:Lcom/dolphin/browser/q/b/y;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/y;->a(Lcom/dolphin/browser/q/b/y;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 341
    return-void
.end method

.method public onProgressChanged(Lcom/dolphin/browser/core/IWebView;I)V
    .locals 0

    .prologue
    .line 297
    invoke-static {p1, p2}, Lcom/mgeek/android/util/m;->a(Lcom/dolphin/browser/core/IWebView;I)V

    .line 298
    return-void
.end method

.method public onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 316
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/core/WebViewCallback;->onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/dolphin/browser/q/b/z;->a:Lcom/dolphin/browser/q/b/y;

    new-instance v1, Lcom/dolphin/browser/q/b/af;

    invoke-direct {v1, p3, p2}, Lcom/dolphin/browser/q/b/af;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/b/y;->a(Lcom/dolphin/browser/q/b/y;Ljava/lang/Throwable;)V

    .line 318
    return-void
.end method

.method public onReceivedSslError(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .prologue
    .line 309
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/WebViewCallback;->onReceivedSslError(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V

    .line 310
    iget-object v0, p0, Lcom/dolphin/browser/q/b/z;->a:Lcom/dolphin/browser/q/b/y;

    new-instance v1, Lcom/dolphin/browser/q/b/af;

    const-string v2, "SslError happened."

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/dolphin/browser/q/b/af;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/b/y;->a(Lcom/dolphin/browser/q/b/y;Ljava/lang/Throwable;)V

    .line 311
    return-void
.end method

.method public onReceivedTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    invoke-static {p1}, Lcom/mgeek/android/util/m;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 304
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 322
    const-string v0, "evernote://callback"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Lcom/dolphin/browser/q/b/ab;

    iget-object v1, p0, Lcom/dolphin/browser/q/b/z;->a:Lcom/dolphin/browser/q/b/y;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/q/b/ab;-><init>(Lcom/dolphin/browser/q/b/y;Lcom/dolphin/browser/q/b/z;)V

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/ab;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 334
    :goto_0
    return v3

    .line 327
    :cond_0
    const-string v0, "evernote://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/dolphin/browser/q/b/z;->a:Lcom/dolphin/browser/q/b/y;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/y;->e(Lcom/dolphin/browser/q/b/y;)V

    goto :goto_0

    .line 332
    :cond_1
    invoke-interface {p1, p2}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
