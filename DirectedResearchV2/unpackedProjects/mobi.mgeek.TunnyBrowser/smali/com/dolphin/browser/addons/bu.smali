.class Lcom/dolphin/browser/addons/bu;
.super Ljava/lang/Object;
.source "WebViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/addons/WebViewImpl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/WebViewImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/dolphin/browser/addons/bu;->b:Lcom/dolphin/browser/addons/WebViewImpl;

    iput-object p2, p0, Lcom/dolphin/browser/addons/bu;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 272
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.JAVASCRIPT_CROSS_ORIGIN_ACCESS"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->k(Ljava/lang/String;)Z

    move-result v0

    .line 273
    iget-object v1, p0, Lcom/dolphin/browser/addons/bu;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/dolphin/browser/addons/bu;->b:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v1}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/IWebSettings;->setJavascriptCanAccessCrossOrigin(Z)V

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/addons/bu;->b:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v1}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/addons/bu;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/dolphin/browser/addons/bu;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/addons/bu;->b:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v0}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebSettings;->setJavascriptCanAccessCrossOrigin(Z)V

    .line 280
    :cond_1
    return-void
.end method
