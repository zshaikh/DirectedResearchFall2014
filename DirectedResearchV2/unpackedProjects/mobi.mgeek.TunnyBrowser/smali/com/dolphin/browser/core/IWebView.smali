.class public interface abstract Lcom/dolphin/browser/core/IWebView;
.super Ljava/lang/Object;
.source "IWebView.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# static fields
.field public static final FEATURE_ALL:I = -0x1

.field public static final FEATURE_FIND:I = 0x2

.field public static final FEATURE_HAS_URL:I = 0x4

.field public static final FEATURE_LOAD_URL:I = 0x8

.field public static final FEATURE_RELOAD:I = 0x10

.field public static final FEATURE_SELECT_TEXT:I = 0x1

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"


# virtual methods
.method public abstract addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract addPackageName(Ljava/lang/String;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract addPackageNames(Ljava/util/Set;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract canGoBack()Z
.end method

.method public abstract canGoBackOrForward(I)Z
.end method

.method public abstract canGoForward()Z
.end method

.method public abstract cancelSelectText()V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
.end method

.method public abstract capturePicture()Landroid/graphics/Picture;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract clearCache(Z)V
.end method

.method public abstract clearFormData()V
.end method

.method public abstract clearHistory()V
.end method

.method public abstract clearMatches()V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract clearSslPreferences()V
.end method

.method public abstract clearView()V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract contentToViewX(I)I
.end method

.method public abstract contentToViewY(I)I
.end method

.method public abstract copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;
.end method

.method public abstract destroy()V
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract doCopySelection()Z
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract doSelectTextDone()V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract documentAsText(Landroid/os/Message;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract findAll(Ljava/lang/String;)I
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract findAll(Ljava/lang/String;Lcom/dolphin/browser/core/IWebView$FindResultListener;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract findNext(Z)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract flingScroll(II)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract freeMemory()V
.end method

.method public abstract getCertificate()Landroid/net/http/SslCertificate;
.end method

.method public abstract getContentHeight()I
.end method

.method public abstract getContentWidth()I
.end method

.method public abstract getContext()Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFavicon()Landroid/graphics/Bitmap;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getHitTestResult2()Lcom/dolphin/browser/core/IWebView$HitTestResult;
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getOriginalUrl()Ljava/lang/String;
.end method

.method public abstract getProgress()I
.end method

.method public abstract getScale()F
.end method

.method public abstract getScrollX()I
.end method

.method public abstract getScrollY()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTitleBar()Landroid/view/View;
.end method

.method public abstract getTitleHeight()I
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getView(Z)Landroid/view/View;
.end method

.method public abstract getViewHeight()I
.end method

.method public abstract getViewWidth()I
.end method

.method public abstract getVisibleTitleHeight()I
.end method

.method public abstract getWebSettings()Lcom/dolphin/browser/core/IWebSettings;
.end method

.method public abstract getWebView()Ljava/lang/Object;
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getWebViewCallback()Lcom/dolphin/browser/core/IWebViewCallback;
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract getWidth()I
.end method

.method public abstract goBack()V
.end method

.method public abstract goBackOrForward(I)V
.end method

.method public abstract goForward()V
.end method

.method public abstract hasFeature(I)Z
.end method

.method public abstract hideTitleBar()V
.end method

.method public abstract hideZoomButtonsController()V
.end method

.method public abstract invokeZoomPicker()V
.end method

.method public abstract isAtLeftEdge()Z
.end method

.method public abstract isAtRightEdge()Z
.end method

.method public abstract isDestroyed()Z
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isPrivateBrowsingEnabled()Z
.end method

.method public abstract isSelectingText()Z
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract notifyFindDialogDismissed2()V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract onTrackballEvent(Landroid/view/MotionEvent;)Z
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract onWindowFocusChanged(Z)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract pageDown(Z)Z
.end method

.method public abstract pageUp(Z)Z
.end method

.method public abstract pauseTimers()V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract postUrl(Ljava/lang/String;[B)V
.end method

.method public abstract reload()V
.end method

.method public abstract removeJavascriptInterface(Ljava/lang/String;)V
.end method

.method public abstract removePackageName(Ljava/lang/String;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract requestFocus()Z
.end method

.method public abstract requestFocusNodeHref(Landroid/os/Message;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract requestImageRef(Landroid/os/Message;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract restoreState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract resumeTimers()V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract saveState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract saveWebArchive(Ljava/lang/String;)V
.end method

.method public abstract saveWebArchive(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract scrollTo(II)V
.end method

.method public abstract setBackgroundColor(I)V
.end method

.method public abstract setCertificate(Landroid/net/http/SslCertificate;)V
.end method

.method public abstract setContextPanelListener(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract setFindDialogHeight(I)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract setFindIsUp(Z)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setInitialScale(I)V
.end method

.method public abstract setJsFlags(Ljava/lang/String;)V
.end method

.method public abstract setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract setMapTrackballToArrowKeys(Z)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract setNetworkAvailable(Z)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract setOnScrollListener(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V
.end method

.method public abstract setOverScrollMode(I)V
.end method

.method public abstract setPictureListener(Lcom/dolphin/browser/core/IWebView$PictureListener;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract setScrollBarStyle(I)V
.end method

.method public abstract setScrollbarFadingEnabled(Z)V
.end method

.method public abstract setSelectTextListener(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract setTitleBar(Landroid/view/View;)V
.end method

.method public abstract setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V
.end method

.method public abstract showTitleBar()V
.end method

.method public abstract startSelectText()V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract stopLoading()V
.end method

.method public abstract viewToContentX(I)I
.end method

.method public abstract viewToContentY(I)I
.end method

.method public abstract zoomIn()Z
.end method

.method public abstract zoomOut()Z
.end method
