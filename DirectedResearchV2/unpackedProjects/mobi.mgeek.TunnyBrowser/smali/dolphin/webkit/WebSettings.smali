.class public abstract Ldolphin/webkit/WebSettings;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0

.field public static final LOAD_NO_CACHE:I = 0x2


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method


# virtual methods
.method public enableSmoothTransition()Z
    .locals 1

    .prologue
    .line 333
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getAdBlockEnabled()Z
    .locals 1

    .prologue
    .line 887
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAdBlockOption()I
    .locals 1

    .prologue
    .line 895
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 298
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 280
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public abstract getAllowFileAccessFromFileURLs()Z
.end method

.method public abstract getAllowUniversalAccessFromFileURLs()Z
.end method

.method public getAutoAlignEnabled()Z
    .locals 1

    .prologue
    .line 1434
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getAutoPagerEnabled()Z
    .locals 1

    .prologue
    .line 855
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 819
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 1009
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBrowserModeInNight()Z
    .locals 1

    .prologue
    .line 1405
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 238
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public getCacheLogDumpFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1467
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 1362
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCustomErrorPageEnabled()Z
    .locals 1

    .prologue
    .line 1448
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getDNSPrefetchEnabled()Z
    .locals 1

    .prologue
    .line 899
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 1192
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1183
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 764
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .locals 1

    .prologue
    .line 744
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1306
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Ldolphin/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 450
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getDelaySubFrameLoading()Z
    .locals 1

    .prologue
    .line 871
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 261
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 1174
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEnableDoubleTapInMobileSite()Z
    .locals 1

    .prologue
    .line 1427
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getEnableResourceOptimization()Z
    .locals 1

    .prologue
    .line 863
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEnableServerTranscodeForWeakNetwork()Z
    .locals 1

    .prologue
    .line 973
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEnableServerTranscodeTimeoutInMS()I
    .locals 1

    .prologue
    .line 977
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEnableSmartReadingMode()Z
    .locals 1

    .prologue
    .line 847
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEnableVideoCache()Z
    .locals 1

    .prologue
    .line 1413
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public getEnableVideoPlayer()Z
    .locals 1

    .prologue
    .line 1420
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public getExpansionSettings()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1486
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getForceChangeTextSize()Z
    .locals 1

    .prologue
    .line 1482
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getImageCompressionQuality()I
    .locals 1

    .prologue
    .line 951
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImageCompressionServerURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 935
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 1287
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 1211
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKernelTranscodingEnabled()Z
    .locals 1

    .prologue
    .line 833
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Ldolphin/webkit/WebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .prologue
    .line 464
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 312
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 790
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .locals 1

    .prologue
    .line 704
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 724
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNativeStackDumpFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1459
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public getNavDump()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getPluginState()Ldolphin/webkit/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 1252
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1243
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1266
    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReadableFontSize()I
    .locals 1

    .prologue
    .line 911
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReadableLineHeight()I
    .locals 1

    .prologue
    .line 919
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 372
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 386
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getShowProgressWhileBackOrForward()Z
    .locals 1

    .prologue
    .line 1441
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextSize()Ldolphin/webkit/WebSettings$TextSize;
    .locals 1

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextZoom()I
    .locals 1

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTranscodeServerURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 965
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 487
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 357
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 528
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1321
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWebpSupported()Z
    .locals 1

    .prologue
    .line 879
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1393
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setAdBlockEnabled(Z)V
    .locals 1

    .prologue
    .line 883
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAdBlockOption(I)V
    .locals 1

    .prologue
    .line 891
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public setAllowFileAccess(Z)V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public abstract setAllowFileAccessFromFileURLs(Z)V
.end method

