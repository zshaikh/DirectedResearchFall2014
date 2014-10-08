.class Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;
.super Lcom/fusepowered/m1/android/VideoPlayerActivity;
.source "CachedVideoPlayerActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;,
        Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$CachedVideoWebViewClientListener;
    }
.end annotation


# static fields
.field private static final STATIC_HUD_ID:I = 0x192

.field private static final STATIC_HUD_SECONDS_ID:I = 0x191


# instance fields
.field private buttonsLayout:Landroid/widget/RelativeLayout;

.field private hasCountdownHud:Z

.field hasLoadedCompletionUrl:Z

.field hasWebOverlay:Z

.field private hudSeconds:Landroid/widget/TextView;

.field private hudStaticText:Landroid/widget/TextView;

.field private lastVideoPosition:I

.field private logTimeAndEventhandler:Landroid/os/Handler;

.field private mWebView:Lcom/fusepowered/m1/android/MMWebView;

.field private videoAd:Lcom/fusepowered/m1/android/VideoAd;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fusepowered/m1/android/VideoPlayerActivity;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    .line 766
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->onPageFinished(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;)Lcom/fusepowered/m1/android/MMWebView;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    return-object v0
.end method

.method private calculateHudSecondsText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 679
    iget v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    if-eqz v0, :cond_0

    .line 680
    iget v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 685
    :goto_0
    return-object v0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-wide v0, v0, Lcom/fusepowered/m1/android/VideoAd;->duration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 685
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private dismissAfter(J)V
    .locals 2
    .param p1, "delayMillis"    # J

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    new-instance v1, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$1;-><init>(Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    return-void
.end method

.method private fadeButton(Lcom/fusepowered/m1/android/VideoImage;)V
    .locals 5
    .param p1, "image"    # Lcom/fusepowered/m1/android/VideoImage;

    .prologue
    const/4 v4, 0x1

    .line 503
    move-object v1, p1

    .line 504
    .local v1, "videoImage":Lcom/fusepowered/m1/android/VideoImage;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v2, v1, Lcom/fusepowered/m1/android/VideoImage;->fromAlpha:F

    iget v3, v1, Lcom/fusepowered/m1/android/VideoImage;->toAlpha:F

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 505
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    iget-wide v2, v1, Lcom/fusepowered/m1/android/VideoImage;->fadeDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 506
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 507
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 508
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 509
    iget-object v2, v1, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 510
    return-void
.end method

.method private fadeButtons()V
    .locals 7

    .prologue
    .line 212
    iget-object v3, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v3, v3, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v3, v3, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 216
    iget-object v3, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v3, v3, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m1/android/VideoImage;

    .line 217
    .local v2, "videoImage":Lcom/fusepowered/m1/android/VideoImage;
    iget-boolean v3, v2, Lcom/fusepowered/m1/android/VideoImage;->isLeaveBehind:Z

    if-nez v3, :cond_0

    .line 218
    iget-object v3, v2, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v4, v2, Lcom/fusepowered/m1/android/VideoImage;->fromAlpha:F

    invoke-virtual {p0, v3, v4}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 219
    :cond_0
    iget-object v3, v2, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 220
    iget-object v3, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v4, v2, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v5, v2, Lcom/fusepowered/m1/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v3, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v3, v3, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 222
    iget-object v4, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v3, v3, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/m1/android/VideoImage;

    iget-object v3, v3, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    :cond_2
    const-string v3, "Button: %d alpha: %f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v2, Lcom/fusepowered/m1/android/VideoImage;->fromAlpha:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "videoImage":Lcom/fusepowered/m1/android/VideoImage;
    :cond_3
    return-void
.end method

.method private hideHud()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 690
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    :cond_1
    return-void
.end method

.method private initHudSeconds(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 665
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    .line 666
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->calculateHudSecondsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 668
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 669
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 671
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 672
    .local v0, "hudSecLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 673
    const/4 v1, 0x0

    const/16 v2, 0x192

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 674
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    return-void
.end method

.method private initHudStaticText(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 650
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    .line 651
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const-string v2, " seconds remaining ..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 653
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 654
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const/16 v2, 0x192

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 655
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 657
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 658
    .local v0, "hudLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 659
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 660
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    return-void
.end method

.method private initWebOverlay()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 392
    new-instance v2, Lcom/fusepowered/m1/android/MMWebView;

    iget-object v3, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    iget-object v4, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    iget-wide v4, v4, Lcom/fusepowered/m1/android/MMActivity;->creatorAdImplInternalId:J

    invoke-direct {v2, v3, v4, v5}, Lcom/fusepowered/m1/android/MMWebView;-><init>(Landroid/content/Context;J)V

    iput-object v2, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    .line 393
    iget-object v2, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    const/16 v3, 0x19d

    invoke-virtual {v2, v3}, Lcom/fusepowered/m1/android/MMWebView;->setId(I)V

    .line 395
    new-instance v0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$CachedVideoWebViewClientListener;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$CachedVideoWebViewClientListener;-><init>(Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;)V

    .line 396
    .local v0, "basicListener":Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;
    iget-object v2, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    new-instance v3, Lcom/fusepowered/m1/android/InterstitialWebViewClient;

    iget-object v4, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->redirectListenerImpl:Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;

    invoke-direct {v3, v0, v4}, Lcom/fusepowered/m1/android/InterstitialWebViewClient;-><init>(Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;)V

    invoke-virtual {v2, v3}, Lcom/fusepowered/m1/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 397
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 398
    .local v1, "webLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 399
    iget-object v2, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2, v1}, Lcom/fusepowered/m1/android/MMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v2, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fusepowered/m1/android/MMWebView;->setBackgroundColor(I)V

    .line 402
    iget-object v2, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v2, v2, Lcom/fusepowered/m1/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->loadUrlForMraidInjection(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method private onPageFinished(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v0, v0, Lcom/fusepowered/m1/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v0, v0, Lcom/fusepowered/m1/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->playVideo(I)V

    .line 388
    :cond_0
    return-void
.end method

.method private showHud()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 642
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-wide v1, v1, Lcom/fusepowered/m1/android/VideoAd;->duration:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 646
    return-void
.end method


# virtual methods
.method protected canFadeButtons()Z
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/VideoAd;->stayInPlayer:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->canFadeButtons()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 717
    iget-object v4, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v4, :cond_4

    .line 719
    iget-object v4, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 720
    iget-object v4, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 722
    :cond_0
    iget-boolean v4, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v4, :cond_4

    .line 724
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v4, v4, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 726
    iget-object v4, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v4, v4, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/m1/android/VideoImage;

    .line 727
    .local v3, "videoImage":Lcom/fusepowered/m1/android/VideoImage;
    iget-object v4, v3, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v5, v3, Lcom/fusepowered/m1/android/VideoImage;->fromAlpha:F

    invoke-virtual {p0, v4, v5}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 728
    iget-wide v4, v3, Lcom/fusepowered/m1/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 731
    iget-object v4, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-static {v4, v8, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 732
    .local v2, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v5, v3, Lcom/fusepowered/m1/android/VideoImage;->inactivityTimeout:J

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 724
    .end local v2    # "message":Landroid/os/Message;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 737
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 739
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->canFadeButtons()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 741
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v4, v3, Lcom/fusepowered/m1/android/VideoImage;->fromAlpha:F

    iget v5, v3, Lcom/fusepowered/m1/android/VideoImage;->toAlpha:F

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 742
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    iget-wide v4, v3, Lcom/fusepowered/m1/android/VideoImage;->fadeDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 743
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 744
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 745
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 746
    iget-object v4, v3, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 749
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 751
    iget-object v4, v3, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v5, v3, Lcom/fusepowered/m1/android/VideoImage;->fromAlpha:F

    invoke-virtual {p0, v4, v5}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    goto :goto_1

    .line 757
    .end local v1    # "i":I
    .end local v3    # "videoImage":Lcom/fusepowered/m1/android/VideoImage;
    :cond_4
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4
.end method

.method protected enableButtons()V
    .locals 4

    .prologue
    .line 699
    invoke-super {p0}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->enableButtons()V

    .line 700
    iget-boolean v2, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v2, :cond_0

    .line 702
    iget-object v2, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v2, v2, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 710
    :cond_0
    return-void

    .line 704
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v2, v2, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/VideoImage;

    .line 706
    .local v1, "image":Lcom/fusepowered/m1/android/VideoImage;
    iget-object v2, v1, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 707
    iget-object v2, v1, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected errorPlayVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v0, v0, Lcom/fusepowered/m1/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/m1/android/HttpGetRequest;->log([Ljava/lang/String;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.cachedVideo.setError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->errorPlayVideo(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 415
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 498
    .end local p1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    const/4 v8, 0x1

    return v8

    .line 418
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_0
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->canFadeButtons()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 420
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1    # "msg":Landroid/os/Message;
    check-cast p1, Lcom/fusepowered/m1/android/VideoImage;

    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->fadeButton(Lcom/fusepowered/m1/android/VideoImage;)V

    goto :goto_0

    .line 424
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/fusepowered/m1/android/VideoImage;

    .line 427
    .local v3, "image":Lcom/fusepowered/m1/android/VideoImage;
    :try_start_0
    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v9, v3, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 428
    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v9, v3, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v10, v3, Lcom/fusepowered/m1/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->canFadeButtons()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 437
    invoke-direct {p0, v3}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->fadeButton(Lcom/fusepowered/m1/android/VideoImage;)V

    .line 438
    const-string v8, "Beginning animation to visibility. Fade duration: %d Button: %d Time: %d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-wide v11, v3, Lcom/fusepowered/m1/android/VideoImage;->fadeDuration:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v3, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 430
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 432
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 444
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v3    # "image":Lcom/fusepowered/m1/android/VideoImage;
    :pswitch_2
    :try_start_1
    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v8}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 446
    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v8}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 448
    .local v0, "currentPosition":I
    iget v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    if-le v0, v8, :cond_5

    .line 450
    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v8, :cond_4

    .line 452
    iget v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    if-nez v8, :cond_2

    .line 453
    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    invoke-virtual {v8}, Lcom/fusepowered/m1/android/VideoAd;->logBeginEvent()V

    .line 454
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v8, v8, Lcom/fusepowered/m1/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 456
    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v8, v8, Lcom/fusepowered/m1/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fusepowered/m1/android/VideoLogEvent;

    .line 457
    .local v7, "videoEvent":Lcom/fusepowered/m1/android/VideoLogEvent;
    if-eqz v7, :cond_3

    .line 459
    iget-wide v8, v7, Lcom/fusepowered/m1/android/VideoLogEvent;->position:J

    iget v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    iget-wide v8, v7, Lcom/fusepowered/m1/android/VideoLogEvent;->position:J

    int-to-long v10, v0

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 461
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    iget-object v8, v7, Lcom/fusepowered/m1/android/VideoLogEvent;->activities:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_3

    .line 463
    iget-object v8, v7, Lcom/fusepowered/m1/android/VideoLogEvent;->activities:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/fusepowered/m1/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    .line 461
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 454
    .end local v4    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 469
    .end local v2    # "i":I
    .end local v7    # "videoEvent":Lcom/fusepowered/m1/android/VideoLogEvent;
    :cond_4
    iput v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    .line 471
    :cond_5
    iget-boolean v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v8, :cond_6

    .line 473
    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "javascript:MMJS.cachedVideo.updateVideoSeekTime("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-float v10, v0

    const/high16 v11, 0x447a0000

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 475
    :cond_6
    iget-boolean v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v8, :cond_7

    .line 477
    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-wide v8, v8, Lcom/fusepowered/m1/android/VideoAd;->duration:J

    int-to-long v10, v0

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v5, v8, v10

    .line 478
    .local v5, "seconds":J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_8

    .line 480
    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    if-eqz v8, :cond_7

    .line 481
    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    .end local v0    # "currentPosition":I
    .end local v5    # "seconds":J
    :cond_7
    :goto_4
    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 491
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 493
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 485
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "currentPosition":I
    .restart local v5    # "seconds":J
    :cond_8
    :try_start_2
    invoke-direct {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hideHud()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected initLayout()Landroid/widget/RelativeLayout;
    .locals 15

    .prologue
    .line 231
    invoke-super {p0}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->initLayout()Landroid/widget/RelativeLayout;

    move-result-object v9

    .line 233
    .local v9, "parent":Landroid/widget/RelativeLayout;
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    .line 234
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->setRequestedOrientation(I)V

    .line 236
    iget-boolean v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v10, :cond_0

    .line 238
    invoke-direct {p0, v9}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->initHudStaticText(Landroid/view/ViewGroup;)V

    .line 239
    invoke-direct {p0, v9}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->initHudSeconds(Landroid/view/ViewGroup;)V

    .line 240
    invoke-direct {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->showHud()V

    .line 243
    :cond_0
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v10, v10, Lcom/fusepowered/m1/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 245
    invoke-direct {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->initWebOverlay()V

    .line 246
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v10, :cond_1

    .line 248
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 249
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    .line 357
    :cond_1
    :goto_0
    return-object v9

    .line 254
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    .line 255
    new-instance v10, Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-direct {v10, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    .line 256
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 258
    const/4 v3, 0x0

    .line 259
    .local v3, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m1/android/VideoImage;>;"
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v10, :cond_3

    .line 260
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v3, v10, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 262
    :cond_3
    if-eqz v3, :cond_a

    .line 264
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-static {v10}, Lcom/fusepowered/m1/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 266
    .local v0, "adDir":Ljava/io/File;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_9

    .line 269
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m1/android/VideoImage;

    .line 272
    .local v2, "button":Lcom/fusepowered/m1/android/VideoImage;
    new-instance v7, Landroid/widget/ImageButton;

    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-direct {v7, v10}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .local v7, "newButton":Landroid/widget/ImageButton;
    iput-object v7, v2, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    .line 275
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    invoke-virtual {v11}, Lcom/fusepowered/m1/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/fusepowered/m1/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\.[^\\.]*$"

    const-string v13, ".dat"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 277
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_6

    .line 278
    invoke-virtual {v7, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    iget v10, v2, Lcom/fusepowered/m1/android/VideoImage;->fromAlpha:F

    invoke-virtual {p0, v7, v10}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 291
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setId(I)V

    .line 292
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 294
    iget-boolean v10, v2, Lcom/fusepowered/m1/android/VideoImage;->isLeaveBehind:Z

    if-eqz v10, :cond_7

    .line 296
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 297
    const/high16 v10, -0x1000000

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 298
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 310
    .local v8, "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_3
    iget-object v10, v2, Lcom/fusepowered/m1/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 312
    new-instance v10, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$2;

    invoke-direct {v10, p0, v7, v2}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$2;-><init>(Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;Landroid/widget/ImageButton;Lcom/fusepowered/m1/android/VideoImage;)V

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :cond_4
    iget-wide v10, v2, Lcom/fusepowered/m1/android/VideoImage;->appearanceDelay:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_8

    .line 330
    iput-object v8, v2, Lcom/fusepowered/m1/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 331
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v11, 0x3

    invoke-static {v10, v11, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 332
    .local v6, "message":Landroid/os/Message;
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v11, v2, Lcom/fusepowered/m1/android/VideoImage;->appearanceDelay:J

    invoke-virtual {v10, v6, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 340
    .end local v6    # "message":Landroid/os/Message;
    :goto_4
    iget-wide v10, v2, Lcom/fusepowered/m1/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 342
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-static {v10, v11, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 343
    .restart local v6    # "message":Landroid/os/Message;
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v11, v2, Lcom/fusepowered/m1/android/VideoImage;->inactivityTimeout:J

    iget-wide v13, v2, Lcom/fusepowered/m1/android/VideoImage;->appearanceDelay:J

    add-long/2addr v11, v13

    iget-wide v13, v2, Lcom/fusepowered/m1/android/VideoImage;->fadeDuration:J

    add-long/2addr v11, v13

    invoke-virtual {v10, v6, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 266
    .end local v6    # "message":Landroid/os/Message;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 281
    .end local v8    # "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    invoke-virtual {v11}, Lcom/fusepowered/m1/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/fusepowered/m1/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\.[^\\.]*$"

    const-string v13, ".dat"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 284
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 286
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 302
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 303
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 304
    .restart local v8    # "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    const-string v10, "Button: %d Anchor: %d Position: %d Anchor2: %d Position2: %d"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, v2, Lcom/fusepowered/m1/android/VideoImage;->anchor:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget v13, v2, Lcom/fusepowered/m1/android/VideoImage;->position:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget v13, v2, Lcom/fusepowered/m1/android/VideoImage;->anchor2:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    iget v13, v2, Lcom/fusepowered/m1/android/VideoImage;->position2:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    iget v10, v2, Lcom/fusepowered/m1/android/VideoImage;->position:I

    iget v11, v2, Lcom/fusepowered/m1/android/VideoImage;->anchor:I

    invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 306
    iget v10, v2, Lcom/fusepowered/m1/android/VideoImage;->position2:I

    iget v11, v2, Lcom/fusepowered/m1/android/VideoImage;->anchor2:I

    invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 307
    iget v10, v2, Lcom/fusepowered/m1/android/VideoImage;->paddingLeft:I

    iget v11, v2, Lcom/fusepowered/m1/android/VideoImage;->paddingTop:I

    iget v12, v2, Lcom/fusepowered/m1/android/VideoImage;->paddingRight:I

    iget v13, v2, Lcom/fusepowered/m1/android/VideoImage;->paddingBottom:I

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 336
    :cond_8
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 348
    .end local v2    # "button":Lcom/fusepowered/m1/android/VideoImage;
    .end local v7    # "newButton":Landroid/widget/ImageButton;
    .end local v8    # "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    .end local v0    # "adDir":Ljava/io/File;
    .end local v5    # "i":I
    :cond_a
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_b

    .line 352
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 354
    :cond_b
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v10, :cond_1

    .line 355
    iget-object v10, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected initSavedInstance(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->initSavedInstance(Landroid/os/Bundle;)V

    .line 63
    if-nez p1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "videoId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "videoId":Ljava/lang/String;
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-static {v1, v0}, Lcom/fusepowered/m1/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/fusepowered/m1/android/CachedAd;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/VideoAd;

    iput-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    .line 68
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-boolean v1, v1, Lcom/fusepowered/m1/android/VideoAd;->showControls:Z

    iput-boolean v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasBottomBar:Z

    .line 71
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-boolean v1, v1, Lcom/fusepowered/m1/android/VideoAd;->showCountdown:Z

    iput-boolean v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    .line 82
    .end local v0    # "videoId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v1, "videoAd"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/VideoAd;

    iput-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    .line 77
    const-string v1, "shouldShowBottomBar"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasBottomBar:Z

    .line 78
    const-string v1, "lastVideoPosition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    .line 79
    const-string v1, "currentVideoPosition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    .line 80
    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-boolean v1, v1, Lcom/fusepowered/m1/android/VideoAd;->showCountdown:Z

    iput-boolean v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    goto :goto_0
.end method

.method loadUrlForMraidInjection(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 407
    new-instance v0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;-><init>(Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;Ljava/lang/String;)V

    .line 408
    .local v0, "task":Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 409
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 88
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hideHud()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v0, v0, Lcom/fusepowered/m1/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoPlayerOnCompletion(Ljava/lang/String;)V

    .line 94
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Lcom/fusepowered/m1/android/AdProperties;

    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-direct {v0, v1}, Lcom/fusepowered/m1/android/AdProperties;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->adProperties:Lcom/fusepowered/m1/android/AdProperties;

    .line 56
    const-string v0, "Is Cached Ad"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 99
    const-string v0, "Error while playing, %d - %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->errorPlayVideo(Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    const-string v0, "videoAd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/VideoAd;

    iput-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    .line 127
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->onResume()V

    .line 202
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->bringToFront()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 208
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    const-string v0, "videoAd"

    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 120
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 191
    invoke-super {p0}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->onStart()V

    .line 192
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/VideoAd;->stayInPlayer:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->isVideoCompleted:Z

    if-ne v0, v1, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->fadeButtons()V

    .line 196
    :cond_0
    return-void
.end method

.method protected pauseVideo()V
    .locals 2

    .prologue
    .line 515
    invoke-super {p0}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->pauseVideo()V

    .line 516
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    return-void
.end method

.method protected playVideo(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x2

    .line 574
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    const-string v1, "Sorry. There was a problem playing the video"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 584
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 583
    :cond_1
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->playVideo(I)V

    goto :goto_0
.end method

.method protected restartVideo()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 589
    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v5, :cond_6

    .line 591
    iget-boolean v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasLoadedCompletionUrl:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-boolean v5, v5, Lcom/fusepowered/m1/android/VideoAd;->reloadNonEndOverlayOnRestart:Z

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v5, v5, Lcom/fusepowered/m1/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v5, :cond_1

    .line 593
    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v5, v5, Lcom/fusepowered/m1/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->loadUrlForMraidInjection(Ljava/lang/String;)V

    .line 594
    iput-boolean v6, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasLoadedCompletionUrl:Z

    .line 596
    :cond_1
    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v2, v5, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 599
    .local v2, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m1/android/VideoImage;>;"
    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 603
    iput v6, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    .line 605
    iget-boolean v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 607
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 609
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/VideoImage;

    .line 611
    .local v1, "buttonData":Lcom/fusepowered/m1/android/VideoImage;
    if-eqz v1, :cond_3

    .line 613
    iget-wide v5, v1, Lcom/fusepowered/m1/android/VideoImage;->appearanceDelay:J

    cmp-long v5, v5, v13

    if-lez v5, :cond_2

    .line 615
    iget-object v0, v1, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    .line 616
    .local v0, "button":Landroid/widget/ImageButton;
    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 617
    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-static {v5, v12, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 618
    .local v4, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v6, v1, Lcom/fusepowered/m1/android/VideoImage;->appearanceDelay:J

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 622
    .end local v0    # "button":Landroid/widget/ImageButton;
    .end local v4    # "message":Landroid/os/Message;
    :cond_2
    iget-wide v5, v1, Lcom/fusepowered/m1/android/VideoImage;->inactivityTimeout:J

    cmp-long v5, v5, v13

    if-lez v5, :cond_3

    .line 624
    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-static {v5, v10, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 625
    .restart local v4    # "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v6, v1, Lcom/fusepowered/m1/android/VideoImage;->inactivityTimeout:J

    iget-wide v8, v1, Lcom/fusepowered/m1/android/VideoImage;->appearanceDelay:J

    add-long/2addr v6, v8

    iget-wide v8, v1, Lcom/fusepowered/m1/android/VideoImage;->fadeDuration:J

    add-long/2addr v6, v8

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 607
    .end local v4    # "message":Landroid/os/Message;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 631
    .end local v1    # "buttonData":Lcom/fusepowered/m1/android/VideoImage;
    .end local v3    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    if-eqz v5, :cond_5

    .line 632
    iget-object v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-static {v6, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 634
    :cond_5
    iget-boolean v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v5, :cond_6

    .line 635
    invoke-direct {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->showHud()V

    .line 637
    .end local v2    # "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/m1/android/VideoImage;>;"
    :cond_6
    invoke-super {p0}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->restartVideo()V

    .line 638
    return-void
.end method

.method protected resumeVideo()V
    .locals 12

    .prologue
    .line 524
    iget-object v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v7, :cond_6

    .line 526
    iget-object v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 527
    iget-object v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 528
    :cond_0
    iget-boolean v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v7, :cond_6

    .line 530
    iget-boolean v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v7, :cond_1

    .line 532
    iget-object v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-wide v7, v7, Lcom/fusepowered/m1/android/VideoAd;->duration:J

    iget v9, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    int-to-long v9, v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long v5, v7, v9

    .line 533
    .local v5, "seconds":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_5

    .line 535
    iget-object v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 536
    iget-object v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    .end local v5    # "seconds":J
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v7, v7, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 545
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v7, v7, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 547
    iget-object v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v7, v7, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/VideoImage;

    .line 548
    .local v0, "button":Lcom/fusepowered/m1/android/VideoImage;
    const-wide/16 v1, 0x0

    .line 550
    .local v1, "delay":J
    iget-wide v7, v0, Lcom/fusepowered/m1/android/VideoImage;->appearanceDelay:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v8, v0, Lcom/fusepowered/m1/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 552
    iget-object v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-static {v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 553
    .local v4, "message":Landroid/os/Message;
    iget-wide v7, v0, Lcom/fusepowered/m1/android/VideoImage;->appearanceDelay:J

    iget v9, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    int-to-long v9, v9

    sub-long v1, v7, v9

    .line 554
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gez v7, :cond_2

    .line 555
    const-wide/16 v1, 0x1f4

    .line 556
    :cond_2
    iget-object v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v7, v4, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 559
    .end local v4    # "message":Landroid/os/Message;
    :cond_3
    iget-wide v7, v0, Lcom/fusepowered/m1/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    .line 561
    iget-object v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-static {v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 562
    .restart local v4    # "message":Landroid/os/Message;
    iget-object v7, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v8, v0, Lcom/fusepowered/m1/android/VideoImage;->inactivityTimeout:J

    add-long/2addr v8, v1

    iget-wide v10, v0, Lcom/fusepowered/m1/android/VideoImage;->fadeDuration:J

    add-long/2addr v8, v10

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 545
    .end local v4    # "message":Landroid/os/Message;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 540
    .end local v0    # "button":Lcom/fusepowered/m1/android/VideoImage;
    .end local v1    # "delay":J
    .end local v3    # "i":I
    .restart local v5    # "seconds":J
    :cond_5
    invoke-direct {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hideHud()V

    goto :goto_0

    .line 568
    .end local v5    # "seconds":J
    :cond_6
    invoke-super {p0}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->resumeVideo()V

    .line 569
    return-void
.end method

.method protected videoPlayerOnCompletion(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->dispatchButtonClick(Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/VideoAd;->logEndEvent()V

    .line 139
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/VideoAd;->stayInPlayer:Z

    if-nez v0, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->dismiss()V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v0, v0, Lcom/fusepowered/m1/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->fadeButtons()V

    .line 149
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/VideoAd;->hasEndCard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->dismiss()V

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v0, v0, Lcom/fusepowered/m1/android/VideoAd;->endOverlayURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 157
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-object v0, v0, Lcom/fusepowered/m1/android/VideoAd;->endOverlayURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->loadUrlForMraidInjection(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->bringToFront()V

    .line 164
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-wide v0, v0, Lcom/fusepowered/m1/android/VideoAd;->closeDelayMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->videoAd:Lcom/fusepowered/m1/android/VideoAd;

    iget-wide v0, v0, Lcom/fusepowered/m1/android/VideoAd;->closeDelayMillis:J

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->dismissAfter(J)V

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 160
    :cond_6
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-eqz v0, :cond_4

    .line 162
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->dismiss()V

    goto :goto_1
.end method
