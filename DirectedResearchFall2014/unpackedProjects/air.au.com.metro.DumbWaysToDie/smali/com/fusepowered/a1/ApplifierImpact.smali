.class public Lcom/fusepowered/a1/ApplifierImpact;
.super Ljava/lang/Object;
.source "ApplifierImpact.java"

# interfaces
.implements Lcom/fusepowered/a1/cache/IApplifierImpactCacheListener;
.implements Lcom/fusepowered/a1/webapp/IApplifierImpactWebDataListener;
.implements Lcom/fusepowered/a1/webapp/IApplifierImpactWebBrigeListener;
.implements Lcom/fusepowered/a1/view/IApplifierImpactMainViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;,
        Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactPlayVideoRunner;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction:[I = null

.field public static final APPLIFIER_IMPACT_OPTION_GAMERSID_KEY:Ljava/lang/String; = "sid"

.field public static final APPLIFIER_IMPACT_OPTION_MUTE_VIDEO_SOUNDS:Ljava/lang/String; = "muteVideoSounds"

.field public static final APPLIFIER_IMPACT_OPTION_NOOFFERSCREEN_KEY:Ljava/lang/String; = "noOfferScreen"

.field public static final APPLIFIER_IMPACT_OPTION_OPENANIMATED_KEY:Ljava/lang/String; = "openAnimated"

.field public static final APPLIFIER_IMPACT_OPTION_VIDEO_USES_DEVICE_ORIENTATION:Ljava/lang/String; = "useDeviceOrientationForVideo"

.field public static final APPLIFIER_IMPACT_REWARDITEM_NAME_KEY:Ljava/lang/String; = "name"

.field public static final APPLIFIER_IMPACT_REWARDITEM_PICTURE_KEY:Ljava/lang/String; = "picture"

.field public static cachemanager:Lcom/fusepowered/a1/cache/ApplifierImpactCacheManager;

.field public static instance:Lcom/fusepowered/a1/ApplifierImpact;

.field public static mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

.field public static webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;


# instance fields
.field private _alertDialog:Landroid/app/AlertDialog;

.field private _impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

.field private _impactReadySent:Z

.field private _initialized:Z

.field private _openRequestFromDeveloper:Z

.field private _pauseScreenTimer:Ljava/util/TimerTask;

.field private _pauseTimer:Ljava/util/Timer;

.field private _showingImpact:Z

.field private _webAppLoaded:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction()[I
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->values()[Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->BackButtonPressed:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-virtual {v1}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->RequestRetryVideoPlay:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-virtual {v1}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoEnd:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-virtual {v1}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoSkipped:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-virtual {v1}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoStart:Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-virtual {v1}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/fusepowered/a1/ApplifierImpact;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/fusepowered/a1/ApplifierImpact;->instance:Lcom/fusepowered/a1/ApplifierImpact;

    .line 54
    sput-object v0, Lcom/fusepowered/a1/ApplifierImpact;->cachemanager:Lcom/fusepowered/a1/cache/ApplifierImpactCacheManager;

    .line 55
    sput-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    .line 56
    sput-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "gameId"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_initialized:Z

    .line 60
    iput-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_showingImpact:Z

    .line 61
    iput-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactReadySent:Z

    .line 62
    iput-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_webAppLoaded:Z

    .line 63
    iput-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_openRequestFromDeveloper:Z

    .line 64
    iput-object v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    .line 66
    iput-object v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseScreenTimer:Ljava/util/TimerTask;

    .line 67
    iput-object v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    .line 70
    iput-object v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    .line 74
    invoke-direct {p0, p1, p2, v1}, Lcom/fusepowered/a1/ApplifierImpact;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/a1/IApplifierImpactListener;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/a1/IApplifierImpactListener;)V
    .locals 2
    .parameter "activity"
    .parameter "gameId"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_initialized:Z

    .line 60
    iput-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_showingImpact:Z

    .line 61
    iput-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactReadySent:Z

    .line 62
    iput-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_webAppLoaded:Z

    .line 63
    iput-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_openRequestFromDeveloper:Z

    .line 64
    iput-object v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    .line 66
    iput-object v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseScreenTimer:Ljava/util/TimerTask;

    .line 67
    iput-object v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    .line 70
    iput-object v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/fusepowered/a1/ApplifierImpact;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/a1/IApplifierImpactListener;)V

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/a1/ApplifierImpact;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_showingImpact:Z

    return-void
.end method

.method static synthetic access$1(Lcom/fusepowered/a1/ApplifierImpact;)Lcom/fusepowered/a1/IApplifierImpactListener;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fusepowered/a1/ApplifierImpact;)V
    .locals 0
    .parameter

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->createPauseScreenTimer()V

    return-void
