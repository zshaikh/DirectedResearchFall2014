.class public Lcom/jesusla/chartboost/ChartboostLib;
.super Lcom/jesusla/ane/Context;
.source "ChartboostLib.java"


# instance fields
.field private chartboost:Lcom/chartboost/sdk/ChartBoost;

.field private final delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

.field private mayDisplayInterstitial:Z

.field private mayDisplayLoadingViewForMoreApps:Z

.field private mayDisplayMoreApps:Z

.field private mayRequestInterstitial:Z

.field private mayRequestInterstitialsInFirstSession:Z

.field private mayRequestMoreApps:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 18
    invoke-direct {p0}, Lcom/jesusla/ane/Context;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayRequestInterstitial:Z

    .line 12
    iput-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayInterstitial:Z

    .line 13
    iput-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayRequestMoreApps:Z

    .line 14
    iput-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayLoadingViewForMoreApps:Z

    .line 15
    iput-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayMoreApps:Z

    .line 16
    iput-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayRequestInterstitialsInFirstSession:Z

    .line 158
    new-instance v0, Lcom/jesusla/chartboost/ChartboostLib$1;

    invoke-direct {v0, p0}, Lcom/jesusla/chartboost/ChartboostLib$1;-><init>(Lcom/jesusla/chartboost/ChartboostLib;)V

    iput-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    .line 19
    const-string v0, "init"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 20
    const-string v0, "timeout"

    const-string v1, "getTimeout"

    invoke-virtual {p0, v0, v1}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "setTimeout"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 22
    const-string v0, "startSession"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 23
    const-string v0, "cacheInterstitial"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 24
    const-string v0, "showInterstitial"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 25
    const-string v0, "hasCachedInterstitial"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 26
    const-string v0, "cacheMoreApps"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 27
    const-string v0, "showMoreApps"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 28
    const-string v0, "mayRequestInterstitial"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 29
    const-string v0, "mayDisplayInterstitial"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 30
    const-string v0, "mayRequestMoreApps"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 31
    const-string v0, "mayDisplayLoadingViewForMoreApps"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 32
    const-string v0, "mayDisplayMoreApps"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 33
    const-string v0, "mayRequestInterstitialsInFirstSession"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 34
    const-string v0, "setMayRequestInterstitial"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 35
    const-string v0, "setMayDisplayInterstitial"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 36
    const-string v0, "setMayRequestMoreApps"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 37
    const-string v0, "setMayDisplayLoadingViewForMoreApps"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 38
    const-string v0, "setMayDisplayMoreApps"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 39
    const-string v0, "setMayRequestInterstitialsInFirstSession"

    invoke-virtual {p0, v0}, Lcom/jesusla/chartboost/ChartboostLib;->registerFunction(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/jesusla/chartboost/ChartboostLib;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jesusla/chartboost/ChartboostLib;

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayInterstitial:Z

    return v0
.end method

.method static synthetic access$100(Lcom/jesusla/chartboost/ChartboostLib;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jesusla/chartboost/ChartboostLib;

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayLoadingViewForMoreApps:Z

    return v0
.end method

.method static synthetic access$200(Lcom/jesusla/chartboost/ChartboostLib;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jesusla/chartboost/ChartboostLib;

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayMoreApps:Z

    return v0
.end method

.method static synthetic access$300(Lcom/jesusla/chartboost/ChartboostLib;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jesusla/chartboost/ChartboostLib;

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayRequestInterstitial:Z

    return v0
.end method

.method static synthetic access$400(Lcom/jesusla/chartboost/ChartboostLib;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jesusla/chartboost/ChartboostLib;

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayRequestMoreApps:Z

    return v0
.end method


# virtual methods
.method public cacheInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p1, :cond_2

    .line 73
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartBoost;->hasCachedInterstitial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartBoost;->cacheInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->hasCachedInterstitial()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->cacheInterstitial()V

    goto :goto_0
.end method

.method public cacheMoreApps()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->hasCachedMoreApps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->cacheMoreApps()V

    goto :goto_0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getTimeoutConnect()I

    move-result v0

    return v0
.end method

.method public hasCachedInterstitial(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartBoost;->hasCachedInterstitial(Ljava/lang/String;)Z

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->hasCachedInterstitial()Z

    move-result v0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartBoost;->setAppId(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/ChartBoost;->setAppSignature(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method protected initContext()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/jesusla/chartboost/ChartboostLib;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    iput-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    .line 45
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    iget-object v1, p0, Lcom/jesusla/chartboost/ChartboostLib;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->setDelegate(Lcom/chartboost/sdk/ChartBoostDelegate;)V

    .line 46
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    const-string v1, "CBAppID"

    invoke-virtual {p0, v1}, Lcom/jesusla/chartboost/ChartboostLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->setAppId(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    const-string v1, "CBSignature"

    invoke-virtual {p0, v1}, Lcom/jesusla/chartboost/ChartboostLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->setAppSignature(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getAppSignature()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->install()V

    .line 50
    :cond_0
    return-void
.end method

.method public mayDisplayInterstitial()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayInterstitial:Z

    return v0
.end method

.method public mayDisplayLoadingViewForMoreApps()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayLoadingViewForMoreApps:Z

    return v0
.end method

.method public mayDisplayMoreApps()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayMoreApps:Z

    return v0
.end method

.method public mayRequestInterstitial()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayRequestInterstitial:Z

    return v0
.end method

.method public mayRequestInterstitialsInFirstSession()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayRequestInterstitialsInFirstSession:Z

    return v0
.end method

.method public mayRequestMoreApps()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayRequestMoreApps:Z

    return v0
.end method

.method public setMayDisplayInterstitial(Z)V
    .locals 0
    .param p1, "mayDisplayInterstitial"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayInterstitial:Z

    .line 120
    return-void
.end method

.method public setMayDisplayLoadingViewForMoreApps(Z)V
    .locals 0
    .param p1, "mayDisplayLoadingViewForMoreApps"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayLoadingViewForMoreApps:Z

    .line 136
    return-void
.end method

.method public setMayDisplayMoreApps(Z)V
    .locals 0
    .param p1, "mayDisplayMoreApps"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayDisplayMoreApps:Z

    .line 144
    return-void
.end method

.method public setMayRequestInterstitial(Z)V
    .locals 0
    .param p1, "mayRequestInterstitial"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayRequestInterstitial:Z

    .line 112
    return-void
.end method

.method public setMayRequestInterstitialsInFirstSession(Z)V
    .locals 0
    .param p1, "mayRequestInterstitialsInFirstSession"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayRequestInterstitialsInFirstSession:Z

    .line 152
    return-void
.end method

.method public setMayRequestMoreApps(Z)V
    .locals 0
    .param p1, "mayRequestMoreApps"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/jesusla/chartboost/ChartboostLib;->mayRequestMoreApps:Z

    .line 128
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartBoost;->setConnectionTimeout(I)V

    .line 63
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartBoost;->setReadTimeout(I)V

    .line 64
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartBoost;->showInterstitial(Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->showInterstitial()V

    goto :goto_0
.end method

.method public showMoreApps()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->showMoreApps()V

    .line 108
    return-void
.end method

.method public startSession()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jesusla/chartboost/ChartboostLib;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->install()V

    .line 68
    return-void
.end method
