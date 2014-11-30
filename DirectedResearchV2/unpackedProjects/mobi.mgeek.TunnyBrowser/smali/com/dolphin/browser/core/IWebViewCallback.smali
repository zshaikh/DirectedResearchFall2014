.class public interface abstract Lcom/dolphin/browser/core/IWebViewCallback;
.super Ljava/lang/Object;
.source "IWebViewCallback.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
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


# virtual methods
.method public abstract doUpdateVisitedHistory(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V
.end method

.method public abstract getDefaultVideoPoster()Landroid/graphics/Bitmap;
.end method

.method public abstract getVideoLoadingProgressView()Landroid/view/View;
.end method

.method public abstract getVisitedHistory(Lcom/dolphin/browser/core/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract interceptUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract onCheckFullScreenStatus(Lcom/dolphin/browser/core/IWebView;)Z
.end method

.method public abstract onCloseWindow(Lcom/dolphin/browser/core/IWebView;)V
.end method

.method public abstract onConsoleMessage(Lcom/dolphin/browser/core/ConsoleMessage;)Z
.end method

.method public abstract onCreateWindow(Lcom/dolphin/browser/core/IWebView;ZZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)Z
.end method

.method public abstract onDocumentFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
.end method

.method public abstract onDownloadStart(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V
.end method

.method public abstract onFormResubmission(Lcom/dolphin/browser/core/IWebView;Landroid/os/Message;Landroid/os/Message;)V
.end method

.method public abstract onGeolocationPermissionsHidePrompt(Lcom/dolphin/browser/core/IWebView;)V
.end method

.method public abstract onGeolocationPermissionsShowPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;)V
.end method

.method public abstract onHideCustomView(Lcom/dolphin/browser/core/IWebView;)V
.end method

.method public abstract onJsAlert(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
.end method

.method public abstract onJsBeforeUnload(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
.end method

.method public abstract onJsConfirm(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
.end method

.method public abstract onJsPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsPromptResult;)Z
.end method

.method public abstract onJsTimeout()Z
.end method

.method public abstract onLoadResource(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
.end method

.method public abstract onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
.end method

.method public abstract onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onProgressChanged(Lcom/dolphin/browser/core/IWebView;I)V
.end method

.method public abstract onReachedMaxAppCacheSize(JJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V
.end method

.method public abstract onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceivedIcon(Lcom/dolphin/browser/core/IWebView;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onReceivedSslError(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V
.end method

.method public abstract onReceivedTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
.end method

.method public abstract onReceivedTouchIconUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V
.end method

.method public abstract onRequestFocus(Lcom/dolphin/browser/core/IWebView;)V
.end method

.method public abstract onRequestUsernamePassword(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
.end method

.method public abstract onSaveUsernamePassword(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract onScaleChanged(Lcom/dolphin/browser/core/IWebView;FF)V
.end method

.method public abstract onSelectionDone(Lcom/dolphin/browser/core/IWebView;)V
.end method

.method public abstract onSelectionStart(Lcom/dolphin/browser/core/IWebView;)V
.end method

.method public abstract onShowCustomView(Lcom/dolphin/browser/core/IWebView;Landroid/view/View;Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;)V
.end method

.method public abstract onUnhandledKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)V
.end method

.method public abstract openFileChooser(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ValueCallback;Ljava/lang/String;)V
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
.end method

.method public abstract setFullScreen(Lcom/dolphin/browser/core/IWebView;Z)V
.end method

.method public abstract setInstallableWebApp()V
.end method

.method public abstract setupAutoFill(Landroid/os/Message;)V
.end method

.method public abstract shouldOverrideKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)Z
.end method

.method public abstract shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
.end method
