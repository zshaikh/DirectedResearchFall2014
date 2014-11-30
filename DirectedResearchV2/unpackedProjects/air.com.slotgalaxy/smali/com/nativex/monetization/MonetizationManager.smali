.class public Lcom/nativex/monetization/MonetizationManager;
.super Ljava/lang/Object;
.source "MonetizationManager.java"


# static fields
.field private static instance:Lcom/nativex/monetization/MonetizationManager;


# instance fields
.field private monetizationSDK:Lcom/nativex/monetization/MonetizationSDK;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sput-object p0, Lcom/nativex/monetization/MonetizationManager;->instance:Lcom/nativex/monetization/MonetizationManager;

    .line 71
    return-void
.end method

.method public static actionTaken(I)V
    .locals 0
    .param p0, "actionId"    # I

    .prologue
    .line 159
    invoke-static {}, Lcom/nativex/monetization/MonetizationManager;->checkInstance()V

    .line 160
    invoke-static {p0}, Lcom/nativex/advertiser/AdvertiserRequestManager;->actionTaken(I)V

    .line 161
    return-void
.end method

.method private static checkInstance()V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/nativex/monetization/MonetizationManager;->instance:Lcom/nativex/monetization/MonetizationManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MonetizationManager not initialized. Please call MonetizationManager.initialize() first."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    return-void
.end method

.method private static checkPlacementName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "apiname"    # Ljava/lang/String;

    .prologue
    .line 804
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement name cannot be empty or null in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_1
    return-void
.end method

.method private static final checkPosition(Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Ljava/lang/String;)V
    .locals 3
    .param p0, "position"    # Landroid/graphics/Rect;
    .param p1, "enumPosition"    # Lcom/nativex/monetization/enums/BannerPosition;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    .line 546
    if-eqz p1, :cond_1

    .line 552
    :cond_0
    return-void

    .line 549
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gez v0, :cond_0

    .line 550
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid placement position in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createSession()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nativex/monetization/MonetizationManager;->createSession(Lcom/nativex/monetization/listeners/SessionListener;)V

    .line 135
    return-void
.end method

