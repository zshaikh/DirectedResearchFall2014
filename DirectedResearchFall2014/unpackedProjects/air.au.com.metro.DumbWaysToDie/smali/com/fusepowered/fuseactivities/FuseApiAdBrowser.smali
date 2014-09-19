.class public Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;
.super Lcom/fusepowered/activities/FuseApiBrowser;


# static fields
.field private static final TAG:Ljava/lang/String; = "FuseApiAdBrowser "

.field private static closing:Z


# instance fields
.field final ICE_CREAM_SANDWICH:I

.field final ICE_CREAM_SANDWICH_MR1:I

.field action:Ljava/lang/String;

.field adId:I

.field callbackActivated:Z

.field layout:Landroid/widget/RelativeLayout;

.field layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field lheight:I

.field lwidth:I

.field private myClient:Lcom/fusepowered/activities/FuseApiBrowser$Callback;

.field orientation:I

.field overallscale:D

.field params:Landroid/widget/RelativeLayout$LayoutParams;

.field pheight:I

.field pwidth:I

.field webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->closing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/fusepowered/activities/FuseApiBrowser;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->callbackActivated:Z

    const/16 v0, 0xe

    iput v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->ICE_CREAM_SANDWICH:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->ICE_CREAM_SANDWICH_MR1:I

    return-void
.end method


# virtual methods
.method public handleOnExit()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->closing:Z

    const/16 v0, 0x1f4

    invoke-static {v0}, Lcom/fusepowered/util/FuseAnimationController;->getSlideOutAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser$3;-><init>(Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->callbackActivated:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->adDismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->setFuseChildActivityOnDisplay(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->callbackActivated:Z

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseAdCallback;->adWillClose()V

    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/fusepowered/activities/FuseApiBrowser;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->orientation:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->lwidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->lheight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->pwidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->pheight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v11, -0x2

    const-wide/high16 v9, 0x3ff0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/fusepowered/activities/FuseApiBrowser;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v8}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layout:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->params:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "AD_ACTION"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->action:Ljava/lang/String;

    const-string v0, "AD_ID"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->adId:I

    const-string v0, "AD_HTML"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "FuseApiAdBrowser "

    const-string v1, "Displaying ad [%d]..."

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->adId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FuseApiAdBrowser "

    const-string v1, "Ad body: %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v8, :cond_1

    sget-object v0, Lcom/fusepowered/util/FuseAdSkip;->FUSE_AD_SKIP_NO_HTML:Lcom/fusepowered/util/FuseAdSkip;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseAdSkip;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendFuseAdSkip(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Referer"

    const-string v3, "about:blank"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    const-string v3, "about:blank"

    invoke-virtual {v1, v3, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->setId(I)V

    new-instance v0, Lcom/fusepowered/activities/FuseApiBrowser$Callback;

    invoke-direct {v0, p0}, Lcom/fusepowered/activities/FuseApiBrowser$Callback;-><init>(Lcom/fusepowered/activities/FuseApiBrowser;)V

    iput-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->myClient:Lcom/fusepowered/activities/FuseApiBrowser$Callback;

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->myClient:Lcom/fusepowered/activities/FuseApiBrowser$Callback;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    const-string v1, "http://www.fuseboxx.com"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const-string v0, "o"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->orientation:I

    const-string v0, "PW"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->pwidth:I

    const-string v0, "PH"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->pheight:I

    const-string v0, "LW"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->lwidth:I

    const-string v0, "LH"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->lheight:I

    iget v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->orientation:I

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->lwidth:I

    iget v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->lheight:I

    move v12, v1

    move v1, v0

    move v0, v12

    :goto_1
    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput-wide v9, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->overallscale:D

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v0, v2, :cond_a

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v0, v2, v0

    int-to-double v0, v0

    :goto_2
    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_9

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int v2, v3, v2

    int-to-double v2, v2

    :goto_3
    cmpl-double v4, v0, v2

    if-lez v4, :cond_8

    iput-wide v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->overallscale:D

    :cond_4
    :goto_4
    iget-wide v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->overallscale:D

    div-double v0, v9, v0

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->overallscale:D

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->webView:Landroid/webkit/WebView;

    iget-wide v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->overallscale:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x1f4

    invoke-static {v1}, Lcom/fusepowered/util/FuseAnimationController;->getSlideInAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    const-string v0, "FUSEAD"

    const-string v1, "Recording a Fuse Ad being Displayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->adId:I

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->adDisplay(I)V

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    instance-of v0, v0, Lcom/fusepowered/util/FuseAdCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseAdCallback;->adDisplayed()V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->pwidth:I

    iget v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->pheight:I

    move v12, v1

    move v1, v0

    move v0, v12

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->orientation:I

    if-ne v0, v8, :cond_7

    iget v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->pwidth:I

    iget v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->pheight:I

    move v12, v1

    move v1, v0

    move v0, v12

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->lwidth:I

    iget v1, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->lheight:I

    move v12, v1

    move v1, v0

    move v0, v12

    goto/16 :goto_1

    :cond_8
    cmpl-double v0, v2, v0

    if-lez v0, :cond_4

    iput-wide v2, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->overallscale:D

    goto :goto_4

    :cond_9
    move-wide v2, v9

    goto :goto_3

    :cond_a
    move-wide v0, v9

    goto/16 :goto_2
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/fusepowered/activities/FuseApiBrowser;->onPause()V

    sget-boolean v0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->closing:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->suspendSession()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->closing:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/fusepowered/activities/FuseApiBrowser;->onResume()V

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->initializeFuseAPI(Landroid/app/Activity;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->resumeSession(Lcom/fusepowered/util/FuseCallback;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/fusepowered/activities/FuseApiBrowser;->onStop()V

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    instance-of v0, v0, Lcom/fusepowered/util/FuseAdCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->callbackActivated:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->adDismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->callbackActivated:Z

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseAdCallback;->adWillClose()V

    :cond_0
    return-void
.end method

.method protected showAdButtons(I)V
    .locals 6

    const/4 v5, -0x2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "Yes"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser$1;-><init>(Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "No Thanks"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser$2;

    invoke-direct {v2, p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser$2;-><init>(Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/16 v1, 0x1f4

    invoke-static {v1}, Lcom/fusepowered/util/FuseAnimationController;->getTranslateAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-static {v0}, Lcom/fusepowered/util/FuseAnimationController;->getAdLayoutAnimationController(Landroid/view/animation/AnimationSet;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object v0, p0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->startLayoutAnimation()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
