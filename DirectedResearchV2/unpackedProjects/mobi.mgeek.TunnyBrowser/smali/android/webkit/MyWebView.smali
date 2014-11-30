.class public Landroid/webkit/MyWebView;
.super Landroid/webkit/WebView;
.source "MyWebView.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static mBottomField:Ljava/lang/reflect/Field;

.field private static mContextField:Ljava/lang/reflect/Field;

.field private static mLeftField:Ljava/lang/reflect/Field;

.field private static mRightField:Ljava/lang/reflect/Field;

.field private static mScrollXField:Ljava/lang/reflect/Field;

.field private static mScrollYField:Ljava/lang/reflect/Field;

.field private static mTopField:Ljava/lang/reflect/Field;

.field private static sWebView:Landroid/webkit/MyWebView;


# instance fields
.field private mWebView:Lcom/dolphin/browser/core/IWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 83
    const-string v1, "mLeft"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/webkit/MyWebView;->mLeftField:Ljava/lang/reflect/Field;

    .line 84
    sget-object v1, Landroid/webkit/MyWebView;->mLeftField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 85
    const-string v1, "mRight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/webkit/MyWebView;->mRightField:Ljava/lang/reflect/Field;

    .line 86
    sget-object v1, Landroid/webkit/MyWebView;->mRightField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    const-string v1, "mTop"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/webkit/MyWebView;->mTopField:Ljava/lang/reflect/Field;

    .line 88
    sget-object v1, Landroid/webkit/MyWebView;->mTopField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 89
    const-string v1, "mBottom"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/webkit/MyWebView;->mBottomField:Ljava/lang/reflect/Field;

    .line 90
    sget-object v1, Landroid/webkit/MyWebView;->mBottomField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    const-string v1, "mScrollX"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/webkit/MyWebView;->mScrollXField:Ljava/lang/reflect/Field;

    .line 92
    sget-object v1, Landroid/webkit/MyWebView;->mScrollXField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 93
    const-string v1, "mScrollY"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/webkit/MyWebView;->mScrollYField:Ljava/lang/reflect/Field;

    .line 94
    sget-object v1, Landroid/webkit/MyWebView;->mScrollYField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 95
    const-string v1, "mContext"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/webkit/MyWebView;->mContextField:Ljava/lang/reflect/Field;

    .line 96
    sget-object v0, Landroid/webkit/MyWebView;->mContextField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method private constructor <init>(Lcom/dolphin/browser/core/IWebView;)V
    .locals 1

    .prologue
    .line 25
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Landroid/webkit/MyWebView;->setWebView(Lcom/dolphin/browser/core/IWebView;)V

    .line 27
    return-void
.end method

.method public static get(Lcom/dolphin/browser/core/IWebView;)Landroid/webkit/MyWebView;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Landroid/webkit/MyWebView;->sWebView:Landroid/webkit/MyWebView;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/webkit/MyWebView;

    invoke-direct {v0, p0}, Landroid/webkit/MyWebView;-><init>(Lcom/dolphin/browser/core/IWebView;)V

    sput-object v0, Landroid/webkit/MyWebView;->sWebView:Landroid/webkit/MyWebView;

    .line 33
    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebSettings;->getBuiltInZoomControls()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebSettings;->setBuiltInZoomControls(Z)V

    .line 39
    :cond_0
    sget-object v0, Landroid/webkit/MyWebView;->sWebView:Landroid/webkit/MyWebView;

    invoke-direct {v0, p0}, Landroid/webkit/MyWebView;->setWebView(Lcom/dolphin/browser/core/IWebView;)V

    .line 40
    sget-object v0, Landroid/webkit/MyWebView;->sWebView:Landroid/webkit/MyWebView;

    return-object v0
.end method

.method private setWebView(Lcom/dolphin/browser/core/IWebView;)V
    .locals 4

    .prologue
    .line 53
    iput-object p1, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    .line 56
    :try_start_0
    instance-of v1, p1, Lcom/dolphin/browser/core/ITab;

    if-eqz v1, :cond_0

    .line 57
    move-object v0, p1

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    move-object v1, v0

    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    .line 59
    :cond_0
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getWebView()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 60
    sget-object v2, Landroid/webkit/MyWebView;->mLeftField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    sget-object v2, Landroid/webkit/MyWebView;->mRightField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    sget-object v2, Landroid/webkit/MyWebView;->mTopField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    sget-object v2, Landroid/webkit/MyWebView;->mBottomField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    sget-object v2, Landroid/webkit/MyWebView;->mScrollXField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    sget-object v2, Landroid/webkit/MyWebView;->mScrollYField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    sget-object v2, Landroid/webkit/MyWebView;->mContextField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public cancelSelectText()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->cancelSelectText()V

    .line 195
    return-void
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebView()Ljava/lang/Object;

    move-result-object v0

    .line 317
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 318
    if-eqz v0, :cond_0

    .line 319
    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 200
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebView()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 278
    :cond_0
    const/4 v0, 0x0

    .line 280
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebView()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 271
    :goto_0
    return v0

    .line 270
    :cond_1
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 271
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getScale()F

    move-result v0

    return v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebView()Ljava/lang/Object;

    move-result-object v0

    .line 339
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 340
    if-eqz v0, :cond_0

    .line 341
    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewWidth()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getViewWidth()I

    move-result v0

    return v0
.end method

.method public getVisibleTitleHeight()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebView()Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->goBack()V

    .line 231
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->goBackOrForward(I)V

    .line 251
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->goForward()V

    .line 241
    return-void
.end method

.method public hideTitleBar()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->hideTitleBar()V

    .line 180
    return-void
.end method

.method public hideZoomButtonsController()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->hideZoomButtonsController()V

    .line 157
    return-void
.end method

.method public isAtLeftEdge()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->isAtLeftEdge()Z

    move-result v0

    return v0
.end method

.method public isAtRightEdge()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->isAtRightEdge()Z

    move-result v0

    return v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 210
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/core/IWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->reload()V

    .line 221
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->stopLoading()V

    .line 216
    return-void
.end method

.method public wrapHitTestResult(Lcom/dolphin/browser/core/IWebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;
    .locals 1

    .prologue
    .line 386
    new-instance v0, Landroid/webkit/MyWebView$HitTestResultWrapper;

    invoke-direct {v0, p0, p1}, Landroid/webkit/MyWebView$HitTestResultWrapper;-><init>(Landroid/webkit/MyWebView;Lcom/dolphin/browser/core/IWebView$HitTestResult;)V

    return-object v0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Landroid/webkit/MyWebView;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->zoomOut()Z

    move-result v0

    return v0
.end method
