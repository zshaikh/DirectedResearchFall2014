.class public interface abstract Ldolphin/webkit/WebViewProvider;
.super Ljava/lang/Object;
.source "WebViewProvider.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# virtual methods
.method public abstract addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract canGoBack()Z
.end method

.method public abstract canGoBackOrForward(I)Z
.end method

.method public abstract canGoForward()Z
.end method

.method public abstract canZoomIn()Z
.end method

.method public abstract canZoomOut()Z
.end method

.method public abstract captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
.end method

.method public abstract capturePicture()Landroid/graphics/Picture;
.end method

.method public abstract clearCache(Z)V
.end method

.method public abstract clearFormData()V
.end method

.method public abstract clearHistory()V
.end method

.method public abstract clearMatches()V
.end method

.method public abstract clearSslPreferences()V
.end method

.method public abstract clearView()V
.end method

.method public abstract contentToViewX(I)I
.end method

.method public abstract contentToViewY(I)I
.end method

.method public abstract copyBackForwardList()Ldolphin/webkit/WebBackForwardList;
.end method

.method public abstract copySelection()Z
.end method

.method public abstract debugDump()V
.end method

.method public abstract destroy()V
.end method

.method public abstract dismissZoomControl()V
.end method

.method public abstract documentAsText(Landroid/os/Message;)V
.end method

.method public abstract documentHasImages(Landroid/os/Message;)V
.end method

.method public abstract emulateShiftHeld()V
.end method

.method public abstract findAll(Ljava/lang/String;)I
.end method

.method public abstract findAllAsync(Ljava/lang/String;)V
.end method

.method public abstract findNext(Z)V
.end method

.method public abstract flingScroll(II)V
.end method

.method public abstract freeMemory()V
.end method

.method public abstract gameModeDetectAlertDialogCallback(Z)V
.end method

.method public abstract getBitmapByUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract getCertificate()Landroid/net/http/SslCertificate;
.end method

.method public abstract getContentHeight()I
.end method

.method public abstract getContentWidth()I
.end method

.method public abstract getFavicon()Landroid/graphics/Bitmap;
.end method

.method public abstract getGameModeStatus()Ldolphin/webkit/WebViewProvider$GameModeStatus;
.end method

.method public abstract getHitTestResult()Ldolphin/webkit/WebView$HitTestResult;
.end method

.method public abstract getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getOriginalUrl()Ljava/lang/String;
.end method

.method public abstract getPerformanceCounter(I)J
.end method

.method public abstract getProgress()I
.end method

.method public abstract getScale()F
.end method

.method public abstract getScrollDelegate()Ldolphin/webkit/ku;
.end method

.method public abstract getSettings()Ldolphin/webkit/WebSettings;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTouchIconUrl()Ljava/lang/String;
.end method

.method public abstract getTranscodedContent()Ljava/lang/Object;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;
.end method

.method public abstract getViewHeight()I
.end method

.method public abstract getViewWidth()I
.end method

.method public abstract getVisibleTitleHeight()I
.end method

.method public abstract getWebBackForwardListClient()Ldolphin/webkit/WebBackForwardListClient;
.end method

.method public abstract getZoomControls()Landroid/view/View;
.end method

.method public abstract goBack()V
.end method

.method public abstract goBackOrForward(I)V
.end method

.method public abstract goForward()V
.end method

.method public abstract init(Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract invokeZoomPicker()V
.end method

.method public abstract isInGameMode()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isPrivateBrowsingEnabled()Z
.end method

.method public abstract isReadyToDraw()Z
.end method

.method public abstract isSelectingText()Z
.end method

.method public abstract loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyFindDialogDismissed()V
.end method

.method public abstract onPageNotResponding(Ldolphin/webkit/WebView$WaitPolicyListener;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onWebCoreThreadHang(Ldolphin/webkit/WebView$WaitPolicyListener;)V
.end method

.method public abstract overlayHorizontalScrollbar()Z
.end method

.method public abstract overlayVerticalScrollbar()Z
.end method

.method public abstract pageDown(Z)Z
.end method

.method public abstract pageUp(Z)Z
.end method

.method public abstract pauseTimers()V
.end method

.method public abstract postUrl(Ljava/lang/String;[B)V
.end method

.method public abstract reload()V
.end method

.method public abstract removeJavascriptInterface(Ljava/lang/String;)V
.end method

.method public abstract requestFocusNodeHref(Landroid/os/Message;)V
.end method

.method public abstract requestImageRef(Landroid/os/Message;)V
.end method

.method public abstract restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
.end method

.method public abstract restoreState(Landroid/os/Bundle;)Ldolphin/webkit/WebBackForwardList;
.end method

.method public abstract resumeTimers()V
.end method

.method public abstract savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
.end method

.method public abstract saveState(Landroid/os/Bundle;)Ldolphin/webkit/WebBackForwardList;
.end method

.method public abstract saveWebArchive(Ljava/lang/String;)V
.end method

.method public abstract saveWebArchive(Ljava/lang/String;ZLdolphin/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract selectText()Z
.end method

.method public abstract selectionDone()V
.end method

.method public abstract setCertificate(Landroid/net/http/SslCertificate;)V
.end method

.method public abstract setDownloadListener(Ldolphin/webkit/DownloadListener;)V
.end method

.method public abstract setFindIsUp(Z)V
.end method

.method public abstract setFindListener(Ldolphin/webkit/WebView$FindListener;)V
.end method

.method public abstract setGameModeStatus(Ldolphin/webkit/WebViewProvider$GameModeStatus;)V
.end method

.method public abstract setHorizontalScrollbarOverlay(Z)V
.end method

.method public abstract setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setInitialScale(I)V
.end method

.method public abstract setJsFlags(Ljava/lang/String;)V
.end method

.method public abstract setMapTrackballToArrowKeys(Z)V
.end method

.method public abstract setNetworkAvailable(Z)V
.end method

.method public abstract setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPictureListener(Ldolphin/webkit/WebView$PictureListener;)V
.end method

.method public abstract setTranscodedContent(Ljava/lang/Object;)V
.end method

.method public abstract setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setVerticalScrollbarOverlay(Z)V
.end method

.method public abstract setWebBackForwardListClient(Ldolphin/webkit/WebBackForwardListClient;)V
.end method

.method public abstract setWebChromeClient(Ldolphin/webkit/WebChromeClient;)V
.end method

.method public abstract setWebContentClient(Ldolphin/webkit/WebContentClient;)V
.end method

.method public abstract setWebViewClient(Ldolphin/webkit/WebViewClient;)V
.end method

.method public abstract showFindDialog(Ljava/lang/String;Z)Z
.end method

.method public abstract stopLoading()V
.end method

.method public abstract switchToGameMode()V
.end method

.method public abstract viewToContentX(I)I
.end method

.method public abstract viewToContentY(I)I
.end method

.method public abstract zoomIn()Z
.end method

.method public abstract zoomOut()Z
.end method
