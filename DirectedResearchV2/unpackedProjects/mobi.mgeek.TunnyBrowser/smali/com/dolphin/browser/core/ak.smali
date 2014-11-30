.class public Lcom/dolphin/browser/core/ak;
.super Lcom/dolphin/browser/core/bg;
.source "RestorePageTab.java"


# instance fields
.field private a:Lcom/dolphin/browser/core/al;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;ILandroid/view/View;Ljava/lang/String;Lcom/dolphin/browser/core/al;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/core/bg;-><init>(Lcom/dolphin/browser/core/TabManager;ILandroid/view/View;Ljava/lang/String;)V

    .line 20
    iput-object p5, p0, Lcom/dolphin/browser/core/ak;->a:Lcom/dolphin/browser/core/al;

    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->a(Lcom/dolphin/browser/core/IWebView;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/bg;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic addChildTab(Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->addChildTab(Lcom/dolphin/browser/core/ITab;)V

    return-void
.end method

.method public bridge synthetic addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/bg;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic addPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->addPackageName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic addPackageNames(Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->addPackageNames(Ljava/util/Set;)V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->c()V

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic canGoBackOrForward(I)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic canGoForward()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canStateUndo()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public canUndo()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic cancelSelectText()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->cancelSelectText()V

    return-void
.end method

.method public bridge synthetic captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/bg;->captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearCache(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->clearCache(Z)V

    return-void
.end method

.method public bridge synthetic clearContentAndHistory()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->clearContentAndHistory()V

    return-void
.end method

.method public bridge synthetic clearFormData()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->clearFormData()V

    return-void
.end method

.method public bridge synthetic clearHistory()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->clearHistory()V

    return-void
.end method

.method public bridge synthetic clearInLoad()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->clearInLoad()V

    return-void
.end method

.method public bridge synthetic clearMatches()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->clearMatches()V

    return-void
.end method

.method public bridge synthetic clearPageData()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->clearPageData()V

    return-void
.end method

.method public bridge synthetic clearSslPreferences()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->clearSslPreferences()V

    return-void
.end method

.method public bridge synthetic clearView()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->clearView()V

    return-void
.end method

.method public bridge synthetic closeOnExit()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->closeOnExit()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->containsView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsWebView(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->containsWebView(Lcom/dolphin/browser/core/IWebView;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic contentToViewX(I)I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->contentToViewX(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic contentToViewY(I)I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->contentToViewY(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic destroy()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->destroy()V

    return-void
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic doCopySelection()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->doCopySelection()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic doSelectTextDone()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->doSelectTextDone()V

    return-void
.end method

.method public bridge synthetic documentAsText(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->documentAsText(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic findAll(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->findAll(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic findAll(Ljava/lang/String;Lcom/dolphin/browser/core/IWebView$FindResultListener;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/bg;->findAll(Ljava/lang/String;Lcom/dolphin/browser/core/IWebView$FindResultListener;)V

    return-void
.end method

.method public bridge synthetic findNext(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->findNext(Z)V

    return-void
.end method

.method public bridge synthetic flingScroll(II)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/bg;->flingScroll(II)V

    return-void
.end method

.method public bridge synthetic freeMemory()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->freeMemory()V

    return-void
.end method

.method public bridge synthetic getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChildTabs()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getChildTabs()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentWidth()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getData(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->getData(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFakeProgress()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getFakeProgress()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFirstChildTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getFirstChildTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFlatHistoryCount()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getFlatHistoryCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFlatHistoryIndex()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getFlatHistoryIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHitTestResult2()Lcom/dolphin/browser/core/IWebView$HitTestResult;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getHitTestResult2()Lcom/dolphin/browser/core/IWebView$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/bg;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastChildTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getLastChildTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastGameModeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getLastGameModeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastVideoModeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getLastVideoModeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeftSiblingTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getLeftSiblingTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLockIconType()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getLockIconType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinWebAppModePageIndex()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getMinWebAppModePageIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPageData(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->getPageData(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getParentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProgress()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getProgress()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRightSiblingTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getRightSiblingTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSSLError()Landroid/net/http/SslError;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getSSLError()Landroid/net/http/SslError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSavedState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getSavedState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getScale()F
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getScale()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getScrollX()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getScrollX()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getScrollY()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getScrollY()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSecureStatus()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getSecureStatus()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSecurityIconType()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getSecurityIconType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getTitleBar()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitleHeight()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getTitleHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getViewHeight()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getViewHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getViewWidth()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getViewWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVisibleTitleHeight()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWebAppPreviewInfo()Lcom/dolphin/browser/core/bh;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getWebAppPreviewInfo()Lcom/dolphin/browser/core/bh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWebSettings()Lcom/dolphin/browser/core/IWebSettings;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWebView()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getWebView()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWebViewCallback()Lcom/dolphin/browser/core/IWebViewCallback;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getWebViewCallback()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->getWidth()I

    move-result v0

    return v0
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/core/ak;->a:Lcom/dolphin/browser/core/al;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/core/ak;->a:Lcom/dolphin/browser/core/al;

    iget-object v1, p0, Lcom/dolphin/browser/core/ak;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/al;->a(I)V

    .line 72
    :cond_0
    return-void
.end method

.method public bridge synthetic goBackOrForward(I)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->goBackOrForward(I)V

    return-void
.end method

.method public bridge synthetic goForward()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->goForward()V

    return-void
.end method

.method public bridge synthetic hasFeature(I)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->hasFeature(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasSSLError()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->hasSSLError()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hideTitleBar()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->hideTitleBar()V

    return-void
.end method

.method public bridge synthetic hideZoomButtonsController()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->hideZoomButtonsController()V

    return-void
.end method

.method public bridge synthetic inLoad()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->inLoad()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic invokeZoomPicker()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->invokeZoomPicker()V

    return-void
.end method

.method public bridge synthetic isAtLeftEdge()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isAtLeftEdge()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isAtRightEdge()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isAtRightEdge()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isBackOrForward()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isBackOrForward()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDeleting()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isDeleting()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDestroyed()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isGameMode()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isGameMode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInForeground()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isInForeground()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoadingReceivedError()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isLoadingReceivedError()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpeningContentUrl()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isOpeningContentUrl()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpeningInNewTab()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isOpeningInNewTab()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPaused()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isPaused()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRecycled()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isRecycled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isSelectingText()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isSelectingText()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTitleReceived()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isTitleReceived()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isVideoMode()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isVideoMode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isWebappMode()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->isWebappMode()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/core/ak;->a:Lcom/dolphin/browser/core/al;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/core/ak;->a:Lcom/dolphin/browser/core/al;

    iget-object v1, p0, Lcom/dolphin/browser/core/ak;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/dolphin/browser/core/al;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/core/ak;->a:Lcom/dolphin/browser/core/al;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/core/ak;->a:Lcom/dolphin/browser/core/al;

    iget-object v1, p0, Lcom/dolphin/browser/core/ak;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/dolphin/browser/core/al;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dolphin/browser/core/ak;->a:Lcom/dolphin/browser/core/al;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/core/ak;->a:Lcom/dolphin/browser/core/al;

    iget-object v1, p0, Lcom/dolphin/browser/core/ak;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/dolphin/browser/core/al;->a(ILjava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public bridge synthetic needShowSearchEngineTab()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->needShowSearchEngineTab()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyFindDialogDismissed2()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->notifyFindDialogDismissed2()V

    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/bg;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/bg;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->onPause()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->onResume()V

    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public bridge synthetic pageDown(Z)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic pageUp(Z)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic pause()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->pause()V

    return-void
.end method

.method public bridge synthetic pauseTimers()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->pauseTimers()V

    return-void
.end method

.method public bridge synthetic performResume()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->performResume()V

    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/core/ak;->a:Lcom/dolphin/browser/core/al;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/core/ak;->a:Lcom/dolphin/browser/core/al;

    iget-object v1, p0, Lcom/dolphin/browser/core/ak;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/dolphin/browser/core/al;->a(ILjava/lang/String;[B)V

    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic reload()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->reload()V

    return-void
.end method

.method public bridge synthetic removeJavascriptInterface(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic removePackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->removePackageName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic requestFocus()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic requestFocusNodeHref(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->requestFocusNodeHref(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic requestImageRef(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->requestImageRef(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic resetLockIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->resetLockIcon(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/bg;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic restoreState(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic restoreState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->restoreState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resumeTimers()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->resumeTimers()V

    return-void
.end method

.method public bridge synthetic revertLockIcon()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->revertLockIcon()V

    return-void
.end method

.method public bridge synthetic savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/bg;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/bg;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic saveState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->saveState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic saveWebArchive(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->saveWebArchive(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic saveWebArchive(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/bg;->saveWebArchive(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V

    return-void
.end method

.method public bridge synthetic scrollTo(II)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/bg;->scrollTo(II)V

    return-void
.end method

.method public bridge synthetic setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setBackgroundColor(I)V

    return-void
.end method

.method public bridge synthetic setBottomBar(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setBottomBar(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setCertificate(Landroid/net/http/SslCertificate;)V

    return-void
.end method

.method public bridge synthetic setCloseOnExit(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setCloseOnExit(Z)V

    return-void
.end method

.method public bridge synthetic setContextPanelListener(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setContextPanelListener(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V

    return-void
.end method

.method public bridge synthetic setData(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/bg;->setData(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic setFindDialogHeight(I)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setFindDialogHeight(I)V

    return-void
.end method

.method public bridge synthetic setFindIsUp(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setFindIsUp(Z)V

    return-void
.end method

.method public bridge synthetic setGameMode(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setGameMode(Z)V

    return-void
.end method

.method public bridge synthetic setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/core/bg;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setInitialScale(I)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setInitialScale(I)V

    return-void
.end method

.method public bridge synthetic setIsBackOrForward(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setIsBackOrForward(Z)V

    return-void
.end method

.method public bridge synthetic setIsOpeningContentUrl(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setIsOpeningContentUrl(Z)V

    return-void
.end method

.method public bridge synthetic setIsOpeningInNewTab(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setIsOpeningInNewTab(Z)V

    return-void
.end method

.method public bridge synthetic setIsTitleReceived(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setIsTitleReceived(Z)V

    return-void
.end method

.method public bridge synthetic setJsFlags(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setJsFlags(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setLastGameModeUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setLastGameModeUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setLastVideoModeUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setLastVideoModeUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic setLoadingReceivedErrorState(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setLoadingReceivedErrorState(Z)V

    return-void
.end method

.method public bridge synthetic setMapTrackballToArrowKeys(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setMapTrackballToArrowKeys(Z)V

    return-void
.end method

.method public bridge synthetic setNetworkAvailable(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setNetworkAvailable(Z)V

    return-void
.end method

.method public bridge synthetic setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/bg;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public bridge synthetic setOnScrollListener(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setOnScrollListener(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V

    return-void
.end method

.method public bridge synthetic setOverScrollMode(I)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setOverScrollMode(I)V

    return-void
.end method

.method public bridge synthetic setPageData(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/bg;->setPageData(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic setParentTab(Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setParentTab(Lcom/dolphin/browser/core/ITab;)V

    return-void
.end method

.method public bridge synthetic setPictureListener(Lcom/dolphin/browser/core/IWebView$PictureListener;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setPictureListener(Lcom/dolphin/browser/core/IWebView$PictureListener;)V

    return-void
.end method

.method public bridge synthetic setSavedState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setSavedState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic setScrollBarStyle(I)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setScrollBarStyle(I)V

    return-void
.end method

.method public bridge synthetic setScrollbarFadingEnabled(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setScrollbarFadingEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setSecurityIconType(I)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setSecurityIconType(I)V

    return-void
.end method

.method public bridge synthetic setSelectTextListener(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setSelectTextListener(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V

    return-void
.end method

.method public bridge synthetic setShowSearchEngineTabState(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setShowSearchEngineTabState(Z)V

    return-void
.end method

.method public bridge synthetic setStoppedLoadingByUser(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setStoppedLoadingByUser(Z)V

    return-void
.end method

.method public bridge synthetic setTitleBar(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setTitleBar(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setVideoMode(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setVideoMode(Z)V

    return-void
.end method

.method public bridge synthetic setWebAppPreviewInfo(Lcom/dolphin/browser/core/bh;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setWebAppPreviewInfo(Lcom/dolphin/browser/core/bh;)V

    return-void
.end method

.method public bridge synthetic setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V

    return-void
.end method

.method public bridge synthetic setWebappMode(Z)V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->setWebappMode(Z)V

    return-void
.end method

.method public bridge synthetic showTitleBar()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->showTitleBar()V

    return-void
.end method

.method public bridge synthetic startSelectText()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->startSelectText()V

    return-void
.end method

.method public bridge synthetic stopLoading()V
    .locals 0

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->stopLoading()V

    return-void
.end method

.method public bridge synthetic stoppedLoadingByUser()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->stoppedLoadingByUser()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic viewToContentX(I)I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->viewToContentX(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic viewToContentY(I)I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/bg;->viewToContentY(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic zoomIn()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic zoomOut()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/dolphin/browser/core/bg;->zoomOut()Z

    move-result v0

    return v0
.end method
