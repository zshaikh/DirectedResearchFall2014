.class public Lcom/dolphin/browser/core/WebViewCallback;
.super Ljava/lang/Object;
.source "WebViewCallback.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebViewCallback;


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Lcom/dolphin/browser/core/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    return-void
.end method

.method public interceptUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 233
    return-object p2
.end method

.method public onCheckFullScreenStatus(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseWindow(Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onConsoleMessage(Lcom/dolphin/browser/core/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateWindow(Lcom/dolphin/browser/core/IWebView;ZZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public onDocumentFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onDownloadStart(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V
    .locals 0

    .prologue
    .line 158
    invoke-interface {p9, p3, p4}, Lcom/dolphin/browser/core/IWebStorage$QuotaUpdater;->updateQuota(J)V

    .line 159
    return-void
.end method

.method public onFormResubmission(Lcom/dolphin/browser/core/IWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 64
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt(Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onHideCustomView(Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onJsAlert(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public onJsBeforeUnload(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onJsConfirm(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public onJsPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsPromptResult;)Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public onJsTimeout()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public onLoadResource(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onProgressChanged(Lcom/dolphin/browser/core/IWebView;I)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V
    .locals 2

    .prologue
    .line 164
    const-wide/16 v0, 0x0

    invoke-interface {p5, v0, v1}, Lcom/dolphin/browser/core/IWebStorage$QuotaUpdater;->updateQuota(J)V

    .line 165
    return-void
.end method

.method public onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-interface {p2}, Lcom/dolphin/browser/core/IHttpAuthHandler;->cancel()V

    .line 79
    return-void
.end method

.method public onReceivedIcon(Lcom/dolphin/browser/core/IWebView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onReceivedSslError(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 72
    invoke-interface {p2}, Lcom/dolphin/browser/core/ISslErrorHandler;->cancel()V

    .line 73
    return-void
.end method

.method public onReceivedTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onReceivedTouchIconUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onRequestFocus(Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onRequestUsernamePassword(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public onSaveUsernamePassword(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public onScaleChanged(Lcom/dolphin/browser/core/IWebView;FF)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onSelectionDone(Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onSelectionStart(Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 201
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->cancelSelectText()V

    .line 202
    return-void
.end method

.method public onShowCustomView(Lcom/dolphin/browser/core/IWebView;Landroid/view/View;Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public openFileChooser(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/core/IWebView;",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/dolphin/browser/core/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method public setFullScreen(Lcom/dolphin/browser/core/IWebView;Z)V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public setInstallableWebApp()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public shouldOverrideKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method
