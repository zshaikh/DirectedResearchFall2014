.class public Lcom/dolphin/browser/core/bl;
.super Ljava/lang/Object;
.source "WebViewWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebView;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field private final b:Lcom/dolphin/browser/core/am;

.field private final c:Landroid/view/View;

.field private final d:Ljava/lang/String;

.field private e:Lcom/dolphin/browser/core/an;

.field private f:Landroid/view/View;

.field private final g:Landroid/view/ViewGroup$LayoutParams;

.field private final h:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/dolphin/browser/core/an;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    .line 69
    iput-object p2, p0, Lcom/dolphin/browser/core/bl;->d:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/dolphin/browser/core/bl;->e:Lcom/dolphin/browser/core/an;

    .line 72
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/core/bl;->a:Landroid/widget/LinearLayout;

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 75
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    const/high16 v1, 0x3f800000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 77
    iput-object v0, p0, Lcom/dolphin/browser/core/bl;->g:Landroid/view/ViewGroup$LayoutParams;

    .line 79
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/dolphin/browser/core/bl;->h:Landroid/view/ViewGroup$LayoutParams;

    .line 83
    new-instance v0, Lcom/dolphin/browser/core/am;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/core/am;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/core/bl;->b:Lcom/dolphin/browser/core/am;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/core/bl;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    return-object v0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 657
    if-eqz p1, :cond_2

    .line 658
    iget-object v1, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    .line 659
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/core/bl;->b:Lcom/dolphin/browser/core/am;

    if-eq v0, v2, :cond_2

    .line 660
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->b:Lcom/dolphin/browser/core/am;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/am;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->b:Lcom/dolphin/browser/core/am;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/am;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/dolphin/browser/core/bl;->b:Lcom/dolphin/browser/core/am;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->b:Lcom/dolphin/browser/core/am;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/am;->a(Landroid/view/View;)V

    .line 669
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dolphin/browser/core/bl;->b:Lcom/dolphin/browser/core/am;

    iget-object v2, p0, Lcom/dolphin/browser/core/bl;->g:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->b:Lcom/dolphin/browser/core/am;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/am;->a(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method public addPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public addPackageNames(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public cancelSelectText()V
    .locals 0

    .prologue
    .line 580
    return-void
.end method

.method public captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 721
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 722
    const/4 v0, 0x0

    .line 732
    :goto_0
    return-object v0

    .line 723
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 724
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 725
    int-to-float v2, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 726
    iget v2, p3, Landroid/graphics/Rect;->left:I

    rsub-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    iget v3, p3, Landroid/graphics/Rect;->top:I

    rsub-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 727
    new-instance v2, Lcom/dolphin/browser/core/bn;

    invoke-direct {v2, p0, v1}, Lcom/dolphin/browser/core/bn;-><init>(Lcom/dolphin/browser/core/bl;Landroid/graphics/Canvas;)V

    invoke-static {v2}, Lcom/dolphin/browser/util/df;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 4

    .prologue
    .line 259
    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    .line 260
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/core/bl;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/core/bl;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    .line 263
    iget-object v2, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 264
    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-object v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    const-string v2, "WebViewWrapper"

    const-string v3, "can\'t get the picture of view"

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public clearFormData()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public clearHistory()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public clearMatches()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public clearSslPreferences()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public clearView()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public contentToViewX(I)I
    .locals 0

    .prologue
    .line 614
    return p1
.end method

.method public contentToViewY(I)I
    .locals 0

    .prologue
    .line 619
    return p1
.end method

.method public copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public doCopySelection()Z
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public doSelectTextDone()V
    .locals 0

    .prologue
    .line 678
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 688
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 689
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public findAll(Ljava/lang/String;Lcom/dolphin/browser/core/IWebView$FindResultListener;)V
    .locals 0

    .prologue
    .line 712
    return-void
.end method

.method public findNext(Z)V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public flingScroll(II)V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method public freeMemory()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/dolphin/browser/core/bl;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/dolphin/browser/core/bl;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHitTestResult2()Lcom/dolphin/browser/core/IWebView$HitTestResult;
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 320
    const/16 v0, 0x64

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 274
    const/high16 v0, 0x3f800000

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->f:Landroid/view/View;

    return-object v0
.end method

.method public getTitleHeight()I
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lcom/dolphin/browser/core/bl;->a(Z)V

    .line 648
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/dolphin/browser/core/bl;->getHeight()I

    move-result v0

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/dolphin/browser/core/bl;->getWidth()I

    move-result v0

    return v0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/dolphin/browser/core/bl;->getTitleHeight()I

    move-result v0

    return v0
.end method

.method public getWebSettings()Lcom/dolphin/browser/core/IWebSettings;
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getWebView()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/dolphin/browser/core/bl;->a()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewCallback()Lcom/dolphin/browser/core/IWebViewCallback;
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public goBack()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public goForward()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public hasFeature(I)Z
    .locals 1

    .prologue
    .line 502
    and-int/lit8 v0, p1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideTitleBar()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public hideZoomButtonsController()V
    .locals 0

    .prologue
    .line 547
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public isAtLeftEdge()Z
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x1

    return v0
.end method

.method public isAtRightEdge()Z
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x1

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectingText()Z
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public notifyFindDialogDismissed2()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 683
    return-void
.end method

.method public pageDown(Z)Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public pauseTimers()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public reload()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public removePackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method public requestFocus()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public restoreState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public resumeTimers()V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 147
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 148
    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/core/bl;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/dolphin/browser/core/bm;

    invoke-direct {v3, p0, v1, v0, p2}, Lcom/dolphin/browser/core/bm;-><init>(Lcom/dolphin/browser/core/bl;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 178
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public saveState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 699
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V
    .locals 0
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

    .prologue
    .line 703
    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 695
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 498
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public setContextPanelListener(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V
    .locals 0

    .prologue
    .line 629
    return-void
.end method

.method public setFindDialogHeight(I)V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public setFindIsUp(Z)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public setInitialScale(I)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method public setOnScrollListener(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 717
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public setPictureListener(Lcom/dolphin/browser/core/IWebView$PictureListener;)V
    .locals 0

    .prologue
    .line 415
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 94
    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    .line 99
    return-void
.end method

.method public setSelectTextListener(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V
    .locals 0

    .prologue
    .line 633
    return-void
.end method

.method public setTitleBar(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/dolphin/browser/core/bl;->e:Lcom/dolphin/browser/core/an;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/an;->i()Lcom/dolphin/browser/core/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/k;->b(Landroid/view/View;)V

    .line 562
    return-void
.end method

.method public setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public showTitleBar()V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method public startSelectText()V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public stopLoading()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public viewToContentX(I)I
    .locals 0

    .prologue
    .line 604
    return p1
.end method

.method public viewToContentY(I)I
    .locals 0

    .prologue
    .line 609
    return p1
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method
