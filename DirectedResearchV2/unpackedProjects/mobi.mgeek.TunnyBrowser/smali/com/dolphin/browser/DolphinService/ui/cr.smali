.class Lcom/dolphin/browser/DolphinService/ui/cr;
.super Lcom/dolphin/browser/core/WebViewCallback;
.source "WebHostActivity.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/cr;->a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/core/WebViewCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Lcom/dolphin/browser/core/IWebView;)V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/WebViewCallback;->onCloseWindow(Lcom/dolphin/browser/core/IWebView;)V

    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cr;->a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a()V

    .line 170
    return-void
.end method

.method public onDownloadStart(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .prologue
    .line 210
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v7

    .line 211
    if-eqz v7, :cond_0

    .line 212
    invoke-static {}, Lcom/dolphin/browser/t/a;->a()Lcom/dolphin/browser/t/a;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-wide v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/t/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 214
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/cr;->a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;

    const-class v2, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/cr;->a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showMiddlePageView(Z)V

    .line 217
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cr;->a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a()V

    .line 219
    :cond_0
    return-void
.end method

.method public onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 200
    const-string v0, "WebHostAcitivity"

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

    .line 201
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/WebViewCallback;->onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 202
    if-eqz p2, :cond_0

    .line 203
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cr;->a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a(Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cr;->a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->c(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 189
    const-string v0, "WebHostAcitivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview start loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/WebViewCallback;->onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 191
    if-eqz p2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cr;->a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->b()V

    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cr;->a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;

    iget-object v0, v0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->c:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/dolphin/browser/util/cn;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cr;->a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->b(Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onProgressChanged(Lcom/dolphin/browser/core/IWebView;I)V
    .locals 1

    .prologue
    .line 223
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 224
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/dolphin/browser/util/bu;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void
.end method

.method public onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    if-eqz p4, :cond_0

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cr;->a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a(Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 180
    invoke-interface {p2}, Lcom/dolphin/browser/core/ISslErrorHandler;->proceed()V

    .line 181
    return-void
.end method

.method public onReceivedTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/dolphin/browser/util/bu;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 235
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cr;->a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;

    invoke-static {v0, p2}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a(Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
