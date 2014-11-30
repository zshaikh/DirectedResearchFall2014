.class Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;
.super Ljava/lang/Object;
.source "WebSettingsV14.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebSettings;


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# instance fields
.field private a:Ldolphin/webkit/WebSettings;

.field private b:Z


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebSettings;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ldolphin/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ldolphin/webkit/WebSettings;->setShowProgressWhileBackOrForward(Z)V

    .line 48
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Ldolphin/net/resource/ResourceHandlers;->init(Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a()Ldolphin/webkit/WebSettings;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    return-object v0
.end method

.method public canQuickSelection()Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public getAdBlockEnabled()Z
    .locals 1

    .prologue
    .line 553
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getAdBlockEnabled()Z

    move-result v0

    .line 556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdBlockOption()I
    .locals 1

    .prologue
    .line 586
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getAdBlockOption()I

    move-result v0

    .line 589
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v0

    return v0
.end method

.method public getAutoAlignEnabled()Z
    .locals 1

    .prologue
    .line 516
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getAutoAlignEnabled()Z

    move-result v0

    .line 519
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getBlockNetworkImage()Z

    move-result v0

    return v0
.end method

.method public getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getBlockNetworkLoads()Z

    move-result v0

    return v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getDisplayZoomControls()Z

    move-result v0

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getCacheMode()I

    move-result v0

    return v0
.end method

.method public getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomErrorPageEnabled()Z
    .locals 2

    .prologue
    .line 601
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->o()I

    move-result v0

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getCustomErrorPageEnabled()Z

    move-result v0

    .line 604
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getDatabaseEnabled()Z

    move-result v0

    return v0
.end method

.method public getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getDefaultFixedFontSize()I

    move-result v0

    return v0
.end method

.method public getDefaultFontSize()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getDefaultFontSize()I

    move-result v0

    return v0
.end method

.method public getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultZoom()Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getDefaultZoom()Ldolphin/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    move-result-object v0

    return-object v0
.end method

.method public getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getDomStorageEnabled()Z

    move-result v0

    return v0
.end method

.method public getEnableVideoCache()Z
    .locals 1

    .prologue
    .line 536
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getEnableVideoCache()Z

    move-result v0

    .line 540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnableVideoPlayer()Z
    .locals 1

    .prologue
    .line 562
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getEnableVideoPlayer()Z

    move-result v0

    .line 566
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpansionSettings()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 623
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getExpansionSettings()Lorg/json/JSONObject;

    move-result-object v0

    .line 626
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getFantasyFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getFixedFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    return v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public getLayoutAlgorithm()Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getLayoutAlgorithm()Ldolphin/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getLightTouchEnabled()Z

    move-result v0

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    return v0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    return v0
.end method

.method public getMinimumFontSize()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getMinimumFontSize()I

    move-result v0

    return v0
.end method

.method public getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getMinimumLogicalFontSize()I

    move-result v0

    return v0
.end method

.method public getNavDump()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getNavDump()Z

    move-result v0

    return v0
.end method

.method public getPluginState()Lcom/dolphin/browser/core/IWebSettings$PluginState;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getPluginState()Ldolphin/webkit/WebSettings$PluginState;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/IWebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$PluginState;

    move-result-object v0

    return-object v0
.end method

.method public getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getPluginsPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getSansSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getSaveFormData()Z

    move-result v0

    return v0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getSavePassword()Z

    move-result v0

    return v0
.end method

.method public getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getStandardFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()Lcom/dolphin/browser/core/IWebSettings$TextSize;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getTextSize()Ldolphin/webkit/WebSettings$TextSize;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/IWebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$TextSize;

    move-result-object v0

    return-object v0
.end method

.method public getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getWebSettings()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a()Ldolphin/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public isPrivateBrowsing()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public isServerCertificateRevocationCheckEnabled()Z
    .locals 1

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->b:Z

    return v0
.end method

.method public setAdBlockEnabled(Z)V
    .locals 1

    .prologue
    .line 579
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setAdBlockEnabled(Z)V

    .line 582
    :cond_0
    return-void
.end method

.method public setAdBlockOption(I)V
    .locals 1

    .prologue
    .line 594
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setAdBlockOption(I)V

    .line 597
    :cond_0
    return-void
.end method

.method public setAllowContentAccess(Z)V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 492
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 88
    return-void
.end method

.method public setAppCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 361
    return-void
.end method

.method public setAppCacheMaxSize(J)V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 371
    return-void
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public setAutoAlignEnabled(Z)V
    .locals 1

    .prologue
    .line 524
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setAutoAlignEnabled(Z)V

    .line 526
    :cond_0
    return-void
.end method

.method public setBlockNetworkImage(Z)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 314
    return-void
.end method

.method public setBlockNetworkLoads(Z)V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 324
    return-void
.end method

.method public setBrowserModeInNight(Z)V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setBrowserModeInNight(Z)V

    .line 512
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 78
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setCacheMode(I)V

    .line 467
    return-void
.end method

.method public setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public setCustomErrorPageEnabled(Z)V
    .locals 2

    .prologue
    .line 610
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->o()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 611
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setCustomErrorPageEnabled(Z)V

    .line 613
    :cond_0
    return-void
.end method

.method public setDatabaseEnabled(Z)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 376
    return-void
.end method

.method public setDatabasePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 289
    return-void
.end method

.method public setDefaultFontSize(I)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 279
    return-void
.end method

.method public setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public setDefaultZoom(Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;)V
    .locals 2

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Ldolphin/webkit/WebSettings$ZoomDensity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebSettings;->setDefaultZoom(Ldolphin/webkit/WebSettings$ZoomDensity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDomStorageEnabled(Z)V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 381
    return-void
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    .line 487
    return-void
.end method

.method public setEnableVideoCache(Z)V
    .locals 1

    .prologue
    .line 546
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setEnableVideoCache(Z)V

    .line 549
    :cond_0
    return-void
.end method

.method public setEnableVideoPlayer(Z)V
    .locals 1

    .prologue
    .line 572
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setEnableVideoPlayer(Z)V

    .line 575
    :cond_0
    return-void
.end method

.method public setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public setFixedFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public setGeolocationEnabled(Z)V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 406
    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 427
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 334
    return-void
.end method

.method public setJavascriptCanAccessCrossOrigin(Z)V
    .locals 2

    .prologue
    .line 617
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->o()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setJavascriptCanAccessCrossOrigin(Z)V

    .line 619
    :cond_0
    return-void
.end method

.method public setLayoutAlgorithm(Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/webkit/WebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Ldolphin/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebSettings;->setLayoutAlgorithm(Ldolphin/webkit/WebSettings$LayoutAlgorithm;)V

    .line 189
    return-void
.end method

.method public setLightTouchEnabled(Z)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 159
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 98
    return-void
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 304
    return-void
.end method

.method public setMinimumFontSize(I)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 259
    return-void
.end method

.method public setMinimumLogicalFontSize(I)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 269
    return-void
.end method

.method public setNativeCrashDumpFile(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 530
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->o()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setNativeCrashDumpFile(Ljava/lang/String;)V

    .line 532
    :cond_0
    return-void
.end method

.method public setNavDump(Z)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setNavDump(Z)V

    .line 54
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 457
    return-void
.end method

.method public setPageCacheCapacity(I)V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public setPluginState(Lcom/dolphin/browser/core/IWebSettings$PluginState;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/IWebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Ldolphin/webkit/WebSettings$PluginState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebSettings;->setPluginState(Ldolphin/webkit/WebSettings$PluginState;)V

    .line 339
    return-void
.end method

.method public setPluginsPath(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setPluginsPath(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public setPrivateBrowsing(Z)V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setPrivateBrowsingEnabled(Z)V

    .line 507
    return-void
.end method

.method public setRenderPriority(Lcom/dolphin/browser/core/IWebSettings$RenderPriority;)V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/webkit/WebSettings$RenderPriority;->valueOf(Ljava/lang/String;)Ldolphin/webkit/WebSettings$RenderPriority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebSettings;->setRenderPriority(Ldolphin/webkit/WebSettings$RenderPriority;)V

    .line 462
    return-void
.end method

.method public setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public setSaveFormData(Z)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setSaveFormData(Z)V

    .line 108
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/dolphin/browser/dolphinwebkit/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setSavePassword(Z)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebSettings;->setSavePassword(Z)V

    goto :goto_0
.end method

.method public setSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setServerCertificateRevocationCheckEnabled(Z)V
    .locals 0

    .prologue
    .line 644
    iput-boolean p1, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->b:Z

    .line 645
    return-void
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setShrinksStandaloneImagesToFit(Z)V

    .line 477
    return-void
.end method

.method public setSingleExpansionSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 632
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/WebSettings;->setSingleExpansionSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_0
    return-void
.end method

.method public setStandardFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 179
    return-void
.end method

.method public setSupportZoom(Z)V
    .locals 1

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setSupportZoom(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTextSize(Lcom/dolphin/browser/core/IWebSettings$TextSize;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/IWebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Ldolphin/webkit/WebSettings$TextSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebSettings;->setTextSize(Ldolphin/webkit/WebSettings$TextSize;)V

    .line 133
    return-void
.end method

.method public setUseWideViewPort(Z)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 169
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public setWorkersEnabled(Z)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettings;->setWorkersEnabled(Z)V

    .line 401
    return-void
.end method

.method public supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->supportMultipleWindows()Z

    move-result v0

    return v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebSettingsV14;->a:Ldolphin/webkit/WebSettings;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->supportZoom()Z

    move-result v0

    return v0
.end method
