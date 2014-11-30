.class Lcom/dolphin/browser/androidwebkit/r;
.super Landroid/webkit/WebViewClient;
.source "MyWebViewClient.java"


# instance fields
.field private final a:Lcom/dolphin/browser/core/IWebViewCallback;

.field private final b:Lcom/dolphin/browser/core/IWebView;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    .line 48
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/r;->b:Lcom/dolphin/browser/core/IWebView;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/androidwebkit/r;)Lcom/dolphin/browser/core/IWebViewCallback;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    return-object v0
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/r;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->doUpdateVisitedHistory(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/r;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onFormResubmission(Lcom/dolphin/browser/core/IWebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/r;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onLoadResource(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    move-object v0, p1

    check-cast v0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->x()V

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/r;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 98
    invoke-static {p1}, Lcom/dolphin/browser/androidwebkit/t;->b(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    .line 104
    check-cast v0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/r;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v2, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 111
    new-instance v0, Lcom/dolphin/browser/androidwebkit/s;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/androidwebkit/s;-><init>(Lcom/dolphin/browser/androidwebkit/r;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/dolphin/browser/androidwebkit/t;->a(Landroid/webkit/WebView;Lcom/dolphin/browser/androidwebkit/u;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/r;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/r;->b:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/androidwebkit/HttpAuthHandlerWrapper;

    invoke-direct {v2, p2}, Lcom/dolphin/browser/androidwebkit/HttpAuthHandlerWrapper;-><init>(Landroid/webkit/HttpAuthHandler;)V

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/r;->b:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/androidwebkit/SslErrorHandlerWrapper;

    invoke-direct {v2, p2}, Lcom/dolphin/browser/androidwebkit/SslErrorHandlerWrapper;-><init>(Landroid/webkit/SslErrorHandler;)V

    invoke-interface {v0, v1, v2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedSslError(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/r;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onScaleChanged(Lcom/dolphin/browser/core/IWebView;FF)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto :goto_0
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 169
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 171
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/r;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onUnhandledKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/r;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->shouldOverrideKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/r;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/r;->b:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
