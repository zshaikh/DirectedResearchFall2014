.class public Lcom/fusepowered/m2/m2l/MoPubView;
.super Landroid/widget/FrameLayout;
.source "MoPubView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;,
        Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;,
        Lcom/fusepowered/m2/m2l/MoPubView$OnAdClickedListener;,
        Lcom/fusepowered/m2/m2l/MoPubView$OnAdClosedListener;,
        Lcom/fusepowered/m2/m2l/MoPubView$OnAdFailedListener;,
        Lcom/fusepowered/m2/m2l/MoPubView$OnAdLoadedListener;,
        Lcom/fusepowered/m2/m2l/MoPubView$OnAdPresentedOverlayListener;,
        Lcom/fusepowered/m2/m2l/MoPubView$OnAdWillLoadListener;
    }
.end annotation


# static fields
.field public static final AD_HANDLER:Ljava/lang/String; = "/m/ad"

.field public static final DEFAULT_LOCATION_PRECISION:I = 0x6

.field public static final HOST:Ljava/lang/String; = "ads.mopub.com"

.field public static final HOST_FOR_TESTING:Ljava/lang/String; = "testing.ads.mopub.com"


# instance fields
.field protected mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

.field private mBannerAdListener:Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;

.field private mContext:Landroid/content/Context;

.field protected mCustomEventBannerAdapter:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

.field private mIsInForeground:Z

.field private mLocationAwareness:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

.field private mOnAdClickedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdClickedListener;

.field private mOnAdClosedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdClosedListener;

.field private mOnAdFailedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdFailedListener;

.field private mOnAdLoadedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdLoadedListener;

.field private mOnAdPresentedOverlayListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdPresentedOverlayListener;

.field private mOnAdWillLoadListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdWillLoadListener;

.field private mPreviousAutorefreshSetting:Z

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fusepowered/m2/m2l/MoPubView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-boolean v1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mPreviousAutorefreshSetting:Z

    .line 99
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MoPubView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mIsInForeground:Z

    .line 101
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mLocationAwareness:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    .line 103
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/MoPubView;->setHorizontalScrollBarEnabled(Z)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/MoPubView;->setVerticalScrollBarEnabled(Z)V

    .line 111
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    .line 112
    const-string v0, "MoPub"

    const-string v1, "Disabling MoPub. Local cache file is inaccessible so MoPub will fail if we try to create a WebView. Details of this Android bug found at:http://code.google.com/p/android/issues/detail?id=10789"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 100
    goto :goto_0

    .line 118
    :cond_1
    invoke-static {p1, p0}, Lcom/fusepowered/m2/m2l/factories/AdViewControllerFactory;->create(Landroid/content/Context;Lcom/fusepowered/m2/m2l/MoPubView;)Lcom/fusepowered/m2/m2l/AdViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    .line 119
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MoPubView;->registerScreenStateBroadcastReceiver()V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/MoPubView;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mIsInForeground:Z

    return v0
.end method