.end method

.method static synthetic access$4(Lcom/fusepowered/a1/ApplifierImpact;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fusepowered/a1/ApplifierImpact;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactReadySent:Z

    return-void
.end method

.method static synthetic access$6(Lcom/fusepowered/a1/ApplifierImpact;)V
    .locals 0
    .parameter

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->close()V

    return-void
.end method

.method static synthetic access$7(Lcom/fusepowered/a1/ApplifierImpact;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->cancelPauseScreenTimer()V

    return-void
.end method

.method private cancelPauseScreenTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 718
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseScreenTimer:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseScreenTimer:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 724
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 727
    :cond_1
    iput-object v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseScreenTimer:Ljava/util/TimerTask;

    .line 728
    iput-object v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    .line 729
    return-void
.end method

.method private close()V
    .locals 2

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->cancelPauseScreenTimer()V

    .line 601
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 602
    new-instance v0, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;-><init>(Lcom/fusepowered/a1/ApplifierImpact;Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;)V

    .line 603
    .local v0, closeRunner:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 605
    .end local v0           #closeRunner:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactCloseRunner;
    :cond_0
    return-void
.end method

.method private createPauseScreenTimer()V
    .locals 6

    .prologue
    .line 732
    new-instance v0, Lcom/fusepowered/a1/ApplifierImpact$4;

    invoke-direct {v0, p0}, Lcom/fusepowered/a1/ApplifierImpact$4;-><init>(Lcom/fusepowered/a1/ApplifierImpact;)V

    iput-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseScreenTimer:Ljava/util/TimerTask;

    .line 746
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    .line 747
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_pauseScreenTimer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 748
    return-void
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "109"

    return-object v0
.end method

.method private init(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/a1/IApplifierImpactListener;)V
    .locals 4
    .parameter "activity"
    .parameter "gameId"
    .parameter "listener"

    .prologue
    .line 564
    iget-boolean v2, p0, Lcom/fusepowered/a1/ApplifierImpact;->_initialized:Z

    if-eqz v2, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 567
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "gameId is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 570
    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 571
    .local v1, gameIdInteger:I
    if-gtz v1, :cond_3

    .line 572
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "gameId is invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    .end local v1           #gameIdInteger:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 575
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "gameId does not parse as an integer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 579
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #gameIdInteger:I
    :cond_3
    sput-object p0, Lcom/fusepowered/a1/ApplifierImpact;->instance:Lcom/fusepowered/a1/ApplifierImpact;

    .line 580
    invoke-virtual {p0, p3}, Lcom/fusepowered/a1/ApplifierImpact;->setImpactListener(Lcom/fusepowered/a1/IApplifierImpactListener;)V

    .line 582
    sput-object p2, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_GAME_ID:Ljava/lang/String;

    .line 583
    sput-object p1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Landroid/app/Activity;

    .line 584
    sput-object p1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Is debuggable="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fusepowered/a1/ApplifierImpactUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    new-instance v2, Lcom/fusepowered/a1/cache/ApplifierImpactCacheManager;

    invoke-direct {v2}, Lcom/fusepowered/a1/cache/ApplifierImpactCacheManager;-><init>()V

    sput-object v2, Lcom/fusepowered/a1/ApplifierImpact;->cachemanager:Lcom/fusepowered/a1/cache/ApplifierImpactCacheManager;

    .line 590
    sget-object v2, Lcom/fusepowered/a1/ApplifierImpact;->cachemanager:Lcom/fusepowered/a1/cache/ApplifierImpactCacheManager;

    invoke-virtual {v2, p0}, Lcom/fusepowered/a1/cache/ApplifierImpactCacheManager;->setDownloadListener(Lcom/fusepowered/a1/cache/IApplifierImpactCacheListener;)V

    .line 591
    new-instance v2, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-direct {v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;-><init>()V

    sput-object v2, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    .line 592
    sget-object v2, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v2, p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->setWebDataListener(Lcom/fusepowered/a1/webapp/IApplifierImpactWebDataListener;)V

    .line 594
    sget-object v2, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->initCampaigns()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fusepowered/a1/ApplifierImpact;->_initialized:Z

    goto :goto_0
.end method

.method private initCache()V
    .locals 2

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_initialized:Z

    if-eqz v0, :cond_0

    .line 646
    const-string v0, "Init cache"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->cachemanager:Lcom/fusepowered/a1/cache/ApplifierImpactCacheManager;

    sget-object v1, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/cache/ApplifierImpactCacheManager;->updateCache(Ljava/util/ArrayList;)V

    .line 650
    :cond_0
    return-void
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private open(Ljava/lang/String;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const-string v6, "noOfferScreen"

    .line 608
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 609
    .local v1, dataOk:Ljava/lang/Boolean;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 612
    .local v0, data:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "open"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 613
    const-string v3, "itemKey"

    sget-object v4, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v4}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 614
    const-string v3, "developerOptions"

    invoke-static {}, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->getDeveloperOptionsAsJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "open() dataOk: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 622
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "open() opening with view:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 625
    sget-object v3, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    if-eqz v3, :cond_1

    .line 626
    sget-object v3, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    invoke-virtual {v3, p1, v0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->openImpact(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 628
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 629
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v4, "noOfferScreen"

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 630
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v4, "noOfferScreen"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->playVideo()V

    .line 633
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    if-eqz v3, :cond_1

    .line 634
    iget-object v3, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    invoke-interface {v3}, Lcom/fusepowered/a1/IApplifierImpactListener;->onImpactOpen()V

    .line 637
    :cond_1
    return-void

    .line 616
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 617
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method private openPlayStoreAsIntent(Ljava/lang/String;)V
    .locals 6
    .parameter "playStoreId"

    .prologue
    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening playstore activity with storeId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 542
    :try_start_0
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "market://details?id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 545
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Couldn\'t start PlayStore intent!"

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private openPlayStoreInBrowser(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open PlayStore activity, opening in browser with url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 553
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 555
    :try_start_0
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 557
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 558
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Couldn\'t start browser intent!"

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private playVideo()V
    .locals 2

    .prologue
    .line 670
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/a1/ApplifierImpact;->playVideo(J)V

    .line 671
    return-void
.end method

.method private playVideo(J)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 674
    const-string v2, "Running threaded"

    invoke-static {v2, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 676
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 677
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 678
    .local v0, delayTimer:Ljava/util/Timer;
    new-instance v2, Lcom/fusepowered/a1/ApplifierImpact$3;

    invoke-direct {v2, p0}, Lcom/fusepowered/a1/ApplifierImpact$3;-><init>(Lcom/fusepowered/a1/ApplifierImpact;)V

    invoke-virtual {v0, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 693
    .end local v0           #delayTimer:Ljava/util/Timer;
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    new-instance v1, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactPlayVideoRunner;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactPlayVideoRunner;-><init>(Lcom/fusepowered/a1/ApplifierImpact;Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactPlayVideoRunner;)V

    .line 690
    .local v1, playVideoRunner:Lcom/fusepowered/a1/ApplifierImpact$ApplifierImpactPlayVideoRunner;
    sget-object v2, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 691
    sget-object v2, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private sendImpactReadyEvent()V
    .locals 2

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactReadySent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    if-eqz v0, :cond_0

    .line 654
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/a1/ApplifierImpact$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/a1/ApplifierImpact$2;-><init>(Lcom/fusepowered/a1/ApplifierImpact;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 663
    :cond_0
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1
    .parameter "debugModeEnabled"

    .prologue
    .line 93
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEBUG_MODE:Ljava/lang/Boolean;

    .line 94
    return-void
.end method

.method public static setTestDeveloperId(Ljava/lang/String;)V
    .locals 0
    .parameter "testDeveloperId"

    .prologue
    .line 101
    sput-object p0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 1
    .parameter "testModeEnabled"

    .prologue
    .line 97
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TESTMODE_ENABLED:Ljava/lang/Boolean;

    .line 98
    return-void
.end method

.method public static setTestOptionsId(Ljava/lang/String;)V
    .locals 0
    .parameter "testOptionsId"

    .prologue
    .line 105
    sput-object p0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    .line 106
    return-void
.end method

.method private setup()V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->initCache()V

    .line 641
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->setupViews()V

    .line 642
    return-void
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 666
    new-instance v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/fusepowered/a1/view/ApplifierImpactMainView;-><init>(Landroid/content/Context;Lcom/fusepowered/a1/view/IApplifierImpactMainViewListener;)V

    sput-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    .line 667
    return-void
.end method

.method private startImpactFullscreenActivity()V
    .locals 6

    .prologue
    const-string v5, "openAnimated"

    .line 696
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    const-class v4, Lcom/fusepowered/a1/A1InterstitialActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 697
    .local v2, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x1001

    .line 699
    .local v1, flags:I
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 700
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v4, "openAnimated"

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 701
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v4, "openAnimated"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 702
    const/high16 v1, 0x1000

    .line 704
    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 707
    :try_start_0
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 715
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 710
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find activity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 712
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 713
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Weird error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public canShowCampaigns()Z
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->isWebAppLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_webAppLoaded:Z

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 196
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canShowImpact()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_showingImpact:Z

    if-nez v0, :cond_0

    .line 207
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->isWebAppLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_webAppLoaded:Z

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 206
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 120
    if-nez p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    if-eqz p1, :cond_0

    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    sput-object p1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    .line 126
    if-eqz p1, :cond_4

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.fusepowered.a1.A1InterstitialActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, view:Ljava/lang/String;
    sget-object v1, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v1, v1, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    if-eqz v1, :cond_3

    .line 134
    sget-object v1, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v1, v1, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getWebViewCurrentView()Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-boolean v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_openRequestFromDeveloper:Z

    if-eqz v1, :cond_2

    .line 137
    const-string v0, "start"

    .line 138
    const-string v1, "changeActivity: This open request is from the developer, setting start view"

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    :cond_2
    if-eqz v0, :cond_3

    .line 142
    invoke-direct {p0, v0}, Lcom/fusepowered/a1/ApplifierImpact;->open(Ljava/lang/String;)V

    .line 145
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_openRequestFromDeveloper:Z

    goto :goto_0

    .line 148
    .end local v0           #view:Ljava/lang/String;
    :cond_4
    sput-object p1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Landroid/app/Activity;

    goto :goto_0
.end method

.method public getCurrentRewardItemKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultRewardItemKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getDefaultRewardItem()Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getDefaultRewardItem()Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRewardItemDetailsWithKey(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "rewardItemKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    sget-object v1, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v1, p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getRewardItemByKey(Ljava/lang/String;)Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    move-result-object v0

    .line 296
    .local v0, rewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;->getDetails()Ljava/util/Map;

    move-result-object v1

    .line 303
    :goto_0
    return-object v1

    .line 300
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not fetch reward item: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRewardItemKeys()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    sget-object v3, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v3}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getRewardItems()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v3}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getRewardItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 247
    sget-object v3, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v3}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getRewardItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 248
    .local v2, rewardItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v1, rewardItemKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v3, v1

    .line 256
    .end local v1           #rewardItemKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #rewardItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;>;"
    :goto_1
    return-object v3

    .line 249
    .restart local v1       #rewardItemKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #rewardItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    .line 250
    .local v0, rewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    .end local v0           #rewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    .end local v1           #rewardItemKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #rewardItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hasMultipleRewardItems()Z
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getRewardItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getRewardItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideImpact()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_showingImpact:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->close()V

    .line 156
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAllCampaignsReady()V
    .locals 1

    .prologue
    .line 359
    const-string v0, "Listener got \"All campaigns ready.\""

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.method public onCampaignReady(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;)V
    .locals 2
    .parameter "campaignHandler"

    .prologue
    .line 349
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->getCampaign()Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    move-result-object v0

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got onCampaignReady: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaignHandler;->getCampaign()Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p0}, Lcom/fusepowered/a1/ApplifierImpact;->canShowCampaigns()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->sendImpactReadyEvent()V

    goto :goto_0
.end method

.method public onCampaignUpdateStarted()V
    .locals 1

    .prologue
    .line 344
    const-string v0, "Campaign updates started."

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method public onCloseImpactView(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/fusepowered/a1/ApplifierImpact;->hideImpact()Z

    .line 461
    return-void
.end method

.method public onMainViewAction(Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 311
    invoke-static {}, Lcom/fusepowered/a1/ApplifierImpact;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/a1/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 313
    :pswitch_0
    iget-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_showingImpact:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->close()V

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    invoke-interface {v0}, Lcom/fusepowered/a1/IApplifierImpactListener;->onVideoStarted()V

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->cancelPauseScreenTimer()V

    goto :goto_0

    .line 322
    :pswitch_2
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    sget-object v1, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->setCampaignStatus(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;)V

    .line 324
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    invoke-virtual {p0}, Lcom/fusepowered/a1/ApplifierImpact;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/a1/IApplifierImpactListener;->onVideoCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 328
    :pswitch_3
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    sget-object v1, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->setCampaignStatus(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;)V

    .line 330
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    invoke-virtual {p0}, Lcom/fusepowered/a1/ApplifierImpact;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/a1/IApplifierImpactListener;->onVideoCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 334
    :pswitch_4
    const-string v0, "Retrying video play, because something went wrong."

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    const-wide/16 v0, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/a1/ApplifierImpact;->playVideo(J)V

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onOpenPlayStore(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "data"

    .prologue
    const-string v7, "iTunesId"

    const-string v6, "clickUrl"

    const-string v5, "bypassAppSheet"

    .line 488
    const-string v4, "onOpenPlayStore"

    invoke-static {v4, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    if-eqz p1, :cond_3

    .line 492
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    const/4 v3, 0x0

    .line 495
    .local v3, playStoreId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 496
    .local v1, clickUrl:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 498
    .local v0, bypassAppSheet:Ljava/lang/Boolean;
    const-string v4, "iTunesId"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 500
    :try_start_0
    const-string v4, "iTunesId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 507
    :cond_0
    :goto_0
    const-string v4, "clickUrl"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 509
    :try_start_1
    const-string v4, "clickUrl"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 516
    :cond_1
    :goto_1
    const-string v4, "bypassAppSheet"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 518
    :try_start_2
    const-string v4, "bypassAppSheet"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 525
    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 526
    invoke-direct {p0, v3}, Lcom/fusepowered/a1/ApplifierImpact;->openPlayStoreAsIntent(Ljava/lang/String;)V

    .line 532
    .end local v0           #bypassAppSheet:Ljava/lang/Boolean;
    .end local v1           #clickUrl:Ljava/lang/String;
    .end local v3           #playStoreId:Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    .line 502
    .restart local v0       #bypassAppSheet:Ljava/lang/Boolean;
    .restart local v1       #clickUrl:Ljava/lang/String;
    .restart local v3       #playStoreId:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 503
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "Could not fetch playStoreId"

    invoke-static {v4, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 511
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 512
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "Could not fetch clickUrl"

    invoke-static {v4, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 520
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 521
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "Could not fetch bypassAppSheet"

    invoke-static {v4, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 528
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    if-eqz v1, :cond_3

    .line 529
    invoke-direct {p0, v1}, Lcom/fusepowered/a1/ApplifierImpact;->openPlayStoreInBrowser(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onPauseVideo(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 456
    return-void
.end method

.method public onPlayVideo(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "data"

    .prologue
    const-string v4, "campaignId"

    .line 417
    const-string v3, "onPlayVideo"

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    const-string v3, "campaignId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 419
    const/4 v0, 0x0

    .line 422
    .local v0, campaignId:Ljava/lang/String;
    :try_start_0
    const-string v3, "campaignId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 428
    :goto_0
    if-eqz v0, :cond_2

    .line 429
    sget-object v3, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v3, v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getCampaignById(Ljava/lang/String;)Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 430
    sget-object v3, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v3, v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getCampaignById(Ljava/lang/String;)Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    move-result-object v3

    sput-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    .line 433
    :cond_0
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    if-eqz v3, :cond_2

    .line 434
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v3}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 435
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v3}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 440
    .local v2, rewatch:Ljava/lang/Boolean;
    :try_start_1
    const-string v3, "rewatch"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 445
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPlayVideo: Selected campaign="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v4}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isViewed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v4}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v3}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 447
    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->playVideo()V

    .line 452
    .end local v0           #campaignId:Ljava/lang/String;
    .end local v2           #rewatch:Ljava/lang/Boolean;
    :cond_2
    return-void

    .line 424
    .restart local v0       #campaignId:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 425
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Could not get campaignId"

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 442
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #rewatch:Ljava/lang/Boolean;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public onWebAppInitComplete(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 465
    const-string v3, "WebApp init complete"

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    iput-boolean v4, p0, Lcom/fusepowered/a1/ApplifierImpact;->_webAppLoaded:Z

    .line 467
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 469
    .local v0, dataOk:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/fusepowered/a1/ApplifierImpact;->canShowCampaigns()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 473
    .local v2, setViewData:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "initComplete"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string v3, "itemKey"

    sget-object v4, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v4}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    sget-object v3, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v3, v3, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    const-string v4, "start"

    invoke-virtual {v3, v4, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 482
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->sendImpactReadyEvent()V

    .line 485
    .end local v2           #setViewData:Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 476
    .restart local v2       #setViewData:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 477
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public onWebDataCompleted()V
    .locals 8

    .prologue
    const-string v7, "sdkIsCurrent"

    const-string v6, "data"

    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, jsonData:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 368
    .local v0, dataFetchFailed:Z
    const/4 v3, 0x1

    .line 370
    .local v3, sdkIsCurrent:Z
    sget-object v4, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v4}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getData()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v4}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getData()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    :try_start_0
    sget-object v4, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v4}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getData()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 378
    :goto_0
    if-nez v0, :cond_0

    .line 379
    const-string v4, "sdkIsCurrent"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    :try_start_1
    const-string v4, "sdkIsCurrent"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 390
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    if-nez v3, :cond_1

    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-static {v4}, Lcom/fusepowered/a1/ApplifierImpactUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 391
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/fusepowered/a1/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    .line 392
    iget-object v4, p0, Lcom/fusepowered/a1/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    const-string v5, "Applifier Impact"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v4, p0, Lcom/fusepowered/a1/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    const-string v5, "You are not running the latest version of Applifier Impact android. Please update your version (this dialog won\'t appear in release builds)."

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v4, p0, Lcom/fusepowered/a1/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    const-string v5, "OK"

    new-instance v6, Lcom/fusepowered/a1/ApplifierImpact$1;

    invoke-direct {v6, p0}, Lcom/fusepowered/a1/ApplifierImpact$1;-><init>(Lcom/fusepowered/a1/ApplifierImpact;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 401
    iget-object v4, p0, Lcom/fusepowered/a1/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 404
    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->setup()V

    .line 405
    return-void

    .line 374
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 375
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x1

    goto :goto_0

    .line 383
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 384
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onWebDataFailed()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    invoke-interface {v0}, Lcom/fusepowered/a1/IApplifierImpactListener;->onCampaignsFetchFailed()V

    .line 411
    :cond_0
    return-void
.end method

.method public setDefaultRewardItemAsRewardItem()V
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/fusepowered/a1/ApplifierImpact;->canShowImpact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getDefaultRewardItem()Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    sget-object v1, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getDefaultRewardItem()Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->setCurrentRewardItem(Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;)V

    .line 292
    :cond_0
    return-void
.end method

.method public setImpactListener(Lcom/fusepowered/a1/IApplifierImpactListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_impactListener:Lcom/fusepowered/a1/IApplifierImpactListener;

    .line 117
    return-void
.end method

.method public setRewardItemKey(Ljava/lang/String;)Z
    .locals 2
    .parameter "rewardItemKey"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/fusepowered/a1/ApplifierImpact;->canShowImpact()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    sget-object v1, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v1, p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getRewardItemByKey(Ljava/lang/String;)Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    move-result-object v0

    .line 277
    .local v0, rewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    if-eqz v0, :cond_0

    .line 278
    sget-object v1, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v1, v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->setCurrentRewardItem(Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;)V

    .line 279
    const/4 v1, 0x1

    .line 283
    .end local v0           #rewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showImpact()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 185
    invoke-virtual {p0}, Lcom/fusepowered/a1/ApplifierImpact;->canShowImpact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iput-boolean v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_openRequestFromDeveloper:Z

    .line 187
    iput-boolean v1, p0, Lcom/fusepowered/a1/ApplifierImpact;->_showingImpact:Z

    .line 188
    invoke-direct {p0}, Lcom/fusepowered/a1/ApplifierImpact;->startImpactFullscreenActivity()V

    .line 189
    iget-boolean v0, p0, Lcom/fusepowered/a1/ApplifierImpact;->_showingImpact:Z

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showImpact(Ljava/util/Map;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, options:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    const-string v5, "noOfferScreen"

    const-string v4, "sid"

    .line 163
    invoke-virtual {p0}, Lcom/fusepowered/a1/ApplifierImpact;->canShowImpact()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    sput-object p1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    .line 166
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 167
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v2, "noOfferScreen"

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v2, "noOfferScreen"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 169
    sget-object v1, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    .line 170
    .local v0, selectedCampaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    sput-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    .line 173
    .end local v0           #selectedCampaign:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    :cond_0
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v2, "sid"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v2, "sid"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v3, "sid"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->GAMER_SID:Ljava/lang/String;

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/a1/ApplifierImpact;->showImpact()Z

    move-result v1

    .line 181
    :goto_0
    return v1

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public stopAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    const-string v0, "stopAll()"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->videoplayerview:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->clearVideoPlayer()V

    .line 220
    :cond_0
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    if-eqz v0, :cond_1

    .line 221
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->mainview:Lcom/fusepowered/a1/view/ApplifierImpactMainView;

    iget-object v0, v0, Lcom/fusepowered/a1/view/ApplifierImpactMainView;->webview:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->clearWebView()V

    .line 223
    :cond_1
    invoke-static {}, Lcom/fusepowered/a1/cache/ApplifierImpactDownloader;->stopAllDownloads()V

    .line 224
    invoke-static {}, Lcom/fusepowered/a1/cache/ApplifierImpactDownloader;->clearData()V

    .line 225
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->cachemanager:Lcom/fusepowered/a1/cache/ApplifierImpactCacheManager;

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/cache/ApplifierImpactCacheManager;->setDownloadListener(Lcom/fusepowered/a1/cache/IApplifierImpactCacheListener;)V

    .line 226
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->cachemanager:Lcom/fusepowered/a1/cache/ApplifierImpactCacheManager;

    invoke-virtual {v0}, Lcom/fusepowered/a1/cache/ApplifierImpactCacheManager;->clearData()V

    .line 227
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->stopAllRequests()V

    .line 228
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->setWebDataListener(Lcom/fusepowered/a1/webapp/IApplifierImpactWebDataListener;)V

    .line 229
    sget-object v0, Lcom/fusepowered/a1/ApplifierImpact;->webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-virtual {v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->clearData()V

    .line 230
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Landroid/app/Activity;

    .line 231
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    .line 232
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    .line 233
    return-void
.end method