.method public static createSession(Lcom/nativex/monetization/listeners/SessionListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/nativex/monetization/listeners/SessionListener;

    .prologue
    .line 147
    invoke-static {}, Lcom/nativex/monetization/MonetizationManager;->checkInstance()V

    .line 148
    sget-object v0, Lcom/nativex/monetization/MonetizationManager;->instance:Lcom/nativex/monetization/MonetizationManager;

    iget-object v0, v0, Lcom/nativex/monetization/MonetizationManager;->monetizationSDK:Lcom/nativex/monetization/MonetizationSDK;

    invoke-virtual {v0, p0}, Lcom/nativex/monetization/MonetizationSDK;->createSession(Lcom/nativex/monetization/listeners/SessionListener;)V

    .line 149
    return-void
.end method

.method public static final dismissAd(Lcom/nativex/monetization/enums/NativeXAdPlacement;)V
    .locals 1
    .param p0, "name"    # Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/nativex/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseInterstitial(Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public static final dismissAd(Ljava/lang/String;)V
    .locals 1
    .param p0, "customPlacement"    # Ljava/lang/String;

    .prologue
    .line 791
    const-string v0, "dismissAd"

    invoke-static {p0, v0}, Lcom/nativex/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseInterstitial(Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public static final dismissBannerAd(Lcom/nativex/monetization/enums/NativeXAdPlacement;)V
    .locals 1
    .param p0, "name"    # Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/nativex/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseBanner(Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method public static final dismissBannerAd(Ljava/lang/String;)V
    .locals 1
    .param p0, "customPlacement"    # Ljava/lang/String;

    .prologue
    .line 768
    const-string v0, "dismissInlineAd"

    invoke-static {p0, v0}, Lcom/nativex/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseBanner(Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public static enableLogging(Z)V
    .locals 0
    .param p0, "isEnabled"    # Z

    .prologue
    .line 207
    invoke-static {p0}, Lcom/nativex/common/Log;->enableLogging(Z)V

    .line 208
    return-void
.end method

.method public static endSession()V
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/nativex/monetization/MonetizationManager;->instance:Lcom/nativex/monetization/MonetizationManager;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    sget-object v0, Lcom/nativex/monetization/MonetizationManager;->instance:Lcom/nativex/monetization/MonetizationManager;

    iget-object v0, v0, Lcom/nativex/monetization/MonetizationManager;->monetizationSDK:Lcom/nativex/monetization/MonetizationSDK;

    invoke-virtual {v0}, Lcom/nativex/monetization/MonetizationSDK;->endSession()V

    goto :goto_0
.end method

.method public static final fetchAd(Landroid/app/Activity;Lcom/nativex/monetization/enums/NativeXAdPlacement;Lcom/nativex/monetization/listeners/OnAdEvent;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Lcom/nativex/monetization/enums/NativeXAdPlacement;
    .param p2, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;

    .prologue
    .line 589
    invoke-virtual {p1}, Lcom/nativex/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/nativex/monetization/MonetizationManager;->fetchAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 590
    return-void
.end method

.method public static final fetchAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;

    .prologue
    .line 608
    const-string v0, "fetchAd"

    invoke-static {p1, v0}, Lcom/nativex/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    new-instance v0, Lcom/nativex/monetization/MonetizationManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/nativex/monetization/MonetizationManager$4;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 616
    return-void
.end method

.method public static final fetchBannerAd(Landroid/app/Activity;Lcom/nativex/monetization/enums/NativeXAdPlacement;Lcom/nativex/monetization/listeners/OnAdEvent;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Lcom/nativex/monetization/enums/NativeXAdPlacement;
    .param p2, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;

    .prologue
    .line 634
    invoke-virtual {p1}, Lcom/nativex/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/nativex/monetization/MonetizationManager;->fetchBannerAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 635
    return-void
.end method

.method public static final fetchBannerAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;

    .prologue
    .line 649
    const-string v0, "fetchInlineAd"

    invoke-static {p1, v0}, Lcom/nativex/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    new-instance v0, Lcom/nativex/monetization/MonetizationManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/nativex/monetization/MonetizationManager$5;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 658
    return-void
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lcom/nativex/monetization/MonetizationManager;->checkInstance()V

    .line 228
    sget-object v0, Lcom/nativex/monetization/MonetizationManager;->instance:Lcom/nativex/monetization/MonetizationManager;

    iget-object v0, v0, Lcom/nativex/monetization/MonetizationManager;->monetizationSDK:Lcom/nativex/monetization/MonetizationSDK;

    invoke-virtual {v0}, Lcom/nativex/monetization/MonetizationSDK;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;Lcom/nativex/monetization/ApplicationInputs;)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "inputs"    # Lcom/nativex/monetization/ApplicationInputs;

    .prologue
    .line 96
    new-instance v0, Lcom/nativex/monetization/MonetizationManager;

    invoke-direct {v0}, Lcom/nativex/monetization/MonetizationManager;-><init>()V

    .line 97
    sget-object v0, Lcom/nativex/monetization/MonetizationManager;->instance:Lcom/nativex/monetization/MonetizationManager;

    new-instance v1, Lcom/nativex/monetization/MonetizationSDK;

    invoke-direct {v1, p0, p1}, Lcom/nativex/monetization/MonetizationSDK;-><init>(Landroid/app/Activity;Lcom/nativex/monetization/ApplicationInputs;)V

    iput-object v1, v0, Lcom/nativex/monetization/MonetizationManager;->monetizationSDK:Lcom/nativex/monetization/MonetizationSDK;

    .line 98
    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "publisherUserId"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Lcom/nativex/monetization/ApplicationInputs;

    invoke-direct {v0}, Lcom/nativex/monetization/ApplicationInputs;-><init>()V

    .line 121
    .local v0, "inputs":Lcom/nativex/monetization/ApplicationInputs;
    invoke-virtual {v0, p1}, Lcom/nativex/monetization/ApplicationInputs;->setApplicationName(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, p2}, Lcom/nativex/monetization/ApplicationInputs;->setAppId(I)V

    .line 123
    invoke-virtual {v0, p3}, Lcom/nativex/monetization/ApplicationInputs;->setPublisherUserId(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p4}, Lcom/nativex/monetization/ApplicationInputs;->setPackageName(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/nativex/monetization/MonetizationManager;

    invoke-direct {v1}, Lcom/nativex/monetization/MonetizationManager;-><init>()V

    new-instance v2, Lcom/nativex/monetization/MonetizationSDK;

    invoke-direct {v2, p0, v0}, Lcom/nativex/monetization/MonetizationSDK;-><init>(Landroid/app/Activity;Lcom/nativex/monetization/ApplicationInputs;)V

    iput-object v2, v1, Lcom/nativex/monetization/MonetizationManager;->monetizationSDK:Lcom/nativex/monetization/MonetizationSDK;

    .line 126
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/nativex/monetization/MonetizationManager;->instance:Lcom/nativex/monetization/MonetizationManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static redeemCurrency()V
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lcom/nativex/monetization/MonetizationManager;->checkInstance()V

    .line 196
    sget-object v0, Lcom/nativex/monetization/MonetizationManager;->instance:Lcom/nativex/monetization/MonetizationManager;

    iget-object v0, v0, Lcom/nativex/monetization/MonetizationManager;->monetizationSDK:Lcom/nativex/monetization/MonetizationSDK;

    invoke-virtual {v0}, Lcom/nativex/monetization/MonetizationSDK;->redeemCurrency()V

    .line 197
    return-void
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/nativex/monetization/MonetizationManager;->instance:Lcom/nativex/monetization/MonetizationManager;

    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    sget-object v0, Lcom/nativex/monetization/MonetizationManager;->instance:Lcom/nativex/monetization/MonetizationManager;

    iget-object v0, v0, Lcom/nativex/monetization/MonetizationManager;->monetizationSDK:Lcom/nativex/monetization/MonetizationSDK;

    invoke-virtual {v0}, Lcom/nativex/monetization/MonetizationSDK;->release()V

    .line 319
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/MonetizationManager;->instance:Lcom/nativex/monetization/MonetizationManager;

    goto :goto_0
.end method

.method public static final reloadBannerAd(Lcom/nativex/monetization/enums/NativeXAdPlacement;)V
    .locals 1
    .param p0, "name"    # Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/nativex/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDManager;->reloadBanner(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public static final reloadBannerAd(Ljava/lang/String;)V
    .locals 1
    .param p0, "customPlacement"    # Ljava/lang/String;

    .prologue
    .line 679
    const-string v0, "loadNewAdInInlineAd"

    invoke-static {p0, v0}, Lcom/nativex/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDManager;->reloadBanner(Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public static setAdvertiserListener(Lcom/nativex/advertiser/AdvertiserListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/nativex/advertiser/AdvertiserListener;

    .prologue
    .line 182
    invoke-static {p0}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->setAdvertiserListener(Lcom/nativex/advertiser/AdvertiserListener;)V

    .line 183
    return-void
.end method

.method public static final setBannerAdPosition(Lcom/nativex/monetization/enums/NativeXAdPlacement;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "name"    # Lcom/nativex/monetization/enums/NativeXAdPlacement;
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/nativex/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nativex/monetization/MonetizationManager;->setBannerAdPosition(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 696
    return-void
.end method

.method public static final setBannerAdPosition(Lcom/nativex/monetization/enums/NativeXAdPlacement;Lcom/nativex/monetization/enums/BannerPosition;)V
    .locals 1
    .param p0, "name"    # Lcom/nativex/monetization/enums/NativeXAdPlacement;
    .param p1, "position"    # Lcom/nativex/monetization/enums/BannerPosition;

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/nativex/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nativex/monetization/MonetizationManager;->setBannerAdPosition(Ljava/lang/String;Lcom/nativex/monetization/enums/BannerPosition;)V

    .line 711
    return-void
.end method

.method public static final setBannerAdPosition(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "customPlacement"    # Ljava/lang/String;
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 744
    const-string v0, "setInlineAdPosition"

    invoke-static {p0, v0}, Lcom/nativex/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-static {p1, v1, p0}, Lcom/nativex/monetization/MonetizationManager;->checkPosition(Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Ljava/lang/String;)V

    .line 746
    invoke-static {p0, p1, v1}, Lcom/nativex/monetization/mraid/MRAIDManager;->setAdPosition(Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;)V

    .line 747
    return-void
.end method

.method public static final setBannerAdPosition(Ljava/lang/String;Lcom/nativex/monetization/enums/BannerPosition;)V
    .locals 2
    .param p0, "customPlacement"    # Ljava/lang/String;
    .param p1, "position"    # Lcom/nativex/monetization/enums/BannerPosition;

    .prologue
    const/4 v1, 0x0

    .line 726
    const-string v0, "setInlineAdPosition"

    invoke-static {p0, v0}, Lcom/nativex/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-static {v1, p1, p0}, Lcom/nativex/monetization/MonetizationManager;->checkPosition(Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Ljava/lang/String;)V

    .line 728
    invoke-static {p0, v1, p1}, Lcom/nativex/monetization/mraid/MRAIDManager;->setAdPosition(Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;)V

    .line 729
    return-void
.end method

.method public static setCurrencyListener(Lcom/nativex/monetization/listeners/CurrencyListenerBase;)V
    .locals 0
    .param p0, "listener"    # Lcom/nativex/monetization/listeners/CurrencyListenerBase;

    .prologue
    .line 171
    invoke-static {p0}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->setCurrencyListener(Lcom/nativex/monetization/listeners/CurrencyListenerBase;)V

    .line 172
    return-void
.end method

.method public static setTheme(Lcom/nativex/monetization/theme/Theme;)V
    .locals 0
    .param p0, "theme"    # Lcom/nativex/monetization/theme/Theme;

    .prologue
    .line 298
    invoke-static {}, Lcom/nativex/monetization/MonetizationManager;->checkInstance()V

    .line 299
    invoke-static {p0}, Lcom/nativex/monetization/theme/ThemeManager;->setTheme(Lcom/nativex/monetization/theme/Theme;)V

    .line 300
    return-void
.end method

.method public static final showAd(Landroid/app/Activity;Lcom/nativex/monetization/enums/NativeXAdPlacement;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .prologue
    .line 335
    invoke-virtual {p1}, Lcom/nativex/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nativex/monetization/MonetizationManager;->showAd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public static final showAd(Landroid/app/Activity;Lcom/nativex/monetization/enums/NativeXAdPlacement;Lcom/nativex/monetization/listeners/OnAdEvent;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Lcom/nativex/monetization/enums/NativeXAdPlacement;
    .param p2, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;

    .prologue
    .line 368
    invoke-virtual {p1}, Lcom/nativex/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/nativex/monetization/MonetizationManager;->showAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 369
    return-void
.end method

.method public static final showAd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nativex/monetization/MonetizationManager;->showAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 350
    return-void
.end method

.method public static final showAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;

    .prologue
    .line 387
    const-string v0, "showAd"

    invoke-static {p1, v0}, Lcom/nativex/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v0, Lcom/nativex/monetization/MonetizationManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/nativex/monetization/MonetizationManager$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 395
    return-void
.end method

.method public static final showBannerAd(Landroid/app/Activity;Lcom/nativex/monetization/enums/NativeXAdPlacement;Landroid/graphics/Rect;Lcom/nativex/monetization/listeners/OnAdEvent;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Lcom/nativex/monetization/enums/NativeXAdPlacement;
    .param p2, "position"    # Landroid/graphics/Rect;
    .param p3, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;

    .prologue
    .line 464
    invoke-virtual {p1}, Lcom/nativex/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/nativex/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 465
    return-void
.end method

.method public static final showBannerAd(Landroid/app/Activity;Lcom/nativex/monetization/enums/NativeXAdPlacement;Lcom/nativex/monetization/enums/BannerPosition;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "placement"    # Lcom/nativex/monetization/enums/NativeXAdPlacement;
    .param p2, "position"    # Lcom/nativex/monetization/enums/BannerPosition;

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/nativex/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Lcom/nativex/monetization/enums/NativeXAdPlacement;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 446
    return-void
.end method

.method public static final showBannerAd(Landroid/app/Activity;Lcom/nativex/monetization/enums/NativeXAdPlacement;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Lcom/nativex/monetization/enums/NativeXAdPlacement;
    .param p2, "position"    # Lcom/nativex/monetization/enums/BannerPosition;
    .param p3, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;

    .prologue
    .line 483
    invoke-virtual {p1}, Lcom/nativex/monetization/enums/NativeXAdPlacement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/nativex/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 484
    return-void
.end method

.method public static final showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/nativex/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 412
    return-void
.end method

.method private static final showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "position"    # Landroid/graphics/Rect;
    .param p3, "adPosition"    # Lcom/nativex/monetization/enums/BannerPosition;
    .param p4, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;

    .prologue
    .line 530
    const-string v0, "showInlineAd"

    invoke-static {p1, v0}, Lcom/nativex/monetization/MonetizationManager;->checkPlacementName(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-static {p2, p3, p1}, Lcom/nativex/monetization/MonetizationManager;->checkPosition(Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Ljava/lang/String;)V

    .line 532
    new-instance v0, Lcom/nativex/monetization/MonetizationManager$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nativex/monetization/MonetizationManager$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 539
    return-void
.end method

.method public static final showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/listeners/OnAdEvent;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "position"    # Landroid/graphics/Rect;
    .param p3, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;

    .prologue
    .line 502
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/nativex/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 503
    return-void
.end method

.method public static final showBannerAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/enums/BannerPosition;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "position"    # Lcom/nativex/monetization/enums/BannerPosition;

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/nativex/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 429
    return-void
.end method

.method public static final showBannerAd(Landroid/app/Activity;Ljava/lang/String;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customPlacement"    # Ljava/lang/String;
    .param p2, "position"    # Lcom/nativex/monetization/enums/BannerPosition;
    .param p3, "listener"    # Lcom/nativex/monetization/listeners/OnAdEvent;

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/nativex/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/nativex/monetization/enums/BannerPosition;Lcom/nativex/monetization/listeners/OnAdEvent;)V

    .line 522
    return-void
.end method

.method public static trackInAppPurchase(Lcom/nativex/common/billingtracking/BillingInputs;)V
    .locals 7
    .param p0, "inputs"    # Lcom/nativex/common/billingtracking/BillingInputs;

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/nativex/common/billingtracking/BillingInputs;->getStoreProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nativex/common/billingtracking/BillingInputs;->getStoreTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nativex/common/billingtracking/BillingInputs;->getStoreTransactionTimeUTC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nativex/common/billingtracking/BillingInputs;->getCostPerItem()F

    move-result v3

    invoke-virtual {p0}, Lcom/nativex/common/billingtracking/BillingInputs;->getCurrencyLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nativex/common/billingtracking/BillingInputs;->getQuantity()I

    move-result v5

    invoke-virtual {p0}, Lcom/nativex/common/billingtracking/BillingInputs;->getProductTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/nativex/common/billingtracking/BillingCallback;->trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)V

    .line 259
    return-void
.end method

.method public static trackInAppPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "storeProductId"    # Ljava/lang/String;
    .param p1, "storeTransactionId"    # Ljava/lang/String;
    .param p2, "storeTransactionTimeUTC"    # Ljava/lang/String;
    .param p3, "costPerItem"    # F
    .param p4, "currencyLocale"    # Ljava/lang/String;
    .param p5, "quantity"    # I
    .param p6, "productTitle"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-static/range {p0 .. p6}, Lcom/nativex/common/billingtracking/BillingCallback;->trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)V

    .line 288
    return-void
.end method

.method public static final update(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 563
    new-instance v0, Lcom/nativex/monetization/MonetizationManager$3;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/MonetizationManager$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 571
    return-void
.end method

.method public static upgradeMyApp(Landroid/app/Activity;Lcom/nativex/monetization/DialogInputs;Lcom/nativex/monetization/listeners/ClickListenerBase;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "inputs"    # Lcom/nativex/monetization/DialogInputs;
    .param p2, "clickListener"    # Lcom/nativex/monetization/listeners/ClickListenerBase;

    .prologue
    .line 246
    invoke-static {}, Lcom/nativex/monetization/MonetizationManager;->checkInstance()V

    .line 247
    sget-object v0, Lcom/nativex/monetization/MonetizationManager;->instance:Lcom/nativex/monetization/MonetizationManager;

    iget-object v0, v0, Lcom/nativex/monetization/MonetizationManager;->monetizationSDK:Lcom/nativex/monetization/MonetizationSDK;

    invoke-virtual {v0, p0, p1, p2}, Lcom/nativex/monetization/MonetizationSDK;->upgradeMyApp(Landroid/app/Activity;Lcom/nativex/monetization/DialogInputs;Lcom/nativex/monetization/listeners/ClickListenerBase;)V

    .line 248
    return-void
.end method
