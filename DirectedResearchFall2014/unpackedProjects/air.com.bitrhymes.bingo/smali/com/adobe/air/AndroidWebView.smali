.class public Lcom/adobe/air/AndroidWebView;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidWebView$4;,
        Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;,
        Lcom/adobe/air/AndroidWebView$WebViewCustomView;
    }
.end annotation


# static fields
.field private static final ERROR_OTHER:I = 0x0

.field private static final ERROR_PROTOCOL_UNSUPPORTED:I = 0xc9d

.field private static final FOCUS_DOWN:I = 0x3

.field private static final FOCUS_NONE:I = 0x1

.field private static final FOCUS_UP:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidWebView"


# instance fields
.field private mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

.field private mBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCustomViewHolder:Lcom/adobe/air/AndroidWebView$WebViewCustomView;

.field private mGlobalBounds:Landroid/graphics/Rect;

.field private mInternalReference:J

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mUrl:Ljava/lang/String;

.field private mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    iput-object v0, p0, Lcom/adobe/air/AndroidWebView;->mBounds:Landroid/graphics/Rect;

    .line 1070
    iput-object v0, p0, Lcom/adobe/air/AndroidWebView;->mGlobalBounds:Landroid/graphics/Rect;

    .line 1075
    iput-object v0, p0, Lcom/adobe/air/AndroidWebView;->mUrl:Ljava/lang/String;

    .line 379
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    .line 380
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView;->mContext:Landroid/content/Context;

    .line 381
    new-instance v0, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    iget-object v1, p0, Lcom/adobe/air/AndroidWebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;-><init>(Lcom/adobe/air/AndroidWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    .line 383
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 384
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 385
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 386
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 387
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 389
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->setScrollbarFadingEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->setScrollBarStyle(I)V

    .line 397
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    new-instance v1, Lcom/adobe/air/AndroidWebView$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidWebView$1;-><init>(Lcom/adobe/air/AndroidWebView;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 457
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    new-instance v1, Lcom/adobe/air/AndroidWebView$2;

    invoke-direct {v1, p0, p0}, Lcom/adobe/air/AndroidWebView$2;-><init>(Lcom/adobe/air/AndroidWebView;Lcom/adobe/air/AndroidWebView;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 568
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidWebView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/air/AndroidWebView;)J
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AIRWindowSurfaceView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/air/AndroidWebView;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidWebView;->dispatchFocusIn(JI)V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/air/AndroidWebView;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidWebView;->dispatchFocusOut(JI)V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebView$WebViewCustomView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mCustomViewHolder:Lcom/adobe/air/AndroidWebView$WebViewCustomView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/adobe/air/AndroidWebView;Lcom/adobe/air/AndroidWebView$WebViewCustomView;)Lcom/adobe/air/AndroidWebView$WebViewCustomView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView;->mCustomViewHolder:Lcom/adobe/air/AndroidWebView$WebViewCustomView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/adobe/air/AndroidWebView;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mGlobalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method private decodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 892
    .line 894
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :goto_0
    return-object v0

    .line 895
    :catch_0
    move-exception v0

    move-object v0, p1

    goto :goto_0
.end method

.method private native dispatchFocusIn(JI)V
.end method

.method private native dispatchFocusOut(JI)V
.end method

.method private native dispatchLoadComplete(J)V
.end method

.method private native dispatchLoadError(JLjava/lang/String;I)V
.end method

.method private native dispatchLocationChange(J)Z
.end method

.method private native dispatchLocationChanging(JLjava/lang/String;)Z
.end method

.method private refreshGlobalBounds()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    if-nez v0, :cond_0

    .line 815
    :goto_0
    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    new-instance v1, Lcom/adobe/air/AndroidWebView$3;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidWebView$3;-><init>(Lcom/adobe/air/AndroidWebView;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public addedToStage(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 688
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebView;->removedFromStage()V

    .line 691
    :cond_0
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 693
    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 694
    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 695
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView;->mLayout:Landroid/widget/RelativeLayout;

    .line 696
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    return-void
.end method

.method public adjustViewBounds(DDDD)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 821
    new-instance v0, Landroid/graphics/Rect;

    double-to-int v1, p1

    double-to-int v2, p3

    add-double v3, p1, p5

    double-to-int v3, v3

    add-double v4, p3, p7

    double-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView;->mBounds:Landroid/graphics/Rect;

    .line 822
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView;->mGlobalBounds:Landroid/graphics/Rect;

    .line 823
    invoke-direct {p0}, Lcom/adobe/air/AndroidWebView;->refreshGlobalBounds()V

    .line 824
    return-void
.end method

.method public assignFocus(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 963
    packed-switch p1, :pswitch_data_0

    .line 980
    :goto_0
    return-void

    .line 967
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->requestFocus()Z

    goto :goto_0

    .line 971
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->pageUp(Z)Z

    .line 972
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->requestFocus(I)Z

    goto :goto_0

    .line 976
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->pageDown(Z)Z

    .line 977
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->requestFocus(I)Z

    goto :goto_0

    .line 963
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public captureSnapshot(II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 997
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return-object v0

    .line 1000
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 1006
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1007
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1008
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1011
    iget-object v2, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v3}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1014
    iget-object v2, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->isHorizontalScrollBarEnabled()Z

    move-result v2

    .line 1015
    iget-object v3, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v3}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->isVerticalScrollBarEnabled()Z

    move-result v3

    .line 1018
    iget-object v4, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v4, v5}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 1019
    iget-object v4, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v4, v5}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->setVerticalScrollBarEnabled(Z)V

    .line 1024
    :try_start_0
    iget-object v4, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v4, v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :goto_1
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v1, v2}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 1037
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v1, v3}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 1025
    :catch_0
    move-exception v4

    .line 1027
    iget-object v4, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v4}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->capturePicture()Landroid/graphics/Picture;

    move-result-object v4

    .line 1029
    iget-object v5, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v5}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->getScale()F

    move-result v5

    .line 1030
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1032
    invoke-virtual {v4, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->clearFocus()V

    .line 985
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    .line 986
    return-void
.end method

.method public destroyInternals()V
    .locals 2

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebView;->removedFromStage()V

    .line 643
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    .line 644
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->destroy()V

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    .line 646
    return-void
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mUrl:Ljava/lang/String;

    .line 938
    if-nez v0, :cond_0

    .line 939
    const-string v0, "about:blank"

    .line 947
    :goto_0
    return-object v0

    .line 941
    :cond_0
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidWebView;->decodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPageTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 953
    if-nez v0, :cond_0

    .line 954
    const-string v0, ""

    .line 958
    :cond_0
    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->goBack()V

    .line 664
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->goForward()V

    .line 670
    return-void
.end method

.method public isInTextEditingMode()Z
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->isInTextEditingMode()Z

    move-result v0

    return v0
.end method

.method public loadString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 831
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 839
    array-length v1, v0

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/16 v2, 0xef

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    const/16 v2, 0xbb

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    const/16 v2, 0xbf

    if-ne v1, v2, :cond_1

    move v1, v4

    .line 844
    :goto_0
    if-nez v1, :cond_0

    .line 847
    array-length v1, v0

    add-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    .line 848
    const/4 v2, 0x0

    const/4 v3, 0x3

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    const/4 v0, 0x0

    const/16 v2, -0x11

    aput-byte v2, v1, v0

    .line 850
    const/4 v0, 0x1

    const/16 v2, -0x45

    aput-byte v2, v1, v0

    .line 851
    const/4 v0, 0x2

    const/16 v2, -0x41

    aput-byte v2, v1, v0

    move-object v0, v1

    .line 856
    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    .line 859
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    const-string v2, "text/html"

    const-string v3, "base64"

    invoke-virtual {v1, v0, v2, v3}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 839
    goto :goto_0

    .line 861
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public loadURL(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 871
    if-nez p1, :cond_0

    .line 875
    :goto_0
    return-void

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 5
    .parameter

    .prologue
    const-class v0, Landroid/webkit/WebView;

    .line 581
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "isPaused"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 582
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "onResume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 583
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "onPause"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 585
    iget-object v3, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 587
    sget-object v3, Lcom/adobe/air/AndroidWebView$4;->$SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v3, :pswitch_data_0

    .line 611
    :cond_0
    :goto_0
    sget-object v0, Lcom/adobe/air/AndroidWebView$4;->$SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 626
    :cond_1
    :goto_1
    return-void

    .line 589
    :pswitch_0
    if-eqz v0, :cond_0

    .line 591
    :try_start_1
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->resumeTimers()V

    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    goto :goto_0

    .line 597
    :pswitch_1
    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->pauseTimers()V

    .line 601
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 614
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mCustomViewHolder:Lcom/adobe/air/AndroidWebView$WebViewCustomView;

    if-nez v0, :cond_1

    .line 615
    new-instance v0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidWebView$WebViewCustomView;-><init>(Lcom/adobe/air/AndroidWebView;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView;->mCustomViewHolder:Lcom/adobe/air/AndroidWebView$WebViewCustomView;

    goto :goto_1

    .line 618
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mCustomViewHolder:Lcom/adobe/air/AndroidWebView$WebViewCustomView;

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mCustomViewHolder:Lcom/adobe/air/AndroidWebView$WebViewCustomView;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->onHideCustomView()V

    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView;->mCustomViewHolder:Lcom/adobe/air/AndroidWebView$WebViewCustomView;

    goto :goto_1

    .line 587
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 611
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 631
    return-void
.end method

.method public onLoadComplete(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 913
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 922
    :goto_0
    return-void

    .line 919
    :cond_0
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView;->mUrl:Ljava/lang/String;

    .line 921
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/AndroidWebView;->dispatchLoadComplete(J)V

    goto :goto_0
.end method

.method public onLoadError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 926
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 933
    :goto_0
    return-void

    .line 930
    :cond_0
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView;->mUrl:Ljava/lang/String;

    .line 932
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/adobe/air/AndroidWebView;->dispatchLoadError(JLjava/lang/String;I)V

    goto :goto_0
.end method

.method public onLocationChange(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 879
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 881
    const/4 v0, 0x1

    .line 887
    :goto_0
    return v0

    .line 885
    :cond_0
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView;->mUrl:Ljava/lang/String;

    .line 887
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/AndroidWebView;->dispatchLocationChange(J)Z

    move-result v0

    goto :goto_0
.end method

.method public onLocationChanging(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 901
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 903
    const/4 v0, 0x1

    .line 908
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidWebView;->decodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/air/AndroidWebView;->dispatchLocationChanging(JLjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->reload()V

    .line 658
    return-void
.end method

.method public removedFromStage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 702
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 705
    iput-object v2, p0, Lcom/adobe/air/AndroidWebView;->mLayout:Landroid/widget/RelativeLayout;

    .line 708
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->didRemoveOverlay()V

    .line 710
    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 712
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->updateFocusedStageWebView(Lcom/adobe/air/AndroidWebView;Z)V

    .line 715
    :cond_0
    iput-object v2, p0, Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 716
    return-void
.end method

.method public resetGlobalBounds()V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView;->mGlobalBounds:Landroid/graphics/Rect;

    .line 789
    invoke-direct {p0}, Lcom/adobe/air/AndroidWebView;->refreshGlobalBounds()V

    .line 790
    return-void
.end method

.method public setInternalReference(J)V
    .locals 0
    .parameter

    .prologue
    .line 635
    iput-wide p1, p0, Lcom/adobe/air/AndroidWebView;->mInternalReference:J

    .line 636
    return-void
.end method

.method public setStageFocus(I)V
    .locals 1
    .parameter

    .prologue
    .line 991
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->clearFocus()V

    .line 992
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus(I)Z

    .line 993
    return-void
.end method

.method public setVisibility(Z)V
    .locals 2
    .parameter

    .prologue
    .line 720
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 722
    :goto_0
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 725
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->setVisibility(I)V

    .line 727
    :cond_0
    return-void

    .line 720
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->stopLoading()V

    .line 652
    return-void
.end method

.method public updateViewBoundsWithKeyboard(I)J
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 731
    .line 732
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView;->mGlobalBounds:Landroid/graphics/Rect;

    .line 734
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/adobe/air/AndroidWebView;->isInTextEditingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 737
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/air/AndroidWebView;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v2}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 738
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 743
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 744
    iget-object v2, p0, Lcom/adobe/air/AndroidWebView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 745
    if-ne v1, v2, :cond_0

    move-wide v0, v4

    .line 783
    :goto_0
    return-wide v0

    .line 753
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 754
    if-gtz v2, :cond_1

    move-wide v0, v4

    .line 758
    goto :goto_0

    .line 761
    :cond_1
    if-gt v2, v1, :cond_2

    move v0, v2

    .line 781
    :goto_1
    invoke-direct {p0}, Lcom/adobe/air/AndroidWebView;->refreshGlobalBounds()V

    .line 783
    int-to-long v0, v0

    goto :goto_0

    .line 774
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adobe/air/AndroidWebView;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/adobe/air/AndroidWebView;->mGlobalBounds:Landroid/graphics/Rect;

    .line 775
    iget-object v2, p0, Lcom/adobe/air/AndroidWebView;->mGlobalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_1
.end method
