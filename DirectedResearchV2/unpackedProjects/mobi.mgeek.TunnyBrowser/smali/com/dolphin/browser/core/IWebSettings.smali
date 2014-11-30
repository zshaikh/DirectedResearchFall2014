.class public interface abstract Lcom/dolphin/browser/core/IWebSettings;
.super Ljava/lang/Object;
.source "IWebSettings.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# static fields
.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0

.field public static final LOAD_NO_CACHE:I = 0x2


# virtual methods
.method public abstract canQuickSelection()Z
.end method

.method public abstract getAdBlockEnabled()Z
.end method

.method public abstract getAdBlockOption()I
.end method

.method public abstract getAllowFileAccess()Z
.end method

.method public abstract getAutoAlignEnabled()Z
.end method

.method public abstract getBlockNetworkImage()Z
.end method

.method public abstract getBlockNetworkLoads()Z
.end method

.method public abstract getBuiltInZoomControls()Z
.end method

.method public abstract getCacheMode()I
.end method

.method public abstract getCursiveFontFamily()Ljava/lang/String;
.end method

.method public abstract getCustomErrorPageEnabled()Z
.end method

.method public abstract getDatabaseEnabled()Z
.end method

.method public abstract getDatabasePath()Ljava/lang/String;
.end method

.method public abstract getDefaultFixedFontSize()I
.end method

.method public abstract getDefaultFontSize()I
.end method

.method public abstract getDefaultTextEncodingName()Ljava/lang/String;
.end method

.method public abstract getDefaultZoom()Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;
.end method

.method public abstract getDomStorageEnabled()Z
.end method

.method public abstract getEnableVideoCache()Z
.end method

.method public abstract getEnableVideoPlayer()Z
.end method

.method public abstract getExpansionSettings()Lorg/json/JSONObject;
.end method

.method public abstract getFantasyFontFamily()Ljava/lang/String;
.end method

.method public abstract getFixedFontFamily()Ljava/lang/String;
.end method

.method public abstract getJavaScriptCanOpenWindowsAutomatically()Z
.end method

.method public abstract getJavaScriptEnabled()Z
.end method

.method public abstract getLayoutAlgorithm()Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;
.end method

.method public abstract getLightTouchEnabled()Z
.end method

.method public abstract getLoadWithOverviewMode()Z
.end method

.method public abstract getLoadsImagesAutomatically()Z
.end method

.method public abstract getMinimumFontSize()I
.end method

.method public abstract getMinimumLogicalFontSize()I
.end method

.method public abstract getNavDump()Z
.end method

.method public abstract getPluginState()Lcom/dolphin/browser/core/IWebSettings$PluginState;
.end method

.method public abstract getPluginsPath()Ljava/lang/String;
.end method

.method public abstract getSansSerifFontFamily()Ljava/lang/String;
.end method

.method public abstract getSaveFormData()Z
.end method

.method public abstract getSavePassword()Z
.end method

.method public abstract getSerifFontFamily()Ljava/lang/String;
.end method

.method public abstract getStandardFontFamily()Ljava/lang/String;
.end method

.method public abstract getTextSize()Lcom/dolphin/browser/core/IWebSettings$TextSize;
.end method

.method public abstract getUseWideViewPort()Z
.end method

.method public abstract getUserAgentString()Ljava/lang/String;
.end method

.method public abstract getWebSettings()Ljava/lang/Object;
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isPrivateBrowsing()Z
.end method

.method public abstract isServerCertificateRevocationCheckEnabled()Z
.end method

.method public abstract setAdBlockEnabled(Z)V
.end method

.method public abstract setAdBlockOption(I)V
.end method

.method public abstract setAllowContentAccess(Z)V
.end method

.method public abstract setAllowFileAccess(Z)V
.end method

.method public abstract setAppCacheEnabled(Z)V
.end method

.method public abstract setAppCacheMaxSize(J)V
.end method

.method public abstract setAppCachePath(Ljava/lang/String;)V
.end method

.method public abstract setAutoAlignEnabled(Z)V
.end method

.method public abstract setBlockNetworkImage(Z)V
.end method

.method public abstract setBlockNetworkLoads(Z)V
.end method

.method public abstract setBrowserModeInNight(Z)V
.end method

.method public abstract setBuiltInZoomControls(Z)V
.end method

.method public abstract setCacheMode(I)V
.end method

.method public abstract setCursiveFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setCustomErrorPageEnabled(Z)V
.end method

.method public abstract setDatabaseEnabled(Z)V
.end method

.method public abstract setDatabasePath(Ljava/lang/String;)V
.end method

.method public abstract setDefaultFixedFontSize(I)V
.end method

.method public abstract setDefaultFontSize(I)V
.end method

.method public abstract setDefaultTextEncodingName(Ljava/lang/String;)V
.end method

.method public abstract setDefaultZoom(Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;)V
.end method

.method public abstract setDomStorageEnabled(Z)V
.end method

.method public abstract setEnableSmoothTransition(Z)V
.end method

.method public abstract setEnableVideoCache(Z)V
.end method

.method public abstract setEnableVideoPlayer(Z)V
.end method

.method public abstract setFantasyFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setFixedFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setGeolocationDatabasePath(Ljava/lang/String;)V
.end method

.method public abstract setGeolocationEnabled(Z)V
.end method

.method public abstract setJavaScriptCanOpenWindowsAutomatically(Z)V
.end method

.method public abstract setJavaScriptEnabled(Z)V
.end method

.method public abstract setJavascriptCanAccessCrossOrigin(Z)V
.end method

.method public abstract setLayoutAlgorithm(Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;)V
.end method

.method public abstract setLightTouchEnabled(Z)V
.end method

.method public abstract setLoadWithOverviewMode(Z)V
.end method

.method public abstract setLoadsImagesAutomatically(Z)V
.end method

.method public abstract setMinimumFontSize(I)V
.end method

.method public abstract setMinimumLogicalFontSize(I)V
.end method

.method public abstract setNativeCrashDumpFile(Ljava/lang/String;)V
.end method

.method public abstract setNavDump(Z)V
.end method

.method public abstract setNeedInitialFocus(Z)V
.end method

.method public abstract setPageCacheCapacity(I)V
.end method

.method public abstract setPluginState(Lcom/dolphin/browser/core/IWebSettings$PluginState;)V
.end method

.method public abstract setPluginsPath(Ljava/lang/String;)V
.end method

.method public abstract setPrivateBrowsing(Z)V
.end method

.method public abstract setRenderPriority(Lcom/dolphin/browser/core/IWebSettings$RenderPriority;)V
.end method

.method public abstract setSansSerifFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setSaveFormData(Z)V
.end method

.method public abstract setSavePassword(Z)V
.end method

.method public abstract setSerifFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setServerCertificateRevocationCheckEnabled(Z)V
.end method

.method public abstract setShrinksStandaloneImagesToFit(Z)V
.end method

.method public abstract setSingleExpansionSetting(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setStandardFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setSupportMultipleWindows(Z)V
.end method

.method public abstract setSupportZoom(Z)V
.end method

.method public abstract setTextSize(Lcom/dolphin/browser/core/IWebSettings$TextSize;)V
.end method

.method public abstract setUseWideViewPort(Z)V
.end method

.method public abstract setUserAgentString(Ljava/lang/String;)V
.end method

.method public abstract setWorkersEnabled(Z)V
.end method

.method public abstract supportMultipleWindows()Z
.end method

.method public abstract supportZoom()Z
.end method
