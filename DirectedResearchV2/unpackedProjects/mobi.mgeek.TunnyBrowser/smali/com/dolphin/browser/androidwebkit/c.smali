.class Lcom/dolphin/browser/androidwebkit/c;
.super Landroid/webkit/WebChromeClient;
.source "MyWebChromeClient.java"


# instance fields
.field private final a:Lcom/dolphin/browser/core/IWebViewCallback;

.field private final b:Lcom/dolphin/browser/core/IWebView;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    .line 48
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    .line 49
    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    new-instance v1, Lcom/dolphin/browser/androidwebkit/ValueCallbackWrapper;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/androidwebkit/ValueCallbackWrapper;-><init>(Landroid/webkit/ValueCallback;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->getVisitedHistory(Lcom/dolphin/browser/core/ValueCallback;)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-static {p1}, Lcom/dolphin/browser/core/WebViewFactory;->getIWebViewFromView(Landroid/view/View;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onCloseWindow(Lcom/dolphin/browser/core/IWebView;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    new-instance v1, Lcom/dolphin/browser/core/ConsoleMessage;

    invoke-direct {v1, p1, p3, p2}, Lcom/dolphin/browser/core/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onConsoleMessage(Lcom/dolphin/browser/core/ConsoleMessage;)Z

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/androidwebkit/CreateWindowHandlerWrapper;

    invoke-direct {v2, p4}, Lcom/dolphin/browser/androidwebkit/CreateWindowHandlerWrapper;-><init>(Landroid/os/Message;)V

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/dolphin/browser/core/IWebViewCallback;->onCreateWindow(Lcom/dolphin/browser/core/IWebView;ZZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 11

    .prologue
    .line 201
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    new-instance v10, Lcom/dolphin/browser/androidwebkit/QuotaUpdaterWrapper;

    move-object/from16 v0, p9

    invoke-direct {v10, v0}, Lcom/dolphin/browser/androidwebkit/QuotaUpdaterWrapper;-><init>(Landroid/webkit/WebStorage$QuotaUpdater;)V

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-interface/range {v1 .. v10}, Lcom/dolphin/browser/core/IWebViewCallback;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onGeolocationPermissionsHidePrompt(Lcom/dolphin/browser/core/IWebView;)V

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/androidwebkit/GeolocationCallbackWrapper;

    invoke-direct {v2, p2}, Lcom/dolphin/browser/androidwebkit/GeolocationCallbackWrapper;-><init>(Landroid/webkit/GeolocationPermissions$Callback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/dolphin/browser/core/IWebViewCallback;->onGeolocationPermissionsShowPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_0
.end method

.method public onHideCustomView()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onHideCustomView(Lcom/dolphin/browser/core/IWebView;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_1

    .line 94
    if-nez p3, :cond_0

    .line 95
    const-string p3, ""

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/androidwebkit/JsResultWrapper;

    invoke-direct {v2, p4}, Lcom/dolphin/browser/androidwebkit/JsResultWrapper;-><init>(Landroid/webkit/JsResult;)V

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsAlert(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_1

    .line 132
    if-nez p3, :cond_0

    .line 133
    const-string p3, ""

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/androidwebkit/JsResultWrapper;

    invoke-direct {v2, p4}, Lcom/dolphin/browser/androidwebkit/JsResultWrapper;-><init>(Landroid/webkit/JsResult;)V

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsBeforeUnload(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_1

    .line 106
    if-nez p3, :cond_0

    .line 107
    const-string p3, ""

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/androidwebkit/JsResultWrapper;

    invoke-direct {v2, p4}, Lcom/dolphin/browser/androidwebkit/JsResultWrapper;-><init>(Landroid/webkit/JsResult;)V

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsConfirm(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 119
    if-nez p3, :cond_1

    .line 120
    const-string v3, ""

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    new-instance v5, Lcom/dolphin/browser/androidwebkit/JsPromptResultWrapper;

    invoke-direct {v5, p5}, Lcom/dolphin/browser/androidwebkit/JsPromptResultWrapper;-><init>(Landroid/webkit/JsPromptResult;)V

    move-object v2, p2

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsPromptResult;)Z

    move-result v0

    .line 125
    :goto_1
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_1

    :cond_1
    move-object v3, p3

    goto :goto_0
.end method

.method public onJsTimeout()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsTimeout()Z

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onProgressChanged(Lcom/dolphin/browser/core/IWebView;I)V

    .line 66
    :goto_0
    const/16 v0, 0x64

    if-ne v0, p2, :cond_0

    .line 67
    invoke-static {p1}, Lcom/dolphin/browser/androidwebkit/t;->a(Landroid/webkit/WebView;)V

    .line 69
    :cond_0
    return-void

    .line 57
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 6

    .prologue
    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    new-instance v5, Lcom/dolphin/browser/androidwebkit/QuotaUpdaterWrapper;

    invoke-direct {v5, p5}, Lcom/dolphin/browser/androidwebkit/QuotaUpdaterWrapper;-><init>(Landroid/webkit/WebStorage$QuotaUpdater;)V

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/core/IWebViewCallback;->onReachedMaxAppCacheSize(JJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_0
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedIcon(Lcom/dolphin/browser/core/IWebView;Landroid/graphics/Bitmap;)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 252
    move-object v0, p1

    check-cast v0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->x()V

    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedTouchIconUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onRequestFocus(Lcom/dolphin/browser/core/IWebView;)V

    .line 300
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public onSelectionDone(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onSelectionDone(Lcom/dolphin/browser/core/IWebView;)V

    .line 350
    :cond_0
    return-void
.end method

.method public onSelectionStart(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onSelectionStart(Lcom/dolphin/browser/core/IWebView;)V

    .line 339
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .prologue
    .line 289
    invoke-virtual {p0, p1, p3}, Lcom/dolphin/browser/androidwebkit/c;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 290
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/androidwebkit/CustomViewCallbackWrapper;

    invoke-direct {v2, p2}, Lcom/dolphin/browser/androidwebkit/CustomViewCallbackWrapper;-><init>(Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/dolphin/browser/core/IWebViewCallback;->onShowCustomView(Lcom/dolphin/browser/core/IWebView;Landroid/view/View;Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    const-string v0, "*/*"

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/androidwebkit/c;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/c;->b:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/androidwebkit/ValueCallbackWrapper;

    invoke-direct {v2, p1}, Lcom/dolphin/browser/androidwebkit/ValueCallbackWrapper;-><init>(Landroid/webkit/ValueCallback;)V

    invoke-interface {v0, v1, v2, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->openFileChooser(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ValueCallback;Ljava/lang/String;)V

    .line 311
    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/c;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public setInstallableWebApp()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback;->setInstallableWebApp()V

    .line 322
    :cond_0
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/c;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebViewCallback;->setupAutoFill(Landroid/os/Message;)V

    .line 328
    :cond_0
    return-void
.end method
