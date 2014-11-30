.class public abstract Lcom/dolphin/browser/core/BrowserSettings;
.super Ljava/util/Observable;
.source "BrowserSettings.java"

# interfaces
.implements Lcom/dolphin/browser/core/IBrowserSettings;
.implements Lcom/dolphin/browser/util/bv;


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/io/File;


# instance fields
.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/dolphin/browser/core/IWebSettings;",
            "Lcom/dolphin/browser/core/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/dolphin/browser/core/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "TunnyBrowser"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/core/BrowserSettings;->c:Ljava/io/File;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/core/BrowserSettings;->d:Ljava/util/HashMap;

    .line 63
    new-instance v0, Lcom/dolphin/browser/core/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/core/c;-><init>(Lcom/dolphin/browser/core/BrowserSettings;Lcom/dolphin/browser/core/IWebSettings;)V

    iput-object v0, p0, Lcom/dolphin/browser/core/BrowserSettings;->e:Lcom/dolphin/browser/core/c;

    .line 99
    invoke-static {p0}, Lcom/dolphin/browser/util/bu;->a(Lcom/dolphin/browser/util/bv;)V

    .line 100
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 70
    :goto_0
    return v0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/dolphin/browser/core/BrowserSettings;
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/dolphin/browser/core/BrowserSettings;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 77
    :try_start_0
    const-string v0, "mobi.mgeek.TunnyBrowser.BrowserSettings"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/BrowserSettings;->a:Ljava/lang/Class;

    .line 78
    sget-object v1, Lcom/dolphin/browser/core/BrowserSettings;->a:Ljava/lang/Class;

    const-string v2, "getInstance"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/BrowserSettings;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :cond_0
    :try_start_1
    sget-object v1, Lcom/dolphin/browser/core/BrowserSettings;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/BrowserSettings;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :catch_1
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 88
    :catch_2
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :catch_3
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 92
    :catch_4
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/core/IWebSettings;)Lcom/dolphin/browser/core/c;
    .locals 2

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/core/BrowserSettings;->e:Lcom/dolphin/browser/core/c;

    .line 163
    :goto_0
    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/BrowserSettings;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/c;

    .line 157
    if-eqz v0, :cond_1

    .line 158
    invoke-super {p0, v0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 160
    :cond_1
    new-instance v0, Lcom/dolphin/browser/core/c;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/core/c;-><init>(Lcom/dolphin/browser/core/BrowserSettings;Lcom/dolphin/browser/core/IWebSettings;)V

    .line 161
    iget-object v1, p0, Lcom/dolphin/browser/core/BrowserSettings;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-super {p0, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    goto :goto_0
.end method

.method public synthetic addObserver(Lcom/dolphin/browser/core/IWebSettings;)Ljava/util/Observer;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/BrowserSettings;->a(Lcom/dolphin/browser/core/IWebSettings;)Lcom/dolphin/browser/core/c;

    move-result-object v0

    return-object v0
.end method

.method public applyFullscreenSetting(Landroid/view/Window;)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public autoSendCrashReport()Z
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/dolphin/browser/core/BrowserSettings;->setChanged()V

    .line 227
    invoke-virtual {p0}, Lcom/dolphin/browser/core/BrowserSettings;->notifyObservers()V

    .line 228
    return-void
.end method

.method protected b(Lcom/dolphin/browser/core/IWebSettings;)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public deleteObserver(Lcom/dolphin/browser/core/IWebSettings;)V
    .locals 2

    .prologue
    .line 174
    if-nez p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/core/BrowserSettings;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/c;

    .line 178
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/dolphin/browser/core/BrowserSettings;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-super {p0, v0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public getAdBlockEnabled()Z
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public getAdBlockOption()I
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 633
    const/4 v0, -0x1

    return v0
.end method

.method public final getChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    invoke-static {}, Lcom/dolphin/browser/util/ao;->a()Lcom/dolphin/browser/util/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/ao;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataDir()Ljava/io/File;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 265
    sget-object v0, Lcom/dolphin/browser/core/BrowserSettings;->c:Ljava/io/File;

    return-object v0
.end method

.method public getDownloadDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableLongPressMenu()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public getHomePage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageCompressionLevel()I
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    return v0
.end method

.method public getKeepStatusBar()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxFakeAddonCount()I
    .locals 1

    .prologue
    .line 394
    const v0, 0x7fffffff

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefetchStrategy()I
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method public getPreloadStrategy()I
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x1

    return v0
.end method

.method public getPushNotificationServerBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSearchEngine()Lcom/dolphin/browser/search/g;
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStateFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabStateFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabUndoHistoryLimit()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public getThumbnailDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVerticalSearchEngine()Lcom/dolphin/browser/search/g;
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVolumeButtonAction()I
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    const-string v0, ""

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public imageCompressionServerLocale()I
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public isDNSPrefetchEnabled()Z
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x1

    return v0
.end method

.method public isEnableLocation()Z
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableSearchSuggestion()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableSmartSpeedDial()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public isExpandedMessageServiceEnabled()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public isExpandedSpeedDialEnabled()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public isInPerformanceTestMode()Z
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x0

    return v0
.end method

.method public isInStressTestMode()Z
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public isKeepScreenOn()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadImagesEnabled()Z
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public isMasterKeyEnabled()Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public isMobileView()Z
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public isNormalDataTrackEnabled()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public isPreconnectEnabled()Z
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x1

    return v0
.end method

.method public isPrivateBrowsing()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public isPushNotificationEnabled()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public isRememberPasswords()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public isServerCertificateRevocationCheckEnabled()Z
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public isShowSecurityWarnings()Z
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public isTabUndoEnabled()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public isWeiboFollowUsShow()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/v/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public r()V
    .locals 0

    .prologue
    .line 590
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    const-string v0, ""

    return-object v0
.end method

.method public setAdBlockEnabled(Z)V
    .locals 0

    .prologue
    .line 620
    return-void
.end method

.method public setAdBlockOption(I)V
    .locals 0

    .prologue
    .line 630
    return-void
.end method

.method public setCacheMode(I)V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method public setDNSPrefetchEnabled(Z)V
    .locals 0

    .prologue
    .line 539
    return-void
.end method

.method public setEnableLocationEnabled(Z)V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public setEnableVideoCache(Z)V
    .locals 0

    .prologue
    .line 605
    return-void
.end method

.method public setImageCompressionLevel(I)V
    .locals 0

    .prologue
    .line 559
    return-void
.end method

.method public setKeepScreenOn(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public setKeepStatusBar(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public setLoadImagesEnabled(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public setMasterKeyEnabled(Z)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public setOrientation(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method public setPreconnectEnabled(Z)V
    .locals 0

    .prologue
    .line 549
    return-void
.end method

.method public setPrefetchStrategy(I)V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method public setPreloadStrategy(I)V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public setPrivateBrowsing(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public setRememberPasswordsEnabled(Z)V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public setServerCertificateRevocationCheckEnabled(Z)V
    .locals 0

    .prologue
    .line 646
    return-void
.end method

.method public setShowSecurityWarningsEnabled(Z)V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public setShowZoomButton(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public setVolumeButtonAction(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public setWeiboFollowed(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public showZoomButton()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public updateActivityOrientation(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public updateWindowBrightness(Landroid/view/Window;)V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public useCustomTextSelection()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method
