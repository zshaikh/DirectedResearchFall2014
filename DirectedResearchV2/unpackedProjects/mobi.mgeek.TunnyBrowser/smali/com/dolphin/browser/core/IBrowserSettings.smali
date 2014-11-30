.class public interface abstract Lcom/dolphin/browser/core/IBrowserSettings;
.super Ljava/lang/Object;
.source "IBrowserSettings.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# static fields
.field public static final CACHE_MODE_DEFAULT:I = -0x1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final CACHE_MODE_OFFLINE:I = 0x3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final USERAGENT_ANDROID:I = 0x0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final USERAGENT_CUSTOM:I = 0x64
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final USERAGENT_DESKTOP:I = 0x1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final USERAGENT_IPAD:I = 0x3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final USERAGENT_IPHONE:I = 0x2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field


# virtual methods
.method public abstract addObserver(Lcom/dolphin/browser/core/IWebSettings;)Ljava/util/Observer;
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract addObserver(Ljava/util/Observer;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract applyFullscreenSetting(Landroid/view/Window;)V
.end method

.method public abstract autoSendCrashReport()Z
.end method

.method public abstract deleteObserver(Lcom/dolphin/browser/core/IWebSettings;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract deleteObserver(Ljava/util/Observer;)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract getAdBlockEnabled()Z
.end method

.method public abstract getAdBlockOption()I
.end method

.method public abstract getAddonBlackListServerUrl()Ljava/lang/String;
.end method

.method public abstract getCacheMode()I
.end method

.method public abstract getChannelName()Ljava/lang/String;
.end method

.method public abstract getDataDir()Ljava/io/File;
.end method

.method public abstract getDownloadDir()Ljava/io/File;
.end method

.method public abstract getEnableLongPressMenu()Z
.end method

.method public abstract getHomePage()Ljava/lang/String;
.end method

.method public abstract getImageCompressionLevel()I
.end method

.method public abstract getInstallTime()J
.end method

.method public abstract getKeepStatusBar()Z
.end method

.method public abstract getLastPruneImageCount()I
.end method

.method public abstract getMaxFakeAddonCount()I
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getPrefetchStrategy()I
.end method

.method public abstract getPreloadStrategy()I
.end method

.method public abstract getPromotedAddonHost()Ljava/lang/String;
.end method

.method public abstract getPushNotificationServerBaseUrl()Ljava/lang/String;
.end method

.method public abstract getSearchEngine()Lcom/dolphin/browser/search/g;
.end method

.method public abstract getStateFile()Ljava/io/File;
.end method

.method public abstract getTabStateFile()Ljava/io/File;
.end method

.method public abstract getTabUndoHistoryLimit()I
.end method

.method public abstract getThumbnailDir()Ljava/io/File;
.end method

.method public abstract getUserAgent()I
.end method

.method public abstract getVerticalSearchEngine()Lcom/dolphin/browser/search/g;
.end method

.method public abstract getVolumeButtonAction()I
.end method

.method public abstract imageCompressionServerLocale()I
.end method

.method public abstract isDNSPrefetchEnabled()Z
.end method

.method public abstract isEnableLocation()Z
.end method

.method public abstract isEnableSearchSuggestion()Z
.end method

.method public abstract isEnableSmartSpeedDial()Z
.end method

.method public abstract isExpandedMessageServiceEnabled()Z
.end method

.method public abstract isExpandedSpeedDialEnabled()Z
.end method

.method public abstract isInPerformanceTestMode()Z
.end method

.method public abstract isInStressTestMode()Z
.end method

.method public abstract isKeepScreenOn()Z
.end method

.method public abstract isLoadImagesEnabled()Z
.end method

.method public abstract isMasterKeyEnabled()Z
.end method

.method public abstract isMobileView()Z
.end method

.method public abstract isNormalDataTrackEnabled()Z
.end method

.method public abstract isPreconnectEnabled()Z
.end method

.method public abstract isPrivateBrowsing()Z
.end method

.method public abstract isPushNotificationEnabled()Z
.end method

.method public abstract isRememberPasswords()Z
.end method

.method public abstract isServerCertificateRevocationCheckEnabled()Z
.end method

.method public abstract isShowSecurityWarnings()Z
.end method

.method public abstract isSupportCustomAddressBar()Z
.end method

.method public abstract isTabUndoEnabled()Z
.end method

.method public abstract isWeiboFollowUsShow()Z
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract setAdBlockEnabled(Z)V
.end method

.method public abstract setAdBlockOption(I)V
.end method

.method public abstract setCacheMode(I)V
.end method

.method public abstract setDNSPrefetchEnabled(Z)V
.end method

.method public abstract setEnableLocationEnabled(Z)V
.end method

.method public abstract setEnableVideoCache(Z)V
.end method

.method public abstract setImageCompressionLevel(I)V
.end method

.method public abstract setKeepScreenOn(Landroid/content/Context;Z)V
.end method

.method public abstract setKeepStatusBar(Landroid/content/Context;Z)V
.end method

.method public abstract setLastPruneImageCount(I)V
.end method

.method public abstract setLoadImagesEnabled(Landroid/content/Context;Z)V
.end method

.method public abstract setMasterKeyEnabled(Z)V
.end method

.method public abstract setOrientation(Landroid/content/Context;I)V
.end method

.method public abstract setPreconnectEnabled(Z)V
.end method

.method public abstract setPrefetchStrategy(I)V
.end method

.method public abstract setPreloadStrategy(I)V
.end method

.method public abstract setPrivateBrowsing(Landroid/content/Context;Z)V
.end method

.method public abstract setRememberPasswordsEnabled(Z)V
.end method

.method public abstract setServerCertificateRevocationCheckEnabled(Z)V
.end method

.method public abstract setShowSecurityWarningsEnabled(Z)V
.end method

.method public abstract setShowZoomButton(Landroid/content/Context;Z)V
.end method

.method public abstract setVolumeButtonAction(Landroid/content/Context;I)V
.end method

.method public abstract setWeiboFollowed(Landroid/content/Context;Z)V
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation
.end method

.method public abstract shouldUpdateAddonBlackList()Z
.end method

.method public abstract showZoomButton()Z
.end method

.method public abstract updateActivityOrientation(Landroid/app/Activity;)V
.end method

.method public abstract updateWindowBrightness(Landroid/view/Window;)V
.end method

.method public abstract useCustomTextSelection()Z
.end method
