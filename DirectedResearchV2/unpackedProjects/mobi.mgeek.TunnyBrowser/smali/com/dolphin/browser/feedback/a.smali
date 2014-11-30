.class public Lcom/dolphin/browser/feedback/a;
.super Ljava/lang/Object;
.source "BugReportHelper.java"


# static fields
.field private static a:Lcom/dolphin/browser/feedback/a;


# instance fields
.field private b:Lcom/dolphin/browser/feedback/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static a()Lcom/dolphin/browser/feedback/a;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/dolphin/browser/feedback/a;->a:Lcom/dolphin/browser/feedback/a;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/dolphin/browser/feedback/a;

    invoke-direct {v0}, Lcom/dolphin/browser/feedback/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/feedback/a;->a:Lcom/dolphin/browser/feedback/a;

    .line 57
    :cond_0
    sget-object v0, Lcom/dolphin/browser/feedback/a;->a:Lcom/dolphin/browser/feedback/a;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/feedback/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dolphin/browser/feedback/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ZZZZZ)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZ)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    if-eqz p2, :cond_1

    .line 89
    const-string v1, "screenshot"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    if-eqz p3, :cond_2

    .line 92
    const-string v1, "behavior"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_2
    if-eqz p4, :cond_3

    .line 95
    const-string v1, "setting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_3
    if-eqz p5, :cond_4

    .line 98
    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_4
    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ab()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "capture.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/feedback/a;)Ljava/util/Properties;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dolphin/browser/feedback/a;->c()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/util/Properties;
    .locals 4

    .prologue
    .line 109
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 110
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    .line 112
    :try_start_0
    const-string v0, "getDownloadDir"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getDownloadDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "getEnableLongPressMenu"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getEnableLongPressMenu()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "useCustomTextSelection"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->useCustomTextSelection()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "getThumbnailDir"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getThumbnailDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v3, "getHomePage"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "isPrivateBrowsing"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "isPushNotificationEnabled"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPushNotificationEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "isPrivateBrowsing"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "isPushNotificationEnabled"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPushNotificationEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "isNormalDataTrackEnabled"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isNormalDataTrackEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "getDataDir"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getDataDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v3, "getChannelName"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getChannelName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "isExpandedSpeedDialEnabled"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isExpandedSpeedDialEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "isEnableSmartSpeedDial"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isEnableSmartSpeedDial()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "isExpandedMessageServiceEnabled"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isExpandedMessageServiceEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "getTabUndoHistoryLimit"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getTabUndoHistoryLimit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "isTabUndoEnabled"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isTabUndoEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "showZoomButton"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->showZoomButton()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "isWeiboFollowUsShow"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isWeiboFollowUsShow()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "getSearchEngine"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/dolphin/browser/search/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "getVerticalSearchEngine"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getVerticalSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/dolphin/browser/search/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "isEnableSearchSuggestion"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isEnableSearchSuggestion()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "getPushNotificationServerBaseUrl"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getPushNotificationServerBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "isKeepScreenOn"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isKeepScreenOn()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "isLoadImagesEnabled"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isLoadImagesEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "getOrientation"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getOrientation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "getVolumeButtonAction"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getVolumeButtonAction()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "isMobileView"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isMobileView()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "getMaxFakeAddonCount"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getMaxFakeAddonCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "isEnableLocation"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isEnableLocation()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "isRememberPasswords"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isRememberPasswords()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "isShowSecurityWarnings"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isShowSecurityWarnings()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "getKeepStatusBar"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getKeepStatusBar()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "isNightMode"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "isBelugaTrackEnabled"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "isDolphinTrackEnabled"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->e()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "isTrackCrashAfterConfirm"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->f()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "isOnlyAutoSyncInWifi"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->g()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "getNightModePackageName"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v0, "autoSendCrashReport"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->autoSendCrashReport()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "isAppFirstRun"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->i()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v0, "getLastVersionCode"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v0, "isTitleBarFixed"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->k()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "acceptCookie"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->l()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "getPreloadStrategy"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getPreloadStrategy()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "getPrefetchStrategy"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getPrefetchStrategy()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "isDNSPrefetchEnabled"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isDNSPrefetchEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "isPreconnectEnabled"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPreconnectEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v0, "getImageCompressionLevel"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getImageCompressionLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v0, "imageCompressionServerLocale"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->imageCompressionServerLocale()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v0, "isEnableSearchEngineSuggestion"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->m()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v3, "getPreloadABTestInfo"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-virtual {v1, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v3, "getPreloadTrace"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "null"

    :goto_3
    invoke-virtual {v1, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v0, "onlySaveTitleAndUrlForCrashRestore"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->q()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v0, "isInStressTestMode"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isInStressTestMode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v0, "isInPerformanceTestMode"

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isInPerformanceTestMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :goto_4
    return-object v1

    .line 120
    :cond_0
    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 135
    :cond_1
    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getChannelName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 215
    :cond_2
    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 219
    :cond_3
    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_4
.end method


# virtual methods
.method public a(Landroid/content/Context;ZZZZZLcom/dolphin/browser/feedback/c;)V
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/feedback/a;->a(ZZZZZ)Ljava/util/HashSet;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/dolphin/browser/feedback/a;->b:Lcom/dolphin/browser/feedback/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/feedback/a;->b:Lcom/dolphin/browser/feedback/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/feedback/b;->e()Lcom/dolphin/browser/util/p;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    if-eq v1, v2, :cond_0

    .line 73
    iget-object v1, p0, Lcom/dolphin/browser/feedback/a;->b:Lcom/dolphin/browser/feedback/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/feedback/b;->b(Z)Z

    .line 76
    :cond_0
    new-instance v1, Lcom/dolphin/browser/feedback/b;

    invoke-direct {v1, p0, v0, p7}, Lcom/dolphin/browser/feedback/b;-><init>(Lcom/dolphin/browser/feedback/a;Ljava/util/HashSet;Lcom/dolphin/browser/feedback/c;)V

    iput-object v1, p0, Lcom/dolphin/browser/feedback/a;->b:Lcom/dolphin/browser/feedback/b;

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/feedback/a;->b:Lcom/dolphin/browser/feedback/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 79
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 398
    :cond_0
    return-void
.end method
