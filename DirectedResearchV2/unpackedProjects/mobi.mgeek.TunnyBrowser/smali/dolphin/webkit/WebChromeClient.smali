.class public Ldolphin/webkit/WebChromeClient;
.super Ljava/lang/Object;
.source "WebChromeClient.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeFind()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 409
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Ldolphin/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldolphin/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    return-void
.end method

.method public onAdBlockUpdate(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onCheckFullScreenStatus(Ldolphin/webkit/WebView;)Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseWindow(Ldolphin/webkit/WebView;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 382
    return-void
.end method

.method public onConsoleMessage(Ldolphin/webkit/bf;)Z
    .locals 3

    .prologue
    .line 392
    invoke-virtual {p1}, Ldolphin/webkit/bf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ldolphin/webkit/bf;->c()I

    move-result v1

    invoke-virtual {p1}, Ldolphin/webkit/bf;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ldolphin/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateWindow(Ldolphin/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLdolphin/webkit/WebStorage$QuotaUpdater;)V
    .locals 0

    .prologue
    .line 311
    invoke-interface {p9, p3, p4}, Ldolphin/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 312
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Ldolphin/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public onHideCustomView()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onJsAlert(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public onJsBeforeUnload(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public onJsConfirm(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public onJsPrompt(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsPromptResult;)Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public onJsTimeout()Z
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public onPageNotResponding(Ldolphin/webkit/WebView;Ldolphin/webkit/WebView$WaitPolicyListener;)V
    .locals 3

    .prologue
    .line 493
    invoke-virtual {p1}, Ldolphin/webkit/WebView;->getSettings()Ldolphin/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getNativeStackDumpFile()Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-virtual {p1}, Ldolphin/webkit/WebView;->getSettings()Ldolphin/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebSettings;->getCacheLogDumpFile()Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-virtual {p1}, Ldolphin/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldolphin/webkit/fh;->a(Landroid/content/Context;)Ldolphin/webkit/fh;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ldolphin/webkit/fh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {}, Ldolphin/webkit/fh;->a()Ldolphin/webkit/fh;

    move-result-object v0

    invoke-virtual {v0, p2}, Ldolphin/webkit/fh;->a(Ldolphin/webkit/WebView$WaitPolicyListener;)V

    .line 497
    return-void
.end method

.method public onProgressChanged(Ldolphin/webkit/WebView;I)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLdolphin/webkit/WebStorage$QuotaUpdater;)V
    .locals 0

    .prologue
    .line 333
    invoke-interface {p5, p3, p4}, Ldolphin/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 334
    return-void
.end method

.method public onReceivedIcon(Ldolphin/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onReceivedTitle(Ldolphin/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onReceivedTouchIconUrl(Ldolphin/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onRequestFocus(Ldolphin/webkit/WebView;)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILdolphin/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Ldolphin/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onTranscodeUpdate(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public openFileChooser(Ldolphin/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ldolphin/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 454
    return-void
.end method

.method public openFileChooser(Ldolphin/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/WebChromeClient;->openFileChooser(Ldolphin/webkit/ValueCallback;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public setFullScreen(Ldolphin/webkit/WebView;Z)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public setInstallableWebApp()V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public showDownloadFlashPluginDialog(Ldolphin/webkit/WebView;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public showGameModeAlertDialog(Ldolphin/webkit/WebView;Z)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public switchToGameMode()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public trackVideoEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