.method static synthetic access$1(Lcom/fusepowered/m2/m2l/MoPubView;Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mPreviousAutorefreshSetting:Z

    return-void
.end method

.method static synthetic access$2(Lcom/fusepowered/m2/m2l/MoPubView;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mPreviousAutorefreshSetting:Z

    return v0
.end method

.method private registerScreenStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-nez v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v1, Lcom/fusepowered/m2/m2l/MoPubView$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/m2l/MoPubView$1;-><init>(Lcom/fusepowered/m2/m2l/MoPubView;)V

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private unregisterScreenStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 159
    .local v0, "IllegalArgumentException":Ljava/lang/Exception;
    const-string v1, "MoPub"

    const-string v2, "Failed to unregister screen state broadcast receiver (never registered)."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected adClicked()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;->onBannerClicked(Lcom/fusepowered/m2/m2l/MoPubView;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdClickedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdClickedListener;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdClickedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdClickedListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/m2l/MoPubView$OnAdClickedListener;->OnAdClicked(Lcom/fusepowered/m2/m2l/MoPubView;)V

    goto :goto_0
.end method

.method protected adClosed()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;->onBannerCollapsed(Lcom/fusepowered/m2/m2l/MoPubView;)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdClosedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdClosedListener;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdClosedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdClosedListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/m2l/MoPubView$OnAdClosedListener;->OnAdClosed(Lcom/fusepowered/m2/m2l/MoPubView;)V

    goto :goto_0
.end method

.method protected adFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;

    invoke-interface {v0, p0, p1}, Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;->onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubView;Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdFailedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdFailedListener;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdFailedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdFailedListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/m2l/MoPubView$OnAdFailedListener;->OnAdFailed(Lcom/fusepowered/m2/m2l/MoPubView;)V

    goto :goto_0
.end method

.method protected adLoaded()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "MoPub"

    const-string v1, "adLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;->onBannerLoaded(Lcom/fusepowered/m2/m2l/MoPubView;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdLoadedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdLoadedListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdLoadedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdLoadedListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/m2l/MoPubView$OnAdLoadedListener;->OnAdLoaded(Lcom/fusepowered/m2/m2l/MoPubView;)V

    goto :goto_0
.end method

.method protected adPresentedOverlay()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;->onBannerExpanded(Lcom/fusepowered/m2/m2l/MoPubView;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdPresentedOverlayListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdPresentedOverlayListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdPresentedOverlayListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdPresentedOverlayListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/m2/m2l/MoPubView$OnAdPresentedOverlayListener;->OnAdPresentedOverlay(Lcom/fusepowered/m2/m2l/MoPubView;)V

    goto :goto_0
.end method

.method protected adWillLoad(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adWillLoad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdWillLoadListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdWillLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdWillLoadListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdWillLoadListener;

    invoke-interface {v0, p0, p1}, Lcom/fusepowered/m2/m2l/MoPubView$OnAdWillLoadListener;->OnAdWillLoad(Lcom/fusepowered/m2/m2l/MoPubView;Ljava/lang/String;)V

    .line 495
    :cond_0
    return-void
.end method

.method public customEventActionWillBegin()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->customEventActionWillBegin()V

    .line 510
    :cond_0
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->customEventDidFailToLoadAd()V

    .line 505
    :cond_0
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->customEventDidLoadAd()V

    .line 500
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MoPubView;->unregisterScreenStateBroadcastReceiver()V

    .line 173
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MoPubView;->removeAllViews()V

    .line 175
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->cleanup()V

    .line 177
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->invalidate()V

    .line 182
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    .line 184
    :cond_1
    return-void
.end method

.method public forceRefresh()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->invalidate()V

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->forceRefresh()V

    .line 425
    :cond_1
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 350
    iget-object p0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mContext:Landroid/content/Context;

    .end local p0    # "this":Lcom/fusepowered/m2/m2l/MoPubView;
    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getAdHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAdTimeoutDelay()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAdViewController()Lcom/fusepowered/m2/m2l/AdViewController;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getAdWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutorefreshEnabled()Z
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getAutorefreshEnabled()Z

    move-result v0

    .line 397
    :goto_0
    return v0

    .line 395
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Can\'t get autorefresh status for destroyed MoPubView. Returning false."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBannerAdListener()Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;

    return-object v0
.end method

.method public getClickthroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getClickthroughUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getKeywords()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getLocalExtras()Ljava/util/Map;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getLocation()Landroid/location/Location;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocationAwareness()Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mLocationAwareness:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    return-object v0
.end method

.method public getLocationPrecision()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getLocationPrecision()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getResponseString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTesting()Z
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getTesting()Z

    move-result v0

    .line 414
    :goto_0
    return v0

    .line 412
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Can\'t get testing status for destroyed MoPubView. Returning false."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFacebookSupported()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->isFacebookSupported()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->loadAd()V

    .line 165
    :cond_0
    return-void
.end method

.method protected loadCustomEvent(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "MoPub"

    .line 195
    if-nez p1, :cond_0

    .line 196
    const-string v0, "MoPub"

    const-string v0, "Couldn\'t invoke custom event because the server did not specify one."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MoPubView;->loadFailUrl(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 212
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->invalidate()V

    .line 205
    :cond_1
    const-string v0, "MoPub"

    const-string v0, "Loading custom event adapter."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v0, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->CUSTOM_EVENT_NAME:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    sget-object v1, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    invoke-static {p0, v0, v1}, Lcom/fusepowered/m2/m2l/factories/CustomEventBannerAdapterFactory;->create(Lcom/fusepowered/m2/m2l/MoPubView;Ljava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    .line 211
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mCustomEventBannerAdapter:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->loadAd()V

    goto :goto_0
.end method

.method protected loadFailUrl(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdViewController;->loadFailUrl(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 192
    :cond_0
    return-void
.end method

.method protected nativeAdLoaded()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MoPubView;->adLoaded()V

    .line 289
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "MoPub"

    const-string v4, "Ad Unit ("

    .line 230
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 232
    :cond_0
    if-nez p1, :cond_1

    .line 233
    const-string v0, "MoPub"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Unit ("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdViewController;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") going visible: enabling refresh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-boolean v3, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mIsInForeground:Z

    .line 235
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0, v3}, Lcom/fusepowered/m2/m2l/AdViewController;->setAutorefreshEnabled(Z)V

    goto :goto_0

    .line 238
    :cond_1
    const-string v0, "MoPub"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Unit ("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdViewController;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") going invisible: disabling refresh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iput-boolean v2, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mIsInForeground:Z

    .line 240
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0, v2}, Lcom/fusepowered/m2/m2l/AdViewController;->setAutorefreshEnabled(Z)V

    goto :goto_0
.end method

.method protected registerClick()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->registerClick()V

    .line 219
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MoPubView;->adClicked()V

    .line 221
    :cond_0
    return-void
.end method

.method public setAdContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdViewController;->setAdContentView(Landroid/view/View;)V

    .line 403
    :cond_0
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdViewController;->setAdUnitId(Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method

.method public setAutorefreshEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 389
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdViewController;->setAutorefreshEnabled(Z)V

    .line 390
    :cond_0
    return-void
.end method

.method public setBannerAdListener(Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mBannerAdListener:Lcom/fusepowered/m2/m2l/MoPubView$BannerAdListener;

    .line 355
    return-void
.end method

.method public setClickthroughUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdViewController;->setClickthroughUrl(Ljava/lang/String;)V

    .line 343
    :cond_0
    return-void
.end method

.method public setFacebookSupported(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdViewController;->setFacebookSupported(Z)V

    .line 311
    :cond_0
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdViewController;->setKeywords(Ljava/lang/String;)V

    .line 303
    :cond_0
    return-void
.end method

.method public setLocalExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdViewController;->setLocalExtras(Ljava/util/Map;)V

    .line 381
    :cond_0
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdViewController;->setLocation(Landroid/location/Location;)V

    .line 319
    :cond_0
    return-void
.end method

.method public setLocationAwareness(Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;)V
    .locals 0
    .param p1, "awareness"    # Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mLocationAwareness:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;

    .line 363
    return-void
.end method

.method public setLocationPrecision(I)V
    .locals 1
    .param p1, "precision"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdViewController;->setLocationPrecision(I)V

    .line 373
    :cond_0
    return-void
.end method

.method public setOnAdClickedListener(Lcom/fusepowered/m2/m2l/MoPubView$OnAdClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/m2l/MoPubView$OnAdClickedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdClickedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdClickedListener;

    .line 489
    return-void
.end method

.method public setOnAdClosedListener(Lcom/fusepowered/m2/m2l/MoPubView$OnAdClosedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/m2l/MoPubView$OnAdClosedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 483
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdClosedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdClosedListener;

    .line 484
    return-void
.end method

.method public setOnAdFailedListener(Lcom/fusepowered/m2/m2l/MoPubView$OnAdFailedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/m2l/MoPubView$OnAdFailedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 473
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdFailedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdFailedListener;

    .line 474
    return-void
.end method

.method public setOnAdLoadedListener(Lcom/fusepowered/m2/m2l/MoPubView$OnAdLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/m2l/MoPubView$OnAdLoadedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 468
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdLoadedListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdLoadedListener;

    .line 469
    return-void
.end method

.method public setOnAdPresentedOverlayListener(Lcom/fusepowered/m2/m2l/MoPubView$OnAdPresentedOverlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/m2l/MoPubView$OnAdPresentedOverlayListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdPresentedOverlayListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdPresentedOverlayListener;

    .line 479
    return-void
.end method

.method public setOnAdWillLoadListener(Lcom/fusepowered/m2/m2l/MoPubView$OnAdWillLoadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/m2l/MoPubView$OnAdWillLoadListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mOnAdWillLoadListener:Lcom/fusepowered/m2/m2l/MoPubView$OnAdWillLoadListener;

    .line 464
    return-void
.end method

.method public setTesting(Z)V
    .locals 1
    .param p1, "testing"    # Z

    .prologue
    .line 406
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdViewController;->setTesting(Z)V

    .line 407
    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .param p1, "milliseconds"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/AdViewController;->setTimeout(I)V

    .line 327
    :cond_0
    return-void
.end method

.method protected trackNativeImpression()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "MoPub"

    const-string v1, "Tracking impression for native adapter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->trackImpression()V

    .line 226
    :cond_0
    return-void
.end method