.method public abstract setAllowUniversalAccessFromFileURLs(Z)V
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 1125
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .locals 1

    .prologue
    .line 1147
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1138
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAutoAlignEnabled(Z)V
    .locals 1

    .prologue
    .line 1437
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setAutoPagerEnabled(Z)V
    .locals 1

    .prologue
    .line 851
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 1

    .prologue
    .line 809
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1

    .prologue
    .line 999
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBrowserModeInNight(Z)V
    .locals 1

    .prologue
    .line 1409
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public setCacheLogDumpFile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1471
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public setCacheMode(I)V
    .locals 1

    .prologue
    .line 1354
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCustomErrorPageEnabled(Z)V
    .locals 1

    .prologue
    .line 1451
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setDNSPrefetchEnabled(Z)V
    .locals 1

    .prologue
    .line 903
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .locals 1

    .prologue
    .line 1156
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1104
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .locals 1

    .prologue
    .line 754
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .locals 1

    .prologue
    .line 734
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1296
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Ldolphin/webkit/WebSettings$ZoomDensity;)V
    .locals 1

    .prologue
    .line 440
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setDelaySubFrameLoading(Z)V
    .locals 1

    .prologue
    .line 867
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDisplayZoomControls(Z)V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .locals 1

    .prologue
    .line 1165
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnableDoubleTapInMobileSite(Z)V
    .locals 1

    .prologue
    .line 1430
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setEnableResourceOptimization(Z)V
    .locals 1

    .prologue
    .line 859
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnableServerTranscodeForWeakNetwork(Z)V
    .locals 1

    .prologue
    .line 969
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnableSmartReadingMode(Z)V
    .locals 1

    .prologue
    .line 840
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 1

    .prologue
    .line 323
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public setEnableVideoCache(Z)V
    .locals 1

    .prologue
    .line 1416
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public setEnableVideoPlayer(Z)V
    .locals 1

    .prologue
    .line 1423
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 674
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 599
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setForceChangeTextSize(Z)V
    .locals 1

    .prologue
    .line 1479
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1116
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .locals 1

    .prologue
    .line 1201
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setImageCompressionQuality(I)V
    .locals 1

    .prologue
    .line 942
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setImageCompressionServerURI(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 926
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1

    .prologue
    .line 1276
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .locals 1

    .prologue
    .line 1019
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setJavascriptCanAccessCrossOrigin(Z)V
    .locals 1

    .prologue
    .line 1475
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setKernelTranscodingEnabled(Z)V
    .locals 1

    .prologue
    .line 826
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Ldolphin/webkit/WebSettings$LayoutAlgorithm;)V
    .locals 1

    .prologue
    .line 559
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLightTouchEnabled(Z)V
    .locals 1

    .prologue
    .line 457
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 1

    .prologue
    .line 305
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .locals 1

    .prologue
    .line 779
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .locals 1

    .prologue
    .line 694
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .locals 1

    .prologue
    .line 714
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNativeCrashDumpFile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1455
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public setNativeStackDumpFile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1463
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public setNavDump(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1

    .prologue
    .line 1331
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setPageCacheCapacity(I)V
    .locals 1

    .prologue
    .line 1386
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginState(Ldolphin/webkit/WebSettings$PluginState;)V
    .locals 1

    .prologue
    .line 1078
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1066
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1092
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setPrivateBrowsingEnabled(Z)V
    .locals 1

    .prologue
    .line 1401
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setReadableFontSize(I)V
    .locals 1

    .prologue
    .line 907
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReadableLineHeight(I)V
    .locals 1

    .prologue
    .line 915
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRenderPriority(Ldolphin/webkit/WebSettings$RenderPriority;)V
    .locals 1

    .prologue
    .line 1341
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 1

    .prologue
    .line 364
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public setSavePassword(Z)V
    .locals 1

    .prologue
    .line 379
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 636
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShowProgressWhileBackOrForward(Z)V
    .locals 1

    .prologue
    .line 1444
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .locals 1

    .prologue
    .line 1382
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public setSingleExpansionSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1490
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .locals 1

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setTextSize(Ldolphin/webkit/WebSettings$TextSize;)V
    .locals 1

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextZoom(I)V
    .locals 1

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTranscodeServerURI(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 958
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 476
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .locals 1

    .prologue
    .line 519
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1314
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebpSupported(Z)V
    .locals 1

    .prologue
    .line 875
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorkersEnabled(Z)V
    .locals 1

    .prologue
    .line 1372
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 548
    monitor-enter p0

    :try_start_0
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 209
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method
