.class Lcom/dolphin/browser/q/d/u;
.super Lcom/dolphin/browser/core/WebViewCallback;
.source "TwitterAuthDialog.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/s;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/s;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/dolphin/browser/q/d/u;->a:Lcom/dolphin/browser/q/d/s;

    invoke-direct {p0}, Lcom/dolphin/browser/core/WebViewCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 316
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/WebViewCallback;->onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/dolphin/browser/q/d/u;->a:Lcom/dolphin/browser/q/d/s;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/s;->f(Lcom/dolphin/browser/q/d/s;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 318
    iget-object v0, p0, Lcom/dolphin/browser/q/d/u;->a:Lcom/dolphin/browser/q/d/s;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/s;->e(Lcom/dolphin/browser/q/d/s;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/dolphin/browser/q/d/u;->a:Lcom/dolphin/browser/q/d/s;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/s;->g(Lcom/dolphin/browser/q/d/s;)V

    .line 320
    return-void
.end method

.method public onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 310
    const-string v0, "Twitter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/WebViewCallback;->onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 312
    return-void
.end method

.method public onProgressChanged(Lcom/dolphin/browser/core/IWebView;I)V
    .locals 0

    .prologue
    .line 274
    invoke-static {p1, p2}, Lcom/mgeek/android/util/m;->a(Lcom/dolphin/browser/core/IWebView;I)V

    .line 275
    return-void
.end method

.method public onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/core/WebViewCallback;->onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/q/d/u;->a:Lcom/dolphin/browser/q/d/s;

    new-instance v1, Lcom/dolphin/browser/q/d/y;

    invoke-direct {v1, p3, p4, p2}, Lcom/dolphin/browser/q/d/y;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/d/s;->a(Lcom/dolphin/browser/q/d/s;Ljava/lang/Throwable;)V

    .line 306
    return-void
.end method

.method public onReceivedTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    invoke-static {p1}, Lcom/mgeek/android/util/m;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 281
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 285
    const-string v0, "Twitter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v0, "twitter://callback"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Lcom/dolphin/browser/q/d/v;

    iget-object v1, p0, Lcom/dolphin/browser/q/d/u;->a:Lcom/dolphin/browser/q/d/s;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/q/d/v;-><init>(Lcom/dolphin/browser/q/d/s;Lcom/dolphin/browser/q/d/t;)V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 298
    :goto_0
    return v4

    .line 291
    :cond_0
    const-string v0, "twitter://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/q/d/u;->a:Lcom/dolphin/browser/q/d/s;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/s;->a(Lcom/dolphin/browser/q/d/s;)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/d/u;->a:Lcom/dolphin/browser/q/d/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/s;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method
