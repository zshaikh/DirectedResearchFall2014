.class Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;
.super Ldolphin/webkit/WebViewClient;
.source "MyWebViewClient.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# instance fields
.field private final mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

.field private final mWebView:Lcom/dolphin/browser/core/IWebView;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ldolphin/webkit/WebViewClient;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    .line 53
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;)Lcom/dolphin/browser/core/IWebViewCallback;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    return-object v0
.end method


# virtual methods
.method public doUpdateVisitedHistory(Ldolphin/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->doUpdateVisitedHistory(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ldolphin/webkit/WebViewClient;->doUpdateVisitedHistory(Ldolphin/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public maybeSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 268
    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v1, p1, v0}, Lcom/dolphin/browser/core/IWebViewCallback;->onSaveUsernamePassword(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDocumentFinished(Ldolphin/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onDocumentFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-super {p0, p1, p2}, Ldolphin/webkit/WebViewClient;->onDocumentFinished(Ldolphin/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFormResubmission(Ldolphin/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onFormResubmission(Lcom/dolphin/browser/core/IWebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ldolphin/webkit/WebViewClient;->onFormResubmission(Ldolphin/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onLoadResource(Ldolphin/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onLoadResource(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 82
    :goto_0
    :try_start_0
    invoke-static {p2}, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->isImageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p2}, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->trackResourceLoadTimeStart(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_1
    return-void

    .line 79
    :cond_1
    invoke-super {p0, p1, p2}, Ldolphin/webkit/WebViewClient;->onLoadResource(Ldolphin/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onPageFinished(Ldolphin/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 102
    :try_start_0
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "network_perf"

    const-string v1, "page_load"

    invoke-static {p2}, Lcom/dolphin/browser/util/URIUtil;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Normal:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackDuration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object v0, p1

    .line 109
    check-cast v0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->notifyUrlUpdated()V

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 115
    :goto_1
    return-void

    .line 113
    :cond_1
    invoke-super {p0, p1, p2}, Ldolphin/webkit/WebViewClient;->onPageFinished(Ldolphin/webkit/WebView;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPageStarted(Ldolphin/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 137
    .line 139
    invoke-static {}, Lcom/dolphin/browser/dolphinwebkit/i;->a()Z

    move-result v2

    .line 140
    if-nez v2, :cond_1

    .line 141
    invoke-static {p1}, Lcom/dolphin/browser/dolphinwebkit/i;->b(Ldolphin/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move-object v0, p1

    .line 156
    check-cast v0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->postPageStart(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v3, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v3, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 163
    if-nez v2, :cond_0

    .line 164
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/h;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/dolphinwebkit/h;-><init>(Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/dolphin/browser/dolphinwebkit/i;->a(Ldolphin/webkit/WebView;Lcom/dolphin/browser/dolphinwebkit/j;)V

    .line 175
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v1, p2

    .line 154
    goto :goto_0

    .line 173
    :cond_2
    invoke-super {p0, p1, p2, p3}, Ldolphin/webkit/WebViewClient;->onPageStarted(Ldolphin/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public onReceivedError(Ldolphin/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewClient;->onReceivedError(Ldolphin/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Ldolphin/webkit/WebView;Ldolphin/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/dolphinwebkit/HttpAuthHandlerWrapper;

    invoke-direct {v2, p2}, Lcom/dolphin/browser/dolphinwebkit/HttpAuthHandlerWrapper;-><init>(Ldolphin/webkit/HttpAuthHandler;)V

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewClient;->onReceivedHttpAuthRequest(Ldolphin/webkit/WebView;Ldolphin/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedResource(Ldolphin/webkit/WebView;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 92
    :try_start_0
    invoke-static {p2}, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->isImageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-ne v0, p3, :cond_0

    .line 93
    invoke-virtual {p1}, Ldolphin/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p4}, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->trackResourceLoadTimeFinish(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceivedSslError(Ldolphin/webkit/WebView;Ldolphin/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/dolphinwebkit/SslErrorHandlerWrapper;

    invoke-direct {v2, p2}, Lcom/dolphin/browser/dolphinwebkit/SslErrorHandlerWrapper;-><init>(Ldolphin/webkit/SslErrorHandler;)V

    invoke-interface {v0, v1, v2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedSslError(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ldolphin/webkit/WebViewClient;->onReceivedSslError(Ldolphin/webkit/WebView;Ldolphin/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public onScaleChanged(Ldolphin/webkit/WebView;FF)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onScaleChanged(Lcom/dolphin/browser/core/IWebView;FF)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ldolphin/webkit/WebViewClient;->onScaleChanged(Ldolphin/webkit/WebView;FF)V

    goto :goto_0
.end method

.method public onTooManyRedirects(Ldolphin/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 217
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 219
    return-void
.end method

.method public onUnhandledKeyEvent(Ldolphin/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onUnhandledKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-super {p0, p1, p2}, Ldolphin/webkit/WebViewClient;->onUnhandledKeyEvent(Ldolphin/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Ldolphin/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->shouldOverrideKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 242
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Ldolphin/webkit/WebViewClient;->shouldOverrideKeyEvent(Ldolphin/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Ldolphin/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z

    move-result v0

    .line 251
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Ldolphin/webkit/WebViewClient;->shouldOverrideUrlLoading(Ldolphin/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
