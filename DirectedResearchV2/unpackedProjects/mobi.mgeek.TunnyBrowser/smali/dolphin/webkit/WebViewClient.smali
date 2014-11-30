.class public Ldolphin/webkit/WebViewClient;
.super Ljava/lang/Object;
.source "WebViewClient.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field public static final ERROR_AUTHENTICATION:I = -0x4

.field public static final ERROR_BAD_URL:I = -0xc

.field public static final ERROR_CONNECT:I = -0x6

.field public static final ERROR_FAILED_SSL_HANDSHAKE:I = -0xb

.field public static final ERROR_FILE:I = -0xd

.field public static final ERROR_FILE_NOT_FOUND:I = -0xe

.field public static final ERROR_HOST_LOOKUP:I = -0x2

.field public static final ERROR_IO:I = -0x7

.field public static final ERROR_PROXY_AUTHENTICATION:I = -0x5

.field public static final ERROR_REDIRECT_LOOP:I = -0x9

.field public static final ERROR_TIMEOUT:I = -0x8

.field public static final ERROR_TOO_MANY_REQUESTS:I = -0xf

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final ERROR_UNSUPPORTED_AUTH_SCHEME:I = -0x3

.field public static final ERROR_UNSUPPORTED_SCHEME:I = -0xa

.field public static final REASON_INTERCEPTED_BY_SYSTEM:I = 0x4

.field public static final REASON_INTERCEPTED_BY_SYSTEM_FAILED:I = 0x5

.field public static final REASON_INTERCEPTED_BY_USER:I = 0x3

.field public static final REASON_LOADED_FROM_CACHE:I = 0x2

.field public static final REASON_LOADED_FROM_HTTP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Ldolphin/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public maybeSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public onDocumentFinished(Ldolphin/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onFormResubmission(Ldolphin/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 210
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 211
    return-void
.end method

.method public onLoadResource(Ldolphin/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onPageFinished(Ldolphin/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onPageMilestoneChanged(Ldolphin/webkit/WebView;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onPageStarted(Ldolphin/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onProceededAfterSslError(Ldolphin/webkit/WebView;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onReceivedClientCertRequest(Ldolphin/webkit/WebView;Ldolphin/webkit/ay;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    invoke-virtual {p2}, Ldolphin/webkit/ay;->a()V

    .line 268
    return-void
.end method

.method public onReceivedError(Ldolphin/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public onReceivedHttpAuthRequest(Ldolphin/webkit/WebView;Ldolphin/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    invoke-virtual {p2}, Ldolphin/webkit/HttpAuthHandler;->cancel()V

    .line 283
    return-void
.end method

.method public onReceivedLoginRequest(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public onReceivedResource(Ldolphin/webkit/WebView;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public onReceivedSslError(Ldolphin/webkit/WebView;Ldolphin/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 238
    invoke-virtual {p2}, Ldolphin/webkit/SslErrorHandler;->cancel()V

    .line 239
    return-void
.end method

.method public onScaleChanged(Ldolphin/webkit/WebView;FF)V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public onTooManyRedirects(Ldolphin/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 144
    return-void
.end method

.method public onUnhandledKeyEvent(Ldolphin/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public shouldInterceptRequest(Ldolphin/webkit/WebView;Ljava/lang/String;)Ldolphin/webkit/WebResourceResponse;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideKeyEvent(Ldolphin/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Ldolphin/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
