.class public Lcom/fusepowered/fuseapi/FuseAPI;
.super Ljava/lang/Object;
.source "FuseAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;,
        Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;,
        Lcom/fusepowered/fuseapi/FuseAPI$PostTask;
    }
.end annotation


# static fields
.field public static FuseAPI:Lcom/fusepowered/fuseapi/FuseAPI; = null

.field private static final TAG:Ljava/lang/String; = "FuseAPI"

.field public static accountAlias:Ljava/lang/String;

.field public static adToDisplay:Lcom/fusepowered/util/Ad;

.field public static appName:Ljava/lang/String;

.field public static appNameDisplay:Ljava/lang/String;

.field public static appdata:Landroid/content/SharedPreferences;

.field private static builder:Landroid/app/AlertDialog$Builder;

.field public static checkingAd:Z

.field private static commonParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static context:Landroid/content/Context;

.field public static deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

.field private static displayNotifications:Z

.field private static displayingAd:Z

.field public static drawerIconID:I

.field public static forGCMEvents:Landroid/content/Intent;

.field public static fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

.field public static fuseCallback:Lcom/fusepowered/util/FuseCallback;

.field public static gameDataReqId:I

.field public static gameInfo:Lcom/fusepowered/util/GameInfo;

.field public static gcmContext:Landroid/content/Context;

.field public static iconID:I

.field public static id:I

.field private static impact:Lcom/fusepowered/a1/ApplifierImpact;

.field public static loadThread:Ljava/lang/Thread;

.field public static mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

.field private static mLandscapeInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

.field private static mPortraitInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

.field public static mainActivity:Landroid/app/Activity;

.field public static notificationID:Ljava/lang/String;

.field private static numPlays:I

.field private static optOut:Z

.field public static overrideSuspend:Z

.field public static packageName:Ljava/lang/String;

.field public static registered:Z

.field public static registrationID:Ljava/lang/String;

.field public static responseValues:Lcom/fusepowered/util/ResponseValues;

.field private static sDetector:Lcom/fusepowered/crashlog/CrashDetector;

.field public static showingApplifier:Z

.field public static showingFuseNotifications:Z

.field public static showingManditoryMessage:Z

.field public static showingMopubAd:Z

.field public static showingMoreGames:Z

.field private static suspended:Z

.field public static vungleInitialized:Z

.field public static waitForLoad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->registered:Z

    .line 135
    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->showingManditoryMessage:Z

    .line 136
    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->showingFuseNotifications:Z

    .line 137
    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->displayNotifications:Z

    .line 138
    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->showingMoreGames:Z

    .line 139
    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->overrideSuspend:Z

    .line 144
    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->waitForLoad:Z

    .line 145
    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->showingMopubAd:Z

    .line 146
    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->checkingAd:Z

    .line 147
    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->showingApplifier:Z

    .line 150
    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->vungleInitialized:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    sput-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    .line 170
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    .line 171
    new-instance v0, Lcom/fusepowered/util/DeviceInfoFactory;

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/util/DeviceInfoFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    .line 172
    new-instance v0, Lcom/fusepowered/util/ResponseValues;

    invoke-direct {v0}, Lcom/fusepowered/util/ResponseValues;-><init>()V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    .line 173
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    .line 174
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    sput-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    .line 179
    new-instance v0, Lcom/fusepowered/util/DeviceInfoFactory;

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/util/DeviceInfoFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    .line 180
    new-instance v0, Lcom/fusepowered/util/ResponseValues;

    invoke-direct {v0}, Lcom/fusepowered/util/ResponseValues;-><init>()V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    .line 181
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    .line 182
    return-void
.end method

.method public static acceptFriend(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4679
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4681
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4683
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4684
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4685
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4686
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4687
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4688
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_ACCEPT_FRIEND:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4690
    if-nez p1, :cond_0

    .line 4692
    new-instance p1, Lcom/fusepowered/util/FuseMessageCallback;

    .end local p1    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    invoke-direct {p1}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    .line 4695
    .restart local p1    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4696
    return-void
.end method

.method static synthetic access$000([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 0
    .param p0, "x0"    # [I
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/fusepowered/activities/FuseApiBrowser;
    .param p3, "x3"    # Lcom/fusepowered/util/FuseAdCallback;

    .prologue
    .line 98
    invoke-static {p0, p1, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->displayAdFromWaterfall([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    return-void
.end method

.method static synthetic access$200(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 98
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->notificationView(I)V

    return-void
.end method

.method static synthetic access$300(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 98
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->notificationClick(I)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->openWebPage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 98
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->showNextMessage(I)V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 98
    sput-boolean p0, Lcom/fusepowered/fuseapi/FuseAPI;->displayNotifications:Z

    return p0
.end method

.method public static adClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1520
    const-string v1, "FuseAPI"

    const-string v2, "Ad clicked, resetting displayingAd flag"

    invoke-static {v1, v2}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    sput-boolean v4, Lcom/fusepowered/fuseapi/FuseAPI;->displayingAd:Z

    .line 1523
    const-string v1, "SUSPEND"

    const-string v2, "Ad clicked!"

    invoke-static {v1, v2}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v1, :cond_0

    .line 1527
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1530
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    const-string v1, "ad_id"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getDisplayedAdId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    const-string v1, "shown_on_play"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->gamesPlayed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_FUSEAD_CLICK:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1544
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {v4}, Lcom/fusepowered/fuseapi/FuseAPI;->setFuseChildActivityOnDisplay(Z)V

    .line 1545
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->suspendSession()V

    .line 1546
    return-void
.end method

.method public static adDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1497
    const-string v0, "FuseAPI"

    const-string v1, "Ad dismissed, resetting displayingAd flag"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->displayingAd:Z

    .line 1503
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    if-eqz v0, :cond_0

    .line 1510
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    invoke-virtual {v0, v2}, Lcom/fusepowered/util/Ad;->setDisplayed(Z)V

    .line 1515
    :cond_0
    return-void
.end method

.method public static adDisplay(I)V
    .locals 4
    .param p0, "adId"    # I

    .prologue
    .line 1381
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fusepowered/util/Ad;->setDisplayed(Z)V

    .line 1384
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v1, :cond_0

    .line 1391
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1393
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1395
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    const-string v1, "ad_id"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    const-string v1, "shown_on_play"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->gamesPlayed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_FUSEAD_VIEW:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1413
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static addFriend(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4572
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4574
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4576
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4577
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4578
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4579
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4580
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4581
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_ADD_FRIEND:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4583
    if-nez p1, :cond_0

    .line 4585
    new-instance p1, Lcom/fusepowered/util/FuseMessageCallback;

    .end local p1    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    invoke-direct {p1}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    .line 4588
    .restart local p1    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4589
    return-void
.end method

.method private static buildDataPayloadJSON(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "objectMapKey"    # Ljava/lang/String;
    .param p1, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;

    .prologue
    .line 3183
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 3184
    .local v6, "paramJson":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3188
    .local v0, "dataPayload":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/fusepowered/util/GameKeyValuePairs;->getMapForKey(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 3190
    .local v5, "objectMapEntry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0    # "objectMapKey":Ljava/lang/String;
    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3192
    .local v4, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3194
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3196
    const-string v7, "k"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3197
    const-string v7, "v"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3198
    const-string v7, "b"

    const-string v8, "0"

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3199
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3211
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "objectMapEntry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 3213
    .local v1, "e":Lorg/json/JSONException;
    const-string v7, "FuseAPI"

    const-string v8, "buildDataPayloadJSON JSONException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3214
    const/4 v7, 0x0

    .line 3217
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v7

    .line 3209
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "objectMapEntry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    const-string v7, "data_payload"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v6

    .line 3217
    goto :goto_1
.end method

.method private static buildDataPayloadJSON(Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/util/GameValue;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 3143
    .local p0, "mapEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/util/GameValue;>;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 3144
    .local v5, "paramJson":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3148
    .local v0, "dataPayload":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0    # "mapEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/util/GameValue;>;>;"
    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3150
    .local v4, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/util/GameValue;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3152
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3154
    const-string v6, "k"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3155
    const-string v6, "v"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/util/GameValue;

    invoke-virtual {p0}, Lcom/fusepowered/util/GameValue;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3156
    const-string v6, "b"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/util/GameValue;

    invoke-virtual {p0}, Lcom/fusepowered/util/GameValue;->isBinary()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    :goto_1
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3157
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3169
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/util/GameValue;>;"
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 3171
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "FuseAPI"

    const-string v7, "buildDataPayloadJSON JSONException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3172
    const/4 v6, 0x0

    .line 3175
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return-object v6

    .line 3156
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/util/GameValue;>;"
    :cond_1
    :try_start_1
    const-string v7, "0"

    goto :goto_1

    .line 3167
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fusepowered/util/GameValue;>;"
    :cond_2
    const-string v6, "data_payload"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v5

    .line 3175
    goto :goto_2
.end method

.method public static checkAdAvailable(Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 14
    .param p0, "newAdCallback"    # Lcom/fusepowered/util/FuseAdCallback;

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "FuseAPI"

    .line 1613
    sget-boolean v7, Lcom/fusepowered/fuseapi/FuseAPI;->checkingAd:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/fusepowered/fuseapi/FuseAPI;->displayingAd:Z

    if-eqz v7, :cond_1

    .line 1742
    :cond_0
    :goto_0
    return-void

    .line 1620
    :cond_1
    sput-boolean v10, Lcom/fusepowered/fuseapi/FuseAPI;->checkingAd:Z

    .line 1622
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1625
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1627
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/fusepowered/util/FuseAdErrors;->FUSE_AD_NO_ERROR:Lcom/fusepowered/util/FuseAdErrors;

    invoke-virtual {v7}, Lcom/fusepowered/util/FuseAdErrors;->getErrorCode()I

    move-result v7

    move v3, v7

    .line 1629
    .local v3, "isConnectedRTN":I
    :goto_1
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-nez v7, :cond_3

    .line 1631
    const-string v7, "ADCHECK"

    const-string v8, "AD not available because response is null"

    invoke-static {v7, v8}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    sput-boolean v9, Lcom/fusepowered/fuseapi/FuseAPI;->checkingAd:Z

    .line 1633
    invoke-virtual {p0, v9, v3}, Lcom/fusepowered/util/FuseAdCallback;->adAvailabilityResponse(II)V

    goto :goto_0

    .line 1627
    .end local v3    # "isConnectedRTN":I
    :cond_2
    sget-object v7, Lcom/fusepowered/util/FuseAdErrors;->FUSE_AD_NOT_CONNECTED:Lcom/fusepowered/util/FuseAdErrors;

    invoke-virtual {v7}, Lcom/fusepowered/util/FuseAdErrors;->getErrorCode()I

    move-result v7

    move v3, v7

    goto :goto_1

    .line 1636
    .restart local v3    # "isConnectedRTN":I
    :cond_3
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v7}, Lcom/fusepowered/util/ResponseValues;->getQueueSize()I

    move-result v7

    if-lez v7, :cond_c

    .line 1638
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v7}, Lcom/fusepowered/util/ResponseValues;->peekAd()Lcom/fusepowered/util/Ad;

    move-result-object v5

    .line 1640
    .local v5, "nextAd":Lcom/fusepowered/util/Ad;
    invoke-virtual {v5, v12}, Lcom/fusepowered/util/Ad;->waterfallContains(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    if-nez v7, :cond_4

    .line 1641
    const-string v7, "FuseAPI"

    const-string v7, "Applifier not configured, configuring!"

    invoke-static {v11, v7}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->configureApplifier(Lcom/fusepowered/util/FuseAdCallback;)V

    .line 1645
    :cond_4
    invoke-virtual {v5, v13}, Lcom/fusepowered/util/Ad;->waterfallContains(I)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-boolean v7, Lcom/fusepowered/fuseapi/FuseAPI;->vungleInitialized:Z

    if-nez v7, :cond_5

    .line 1646
    const-string v7, "FuseAPI"

    const-string v7, "Vungle not configured, configuring!"

    invoke-static {v11, v7}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->configureVungle(Lcom/fusepowered/util/FuseAdCallback;)V

    .line 1650
    :cond_5
    const/4 v6, 0x0

    .line 1654
    .local v6, "rtn":Z
    invoke-virtual {v5, v10}, Lcom/fusepowered/util/Ad;->waterfallContains(I)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lcom/fusepowered/util/Ad;->hasHtmlBody()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1656
    sput-boolean v9, Lcom/fusepowered/fuseapi/FuseAPI;->checkingAd:Z

    .line 1657
    invoke-virtual {p0, v10, v9}, Lcom/fusepowered/util/FuseAdCallback;->adAvailabilityResponse(II)V

    goto/16 :goto_0

    .line 1659
    :cond_6
    invoke-virtual {v5, v13}, Lcom/fusepowered/util/Ad;->waterfallContains(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/vungle/sdk/VunglePub;->isVideoAvailable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1660
    const-string v7, "FuseAPI"

    const-string v7, "Vungle ad available"

    invoke-static {v11, v7}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    sput-boolean v9, Lcom/fusepowered/fuseapi/FuseAPI;->checkingAd:Z

    .line 1662
    invoke-virtual {p0, v10, v9}, Lcom/fusepowered/util/FuseAdCallback;->adAvailabilityResponse(II)V

    goto/16 :goto_0

    .line 1664
    :cond_7
    invoke-virtual {v5, v12}, Lcom/fusepowered/util/Ad;->waterfallContains(I)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    invoke-virtual {v7}, Lcom/fusepowered/a1/ApplifierImpact;->canShowImpact()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1665
    const-string v7, "FuseAPI"

    const-string v7, "Applifier ad available"

    invoke-static {v11, v7}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    sput-boolean v9, Lcom/fusepowered/fuseapi/FuseAPI;->checkingAd:Z

    .line 1667
    invoke-virtual {p0, v10, v9}, Lcom/fusepowered/util/FuseAdCallback;->adAvailabilityResponse(II)V

    goto/16 :goto_0

    .line 1670
    :cond_8
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/fusepowered/util/Ad;->waterfallContains(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1672
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->mPortraitInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    if-nez v7, :cond_9

    .line 1674
    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    .line 1675
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->configureMopub()V

    .line 1679
    :cond_9
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v7}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->isReady()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1681
    sput-boolean v9, Lcom/fusepowered/fuseapi/FuseAPI;->checkingAd:Z

    .line 1682
    invoke-virtual {p0, v10, v9}, Lcom/fusepowered/util/FuseAdCallback;->adAvailabilityResponse(II)V

    goto/16 :goto_0

    .line 1686
    :cond_a
    new-instance v4, Lcom/fusepowered/fuseapi/FuseAPI$3;

    invoke-direct {v4, p0}, Lcom/fusepowered/fuseapi/FuseAPI$3;-><init>(Lcom/fusepowered/util/FuseAdCallback;)V

    .line 1705
    .local v4, "mopubAdCheck":Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v7, v4}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->setInterstitialAdListener(Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;)V

    .line 1707
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v7}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->load()V

    .line 1709
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 1710
    .local v2, "handler":Landroid/os/Handler;
    new-instance v7, Lcom/fusepowered/fuseapi/FuseAPI$4;

    invoke-direct {v7, v4, p0}, Lcom/fusepowered/fuseapi/FuseAPI$4;-><init>(Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;Lcom/fusepowered/util/FuseAdCallback;)V

    const-wide/16 v8, 0xbb8

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1732
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v4    # "mopubAdCheck":Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;
    :cond_b
    sput-boolean v9, Lcom/fusepowered/fuseapi/FuseAPI;->checkingAd:Z

    .line 1733
    invoke-virtual {p0, v9, v9}, Lcom/fusepowered/util/FuseAdCallback;->adAvailabilityResponse(II)V

    goto/16 :goto_0

    .line 1739
    .end local v5    # "nextAd":Lcom/fusepowered/util/Ad;
    .end local v6    # "rtn":Z
    :cond_c
    sput-boolean v9, Lcom/fusepowered/fuseapi/FuseAPI;->checkingAd:Z

    .line 1740
    invoke-virtual {p0, v9, v3}, Lcom/fusepowered/util/FuseAdCallback;->adAvailabilityResponse(II)V

    goto/16 :goto_0
.end method

.method private static clearAll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2429
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v4, :cond_1

    .line 2430
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v4}, Lcom/fusepowered/util/ResponseValues;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    .line 2431
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    if-eqz v3, :cond_0

    .line 2432
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/util/Message;

    .line 2433
    .local v2, "message":Lcom/fusepowered/util/Message;
    invoke-virtual {v2, v5}, Lcom/fusepowered/util/Message;->setDisplayed(Z)V

    goto :goto_0

    .line 2437
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "message":Lcom/fusepowered/util/Message;
    :cond_0
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v4}, Lcom/fusepowered/util/ResponseValues;->getAd()Lcom/fusepowered/util/Ad;

    move-result-object v0

    .line 2438
    .local v0, "ad":Lcom/fusepowered/util/Ad;
    if-eqz v0, :cond_1

    .line 2439
    invoke-virtual {v0, v5}, Lcom/fusepowered/util/Ad;->setDisplayed(Z)V

    .line 2442
    .end local v0    # "ad":Lcom/fusepowered/util/Ad;
    .end local v3    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    :cond_1
    return-void
.end method

.method private static configureApplifier(Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 3
    .param p0, "adCallback"    # Lcom/fusepowered/util/FuseAdCallback;

    .prologue
    const-string v2, "FuseAPI"

    .line 996
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    if-eqz v1, :cond_0

    .line 1015
    :goto_0
    return-void

    .line 1001
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getApplifierId()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, "applifierId":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1003
    :cond_1
    const-string v1, "FuseAPI"

    const-string v1, "No Applifier id, can\'t configure without it."

    invoke-static {v2, v1}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1007
    :cond_2
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 1008
    const-string v1, "FuseAPI"

    const-string v1, "Can\'t configure Applifier, mainActivity is null"

    invoke-static {v2, v1}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1012
    :cond_3
    new-instance v1, Lcom/fusepowered/a1/ApplifierImpact;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/fusepowered/a1/ApplifierImpact;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    .line 1013
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    invoke-virtual {v1, p0}, Lcom/fusepowered/a1/ApplifierImpact;->setImpactListener(Lcom/fusepowered/a1/IApplifierImpactListener;)V

    goto :goto_0
.end method

.method private static configureMopub()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1053
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    if-eq v7, v8, :cond_0

    .line 1055
    const-string v7, "FuseAPI"

    const-string v8, "Can only configure waterfall on the UI thread!"

    invoke-static {v7, v8}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :goto_0
    return-void

    .line 1059
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1060
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-wide/16 v1, 0x0

    .line 1061
    .local v1, "height":D
    const-wide/16 v5, 0x0

    .line 1062
    .local v5, "width":D
    const-wide/16 v3, 0x0

    .line 1064
    .local v3, "maxDimension":D
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    if-eqz v7, :cond_1

    .line 1066
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1067
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v7

    .line 1068
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v7

    .line 1069
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 1072
    :cond_1
    const-wide/high16 v7, 0x4090000000000000L

    cmpg-double v7, v3, v7

    if-gez v7, :cond_4

    .line 1074
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget-object v7, v7, Lcom/fusepowered/util/Ad;->phonePortrait:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 1075
    new-instance v7, Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    sget-object v8, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    sget-object v9, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget-object v9, v9, Lcom/fusepowered/util/Ad;->phonePortrait:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->mPortraitInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .line 1079
    :goto_1
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget-object v7, v7, Lcom/fusepowered/util/Ad;->phoneLandscape:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 1080
    new-instance v7, Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    sget-object v8, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    sget-object v9, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget-object v9, v9, Lcom/fusepowered/util/Ad;->phoneLandscape:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->mLandscapeInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .line 1099
    :goto_2
    cmpl-double v7, v1, v5

    if-lez v7, :cond_7

    .line 1101
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->mPortraitInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    sput-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    goto :goto_0

    .line 1077
    :cond_2
    sput-object v10, Lcom/fusepowered/fuseapi/FuseAPI;->mPortraitInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    goto :goto_1

    .line 1082
    :cond_3
    sput-object v10, Lcom/fusepowered/fuseapi/FuseAPI;->mLandscapeInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    goto :goto_2

    .line 1087
    :cond_4
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget-object v7, v7, Lcom/fusepowered/util/Ad;->tabletPortrait:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    .line 1088
    new-instance v7, Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    sget-object v8, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    sget-object v9, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget-object v9, v9, Lcom/fusepowered/util/Ad;->tabletPortrait:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->mPortraitInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .line 1092
    :goto_3
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget-object v7, v7, Lcom/fusepowered/util/Ad;->tabletLandscape:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    .line 1093
    new-instance v7, Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    sget-object v8, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    sget-object v9, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget-object v9, v9, Lcom/fusepowered/util/Ad;->tabletLandscape:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->mLandscapeInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    goto :goto_2

    .line 1090
    :cond_5
    sput-object v10, Lcom/fusepowered/fuseapi/FuseAPI;->mPortraitInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    goto :goto_3

    .line 1095
    :cond_6
    sput-object v10, Lcom/fusepowered/fuseapi/FuseAPI;->mLandscapeInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    goto :goto_2

    .line 1105
    :cond_7
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->mLandscapeInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    sput-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    goto/16 :goto_0
.end method

.method private static configureVungle(Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 4
    .param p0, "adCallback"    # Lcom/fusepowered/util/FuseAdCallback;

    .prologue
    const-string v3, "FuseAPI"

    .line 947
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->vungleInitialized:Z

    if-eqz v1, :cond_0

    .line 968
    :goto_0
    return-void

    .line 952
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getVungleId()Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, "vungleId":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 955
    :cond_1
    const-string v1, "FuseAPI"

    const-string v1, "No Vungle id, can\'t configure without it."

    invoke-static {v3, v1}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :cond_2
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 960
    const-string v1, "FuseAPI"

    const-string v1, "Can\'t configure vungle, mainActivity is null"

    invoke-static {v3, v1}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 963
    :cond_3
    const-string v1, "FuseAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing vungle with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/vungle/sdk/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 965
    invoke-static {p0}, Lcom/vungle/sdk/VunglePub;->setEventListener(Lcom/vungle/sdk/VunglePub$EventListener;)V

    .line 966
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->vungleInitialized:Z

    goto :goto_0
.end method

.method public static connected()Z
    .locals 4

    .prologue
    .line 2621
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2622
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2624
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2626
    const/4 v2, 0x1

    .line 2630
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static deleteSignPost(Ljava/lang/String;I)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "signPostId"    # I

    .prologue
    .line 5040
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5041
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 5043
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5045
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5046
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5047
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5048
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5049
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5050
    const-string v1, "sign_post_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5051
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_DELETE_SIGN_POST:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5053
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 5055
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static deleteUserChatMessage(Ljava/lang/String;I)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "messageId"    # I

    .prologue
    .line 4069
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4071
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4073
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4075
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4076
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4077
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4078
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4079
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4080
    const-string v1, "message_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4081
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_DELETE_MESSAGE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4083
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4085
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static deviceLogin(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    const/4 v0, 0x0

    .line 3762
    sget-object v1, Lcom/fusepowered/util/Gender;->FUSE_GENDER_UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v1}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_DEVICE_ID:Lcom/fusepowered/util/AccountType;

    move-object v1, p0

    move-object v3, v0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3763
    return-void
.end method

.method public static displayAd(Lcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 4
    .param p0, "fuseApiAdBrowser"    # Lcom/fusepowered/activities/FuseApiBrowser;
    .param p1, "adCallback"    # Lcom/fusepowered/util/FuseAdCallback;

    .prologue
    const/4 v3, 0x0

    const-string v2, "AD"

    .line 1319
    const-string v0, "AD"

    const-string v0, "Displaying an ad"

    invoke-static {v2, v0}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    sget-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->displayingAd:Z

    if-eqz v0, :cond_0

    .line 1321
    const-string v0, "AD"

    const-string v0, "Ad already displaying or loading, skipping"

    invoke-static {v2, v0}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    :goto_0
    return-void

    .line 1324
    :cond_0
    const-string v0, "FuseAPI"

    const-string v1, "displayingAd = true"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->displayingAd:Z

    .line 1327
    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_1
    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    .line 1328
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-virtual {v0, p0}, Lcom/fusepowered/util/FuseAdCallback;->setFuseApiAdBrowser(Lcom/fusepowered/activities/FuseApiBrowser;)V

    .line 1329
    const-string v0, "AD"

    const-string v0, "Starting process to show an ad"

    invoke-static {v2, v0}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->isFuseChildActivityOnDisplay()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1333
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAd()Lcom/fusepowered/util/Ad;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    .line 1334
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGetAd()V

    .line 1335
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    if-nez v0, :cond_2

    .line 1337
    const-string v0, "AD INFO"

    const-string v1, "Ad skiped.... There is no ad to display!!!"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    sget-object v0, Lcom/fusepowered/util/FuseAdSkip;->FUSE_AD_SKIP_NO_HTML:Lcom/fusepowered/util/FuseAdSkip;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseAdSkip;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendFuseAdSkip(I)V

    .line 1339
    sput-boolean v3, Lcom/fusepowered/fuseapi/FuseAPI;->displayingAd:Z

    goto :goto_0

    .line 1327
    :cond_1
    new-instance v0, Lcom/fusepowered/util/FuseAdCallbackImpl;

    invoke-direct {v0}, Lcom/fusepowered/util/FuseAdCallbackImpl;-><init>()V

    goto :goto_1

    .line 1343
    :cond_2
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget-object v0, v0, Lcom/fusepowered/util/Ad;->waterfall:[I

    invoke-static {v0, v3, p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->displayAdFromWaterfall([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    goto :goto_0

    .line 1346
    :cond_3
    const-string v0, "AD"

    const-string v0, "There is something very wrong with the display setting"

    invoke-static {v2, v0}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static displayAdFromWaterfall([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 5
    .param p0, "waterfall"    # [I
    .param p1, "index"    # I
    .param p2, "fuseApiAdBrowser"    # Lcom/fusepowered/activities/FuseApiBrowser;
    .param p3, "adCallback"    # Lcom/fusepowered/util/FuseAdCallback;

    .prologue
    const-string v4, "FuseAPI"

    .line 1281
    const-string v2, "FuseAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waterfall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    array-length v2, p0

    if-ge p1, v2, :cond_5

    .line 1284
    aget v0, p0, p1

    .line 1286
    .local v0, "adProvider":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1287
    const-string v2, "FUSE_AD"

    const-string v3, "DIPLAYING A FUSE AD"

    invoke-static {v2, v3}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    invoke-static {p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->displayFuseAd(Lcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)Z

    move-result v1

    .line 1289
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 1290
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->displayAdFromWaterfall([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    .line 1315
    .end local v0    # "adProvider":I
    .end local v1    # "success":Z
    :cond_0
    :goto_0
    return-void

    .line 1292
    .restart local v0    # "adProvider":I
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1293
    const-string v2, "MOPUB_AD"

    const-string v3, "DIPLAYING A MOPUB AD"

    invoke-static {v2, v3}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    invoke-static {p0, p1, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->displayMoPubAd([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    goto :goto_0

    .line 1296
    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 1297
    const-string v2, "FuseAPI"

    const-string v2, "Displaying Applifier ad"

    invoke-static {v4, v2}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    invoke-static {p0, p1, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->displayApplifierAd([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    goto :goto_0

    .line 1300
    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 1301
    const-string v2, "FuseAPI"

    const-string v2, "DIPLAYING A VUNGLE AD"

    invoke-static {v4, v2}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    invoke-static {p0, p1, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->displayVungleAd([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    goto :goto_0

    .line 1306
    :cond_4
    const-string v2, "FuseAPI"

    const-string v2, "Unsupported provider, skipping it"

    invoke-static {v4, v2}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->displayAdFromWaterfall([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    goto :goto_0

    .line 1310
    .end local v0    # "adProvider":I
    :cond_5
    sget-object v2, Lcom/fusepowered/util/FuseAdSkip;->FUSE_AD_SKIP_NO_HTML:Lcom/fusepowered/util/FuseAdSkip;

    invoke-virtual {v2}, Lcom/fusepowered/util/FuseAdSkip;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->sendFuseAdSkip(I)V

    .line 1311
    invoke-virtual {p3}, Lcom/fusepowered/util/FuseAdCallback;->adWillClose()V

    .line 1312
    const/4 v2, 0x0

    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->displayingAd:Z

    goto :goto_0
.end method

.method private static displayApplifierAd([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 5
    .param p0, "waterfall"    # [I
    .param p1, "index"    # I
    .param p2, "fuseApiAdBrowser"    # Lcom/fusepowered/activities/FuseApiBrowser;
    .param p3, "adCallback"    # Lcom/fusepowered/util/FuseAdCallback;

    .prologue
    const/4 v4, 0x1

    .line 1021
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    if-nez v2, :cond_0

    .line 1023
    invoke-static {p3}, Lcom/fusepowered/fuseapi/FuseAPI;->configureApplifier(Lcom/fusepowered/util/FuseAdCallback;)V

    .line 1026
    :cond_0
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    invoke-virtual {v2}, Lcom/fusepowered/a1/ApplifierImpact;->canShowCampaigns()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1028
    :cond_1
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->displayAdFromWaterfall([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    .line 1048
    :goto_0
    return-void

    .line 1032
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1033
    .local v0, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "noOfferScreen"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    const-string v2, "useDeviceOrientationForVideo"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    invoke-virtual {v2, v0}, Lcom/fusepowered/a1/ApplifierImpact;->showImpact(Ljava/util/Map;)Z

    move-result v1

    .line 1038
    .local v1, "wasAdPlayed":Z
    if-eqz v1, :cond_3

    .line 1039
    sput-boolean v4, Lcom/fusepowered/fuseapi/FuseAPI;->showingApplifier:Z

    goto :goto_0

    .line 1042
    :cond_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->showingApplifier:Z

    .line 1044
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->displayAdFromWaterfall([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    goto :goto_0
.end method

.method private static displayFuseAd(Lcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)Z
    .locals 2
    .param p0, "fuseApiAdBrowser"    # Lcom/fusepowered/activities/FuseApiBrowser;
    .param p1, "adCallback"    # Lcom/fusepowered/util/FuseAdCallback;

    .prologue
    const/4 v1, 0x1

    .line 1249
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    invoke-virtual {v0}, Lcom/fusepowered/util/Ad;->hasHtmlBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    invoke-static {v1}, Lcom/fusepowered/fuseapi/FuseAPI;->setFuseChildActivityOnDisplay(Z)V

    .line 1266
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->showFuseApiAdBrowser(Lcom/fusepowered/activities/FuseApiBrowser;)V

    move v0, v1

    .line 1270
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static displayMoPubAd([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 8
    .param p0, "waterfall"    # [I
    .param p1, "index"    # I
    .param p2, "fuseApiAdBrowser"    # Lcom/fusepowered/activities/FuseApiBrowser;
    .param p3, "adCallback"    # Lcom/fusepowered/util/FuseAdCallback;

    .prologue
    .line 1114
    const-string v0, "AD"

    const-string v1, "Showing Mopub ad a1"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget-object v0, v0, Lcom/fusepowered/util/Ad;->phonePortrait:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1118
    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->displayAdFromWaterfall([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    .line 1216
    .end local p0    # "waterfall":[I
    .end local p1    # "index":I
    :goto_0
    return-void

    .line 1122
    .restart local p0    # "waterfall":[I
    .restart local p1    # "index":I
    :cond_1
    const-string v0, "AD"

    const-string v1, "Showing Mopub ad"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1125
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1126
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1127
    .local v0, "rotation":I
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    .end local v0    # "rotation":I
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1128
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v0

    .line 1129
    .local v2, "height":D
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    .line 1132
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .local v0, "width":D
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->mPortraitInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    if-nez v4, :cond_2

    .line 1134
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->configureMopub()V

    .line 1139
    :cond_2
    cmpl-double v0, v2, v0

    if-lez v0, :cond_3

    .line 1141
    .end local v0    # "width":D
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->mPortraitInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .line 1142
    const-string v0, "AD"

    const-string v1, "In portrait orientation"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    :goto_1
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    if-nez v0, :cond_4

    .line 1152
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->displayAdFromWaterfall([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    goto :goto_0

    .line 1146
    :cond_3
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->mLandscapeInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .line 1147
    const-string v0, "AD"

    const-string v1, "In Landscape orientation"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1154
    :cond_4
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->isReady()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1156
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->waitForLoad:Z

    .line 1161
    new-instance v0, Lcom/fusepowered/fuseapi/FuseAPI$1;

    move-object v1, p3

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI$1;-><init>(Lcom/fusepowered/util/FuseAdCallback;[IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    .line 1169
    .end local v2    # "height":D
    .local v0, "interceptor":Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;
    const-string v1, "MOPUB"

    const-string v2, "WE ARE JUST SETTING THE INTERCEPTOR NOW"

    invoke-static {v1, v2}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->getInterstitialAdListener()Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    move-result-object v1

    .line 1171
    .local v1, "ial":Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;
    instance-of v2, v1, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;

    if-eqz v2, :cond_5

    .line 1173
    check-cast v1, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;

    .line 1174
    .local v1, "mcac":Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;
    iget-boolean v2, v1, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;->didReturn:Z

    if-nez v2, :cond_5

    .line 1176
    const-string v2, "ADCHECK"

    const-string v3, "------------- Major Error, we didn\'t get a chance to callback -------------"

    invoke-static {v2, v3}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string v2, "ADCHECK"

    const-string v3, "------------- Returning something just to reset some flags ----------------"

    invoke-static {v2, v3}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-virtual {v1}, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;->checkAdAvailableReturnFailed()V

    .line 1181
    .end local v1    # "mcac":Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;
    :cond_5
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v1, v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->setInterstitialAdListener(Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;)V

    .line 1184
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->load()V

    .line 1187
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1188
    .local v7, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/fusepowered/fuseapi/FuseAPI$2;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/fusepowered/fuseapi/FuseAPI$2;-><init>(Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;[IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    const-wide/16 p0, 0xbb8

    invoke-virtual {v7, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1210
    .end local v0    # "interceptor":Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;
    .end local v7    # "handler":Landroid/os/Handler;
    .restart local v2    # "height":D
    :cond_6
    const-string p0, "MOPUB AD"

    .end local p0    # "waterfall":[I
    const-string p1, "JUST SHOWING AN AD!!!!"

    .end local p1    # "index":I
    invoke-static {p0, p1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    sget-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {p0, p3}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->setInterstitialAdListener(Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;)V

    .line 1212
    const/4 p0, 0x1

    sput-boolean p0, Lcom/fusepowered/fuseapi/FuseAPI;->showingMopubAd:Z

    .line 1213
    sget-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->show()Z

    goto/16 :goto_0
.end method

.method public static displayMoreGames(Lcom/fusepowered/activities/FuseApiBrowser;)V
    .locals 14
    .param p0, "fuseApiMoregamesBrowser"    # Lcom/fusepowered/activities/FuseApiBrowser;

    .prologue
    const/4 v13, 0x1

    .line 2779
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->connected()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2781
    sput-boolean v13, Lcom/fusepowered/fuseapi/FuseAPI;->showingMoreGames:Z

    .line 2783
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->moreGamesView()V

    .line 2785
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2787
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2789
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "id"

    sget v11, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2790
    const-string v10, "timestamp"

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2791
    const-string v10, "platform"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2792
    const-string v10, "shown_on_play"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->gamesPlayed()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2793
    const-string v10, "country"

    sget-object v11, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {v11}, Lcom/fusepowered/util/DeviceInfoFactory;->getCountryCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2794
    const-string v10, "language"

    sget-object v11, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {v11}, Lcom/fusepowered/util/DeviceInfoFactory;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2796
    sget-object v10, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v10

    .line 2797
    .local v4, "pixelDensity":D
    const/4 v7, 0x0

    .line 2799
    .local v7, "statusBarHeight":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2801
    .local v6, "rectgle":Landroid/graphics/Rect;
    sget-object v10, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 2803
    .local v9, "window":Landroid/view/Window;
    if-eqz v9, :cond_0

    .line 2805
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2806
    iget v0, v6, Landroid/graphics/Rect;->top:I

    .line 2807
    .local v0, "StatusBarHeight":I
    const v10, 0x1020002

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2808
    .local v2, "contentViewTop":I
    sub-int v7, v2, v0

    .line 2811
    .end local v0    # "StatusBarHeight":I
    .end local v2    # "contentViewTop":I
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fusepowered/util/FuseServer;->getMoreGamesHostUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?pd="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&sbh="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2812
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v10, v11, v3}, Lcom/fusepowered/fuseapi/MessagingTask;->generateURL(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v8

    .line 2819
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->showFuseApiMoreGamesBrowser(Ljava/lang/String;Lcom/fusepowered/activities/FuseApiBrowser;)V

    .line 2821
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "pixelDensity":D
    .end local v6    # "rectgle":Landroid/graphics/Rect;
    .end local v7    # "statusBarHeight":I
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "window":Landroid/view/Window;
    :cond_1
    return-void
.end method

.method public static declared-synchronized displayNotifications(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p0, "alertDialogBuilder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 2067
    const-class v1, Lcom/fusepowered/fuseapi/FuseAPI;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 2069
    :try_start_0
    sput-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    .line 2077
    :cond_0
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getMessages()Ljava/util/ArrayList;

    move-result-object v0

    .line 2079
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2081
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->showNextMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2090
    :cond_1
    monitor-exit v1

    return-void

    .line 2067
    .end local v0    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private static displayVungleAd([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 3
    .param p0, "waterfall"    # [I
    .param p1, "index"    # I
    .param p2, "fuseApiAdBrowser"    # Lcom/fusepowered/activities/FuseApiBrowser;
    .param p3, "adCallback"    # Lcom/fusepowered/util/FuseAdCallback;

    .prologue
    const-string v2, "FuseAPI"

    .line 972
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->vungleInitialized:Z

    if-nez v1, :cond_0

    .line 973
    const-string v1, "FuseAPI"

    const-string v1, "Vungle not initialized, doing that now"

    invoke-static {v2, v1}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-static {p3}, Lcom/fusepowered/fuseapi/FuseAPI;->configureVungle(Lcom/fusepowered/util/FuseAdCallback;)V

    .line 977
    :cond_0
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->isVideoAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 978
    const-string v1, "FuseAPI"

    const-string v1, "Vungle does not have a video available"

    invoke-static {v2, v1}, Lcom/fusepowered/logging/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->displayAdFromWaterfall([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    .line 991
    :goto_0
    return-void

    .line 983
    :cond_1
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->displayAdvert()Z

    move-result v0

    .line 985
    .local v0, "wasAdPlayed":Z
    if-eqz v0, :cond_2

    .line 986
    const-string v1, "FuseAPI"

    const-string v1, "Vungle ad was played"

    invoke-static {v2, v1}, Lcom/fusepowered/logging/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 988
    :cond_2
    const-string v1, "FuseAPI"

    const-string v1, "Vungle ad was not played, moving on"

    invoke-static {v2, v1}, Lcom/fusepowered/logging/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->displayAdFromWaterfall([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    goto :goto_0
.end method

.method public static emailLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3731
    sget-object v0, Lcom/fusepowered/util/Gender;->FUSE_GENDER_UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_EMAIL:Lcom/fusepowered/util/AccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3732
    return-void
.end method

.method public static enableCrashDetection()V
    .locals 2

    .prologue
    .line 2730
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->sDetector:Lcom/fusepowered/crashlog/CrashDetector;

    if-nez v0, :cond_0

    .line 2731
    new-instance v0, Lcom/fusepowered/crashlog/CrashDetector;

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/crashlog/CrashDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->sDetector:Lcom/fusepowered/crashlog/CrashDetector;

    .line 2733
    :cond_0
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->sDetector:Lcom/fusepowered/crashlog/CrashDetector;

    invoke-virtual {v0}, Lcom/fusepowered/crashlog/CrashDetector;->start()V

    .line 2734
    return-void
.end method

.method public static endSession()V
    .locals 4

    .prologue
    .line 698
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 700
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 701
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_SESSION_END:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 707
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->clearAll()V

    .line 709
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->mPortraitInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    if-eqz v1, :cond_0

    .line 710
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->mPortraitInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->destroy()V

    .line 711
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->mLandscapeInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    if-eqz v1, :cond_1

    .line 712
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->mLandscapeInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->destroy()V

    .line 714
    :cond_1
    return-void
.end method

.method public static facebookLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "facebookId"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3574
    sget-object v0, Lcom/fusepowered/util/Gender;->FUSE_GENDER_UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_FACEBOOK:Lcom/fusepowered/util/AccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3575
    return-void
.end method

.method public static facebookLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "facebookId"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3606
    sget-object v0, Lcom/fusepowered/util/Gender;->FUSE_GENDER_UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_FACEBOOK:Lcom/fusepowered/util/AccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3607
    return-void
.end method

.method public static friendsPushNotification(Ljava/lang/String;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 661
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    .line 663
    .local v0, "acct":Lcom/fusepowered/util/Account;
    if-nez v0, :cond_0

    .line 677
    :goto_0
    return-void

    .line 666
    :cond_0
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 668
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 669
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-string v2, "action"

    sget-object v3, Lcom/fusepowered/util/ActionType;->ACTION_SEND_PUSH_LIST:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v3}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string v2, "type"

    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string v2, "account_id"

    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string v2, "message"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v3, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v3}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v2, v1, v3}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    goto :goto_0
.end method

.method public static fuseLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3699
    sget-object v0, Lcom/fusepowered/util/Gender;->FUSE_GENDER_UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_USER:Lcom/fusepowered/util/AccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3700
    return-void
.end method

.method public static gamecenterLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "playerID"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "fuseCallBack"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3796
    sget-object v0, Lcom/fusepowered/util/Gender;->FUSE_GENDER_UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    const-string v3, ""

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_GAMECENTER:Lcom/fusepowered/util/AccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3797
    return-void
.end method

.method public static gamesPlayed()I
    .locals 1

    .prologue
    .line 2587
    sget v0, Lcom/fusepowered/fuseapi/FuseAPI;->numPlays:I

    return v0
.end method

.method public static getAd(Lcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 0
    .param p0, "fuseApiAdBrowser"    # Lcom/fusepowered/activities/FuseApiBrowser;
    .param p1, "adCallback"    # Lcom/fusepowered/util/FuseAdCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 886
    invoke-static {p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->displayAd(Lcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    .line 887
    return-void
.end method

.method public static getAttackRobberyLog(Lcom/fusepowered/util/FuseGameDataCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/fusepowered/util/FuseGameDataCallback;

    .prologue
    .line 4919
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4921
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->getUserTransactionLog(Lcom/fusepowered/util/FuseGameDataCallback;)V

    .line 4923
    :cond_0
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    return-object v0
.end method

.method private static getDisplayedAdAction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2424
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const-string v2, "displayed_ad_action"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2425
    .local v0, "adAction":Ljava/lang/String;
    return-object v0
.end method

.method private static getDisplayedAdId()I
    .locals 4

    .prologue
    .line 2418
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const-string v2, "displayed_ad_id"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2419
    .local v0, "adId":I
    return v0
.end method

.method public static getEnemiesList(IILcom/fusepowered/util/FuseGameDataCallback;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "range"    # I
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;

    .prologue
    .line 4973
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4975
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4977
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4978
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4979
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4980
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4981
    const-string v1, "user_level"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4982
    const-string v1, "range"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4983
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_ENEMIES_LIST:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4985
    if-nez p2, :cond_0

    .line 4987
    new-instance p2, Lcom/fusepowered/util/FuseGameDataCallbackImpl;

    .end local p2    # "fuseCallback":Lcom/fusepowered/util/FuseGameDataCallback;
    invoke-direct {p2}, Lcom/fusepowered/util/FuseGameDataCallbackImpl;-><init>()V

    .line 4990
    .restart local p2    # "fuseCallback":Lcom/fusepowered/util/FuseGameDataCallback;
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4991
    return-void
.end method

.method public static getFriendGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p2, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;
    .param p3, "friendFuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseGameDataCallback;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3352
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->getMyGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFriendGameData(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;Ljava/lang/String;)I
    .locals 2
    .param p1, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;
    .param p2, "friendFuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseGameDataCallback;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3337
    .local p0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1, p2}, Lcom/fusepowered/fuseapi/FuseAPI;->getMyGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFriendGameDataCollection(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;
    .param p2, "friendFuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseGameDataCallback;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3366
    .local p0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1, p2}, Lcom/fusepowered/fuseapi/FuseAPI;->getMyGameDataCollection(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;ZLjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getFriendsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4535
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getFriendsList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getFuseID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3536
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    .line 3538
    .local v0, "account":Lcom/fusepowered/util/Account;
    if-eqz v0, :cond_0

    .line 3540
    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getFuseId()Ljava/lang/String;

    move-result-object v1

    .line 3543
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getGameConfiguration()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4441
    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 4442
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 4444
    .local v1, "k":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4446
    .local v4, "rtn":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4448
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4449
    .local v2, "key":Ljava/lang/String;
    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4451
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4454
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public static getGameConfigurationValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4392
    const-string v0, "GAME CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is the game config k "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    invoke-interface {v2, p0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4393
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p2, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseGameDataCallback;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3323
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->getMyGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getGameData(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;)I
    .locals 2
    .param p1, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseGameDataCallback;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3270
    const/4 v0, 0x0

    invoke-static {v1, p0, p1, v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->getMyGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getGameData(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;Z)I
    .locals 1
    .param p1, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;
    .param p2, "isCollection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseGameDataCallback;",
            "Z)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3279
    .local p0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->getGameData(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;Z)I

    move-result v0

    return v0
.end method

.method public static getGameDataCollection(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;)Ljava/util/HashMap;
    .locals 2
    .param p1, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseGameDataCallback;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3292
    const/4 v0, 0x0

    invoke-static {v1, p0, p1, v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->getMyGameDataCollection(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;ZLjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getGameValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4348
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->getGameConfigurationValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalAttackRobberyLog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/util/UserTransactionLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4909
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4911
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getUserTransactionLogs()Ljava/util/ArrayList;

    move-result-object v0

    .line 4914
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static getLocalEnemiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4995
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getEnemiesList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getMailFromServer(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4163
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4165
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4169
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4170
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4171
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4172
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4173
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_MAIL:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4174
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4176
    if-nez p1, :cond_0

    .line 4178
    new-instance p1, Lcom/fusepowered/util/FuseMessageCallback;

    .end local p1    # "callback":Lcom/fusepowered/util/FuseCallback;
    invoke-direct {p1}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    .line 4181
    .restart local p1    # "callback":Lcom/fusepowered/util/FuseCallback;
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4183
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public static getMailList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "fuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/util/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4155
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0, p0}, Lcom/fusepowered/util/ResponseValues;->getMailList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getMailListFriendFromServer(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 0
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4144
    invoke-static {p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->getMailFromServer(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 4145
    return-void
.end method

.method public static getMailListFromServer(Lcom/fusepowered/util/FuseCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4130
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getFuseID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->getMailFromServer(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V

    .line 4131
    return-void
.end method

.method private static getMyGameData(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;ZLjava/lang/String;)I
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p2, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;
    .param p3, "isFriend"    # Z
    .param p4, "friendFuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseGameDataCallback;",
            "Z",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3382
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v7

    .line 3384
    .local v7, "account":Lcom/fusepowered/util/Account;
    if-eqz v7, :cond_3

    .line 3386
    invoke-virtual {v7}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v8

    .line 3388
    .local v8, "accountId":Ljava/lang/String;
    invoke-static {v8}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    if-ne v8, v0, :cond_1

    .line 3390
    :cond_0
    sget-object v0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NO_ACCOUNT:Lcom/fusepowered/util/FuseGameDataError;

    sget v1, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-virtual {p2, v0, v1}, Lcom/fusepowered/util/FuseGameDataCallback;->setFuseGameDataError(Lcom/fusepowered/util/FuseGameDataError;I)V

    .line 3418
    .end local v8    # "accountId":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 3397
    .restart local v8    # "accountId":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 3399
    sget-object v0, Lcom/fusepowered/util/AccountType;->FUSE_USER:Lcom/fusepowered/util/AccountType;

    invoke-virtual {v0}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    .line 3400
    .local v3, "accountType":I
    move-object v2, p4

    .line 3408
    .local v2, "finalAccountId":Ljava/lang/String;
    :goto_2
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGetGameDataRequest(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;IZLcom/fusepowered/util/FuseGameDataCallback;Z)I

    move-result v9

    .local v9, "reqID":I
    move v0, v9

    .line 3410
    goto :goto_1

    .line 3404
    .end local v2    # "finalAccountId":Ljava/lang/String;
    .end local v3    # "accountType":I
    .end local v9    # "reqID":I
    :cond_2
    invoke-virtual {v7}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    .line 3405
    .restart local v3    # "accountType":I
    move-object v2, v8

    .restart local v2    # "finalAccountId":Ljava/lang/String;
    goto :goto_2

    .line 3415
    .end local v2    # "finalAccountId":Ljava/lang/String;
    .end local v3    # "accountType":I
    .end local v8    # "accountId":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NO_ACCOUNT:Lcom/fusepowered/util/FuseGameDataError;

    sget v1, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-virtual {p2, v0, v1}, Lcom/fusepowered/util/FuseGameDataCallback;->setFuseGameDataError(Lcom/fusepowered/util/FuseGameDataError;I)V

    goto :goto_0
.end method

.method private static getMyGameDataCollection(Ljava/lang/String;Ljava/util/ArrayList;Lcom/fusepowered/util/FuseGameDataCallback;ZLjava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p2, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;
    .param p3, "isFriend"    # Z
    .param p4, "friendFuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/util/FuseGameDataCallback;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3431
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    .end local p0    # "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object p0

    .line 3432
    .local p0, "account":Lcom/fusepowered/util/Account;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 3434
    .local v7, "reqIDs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_5

    .line 3436
    invoke-virtual {p0}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v0

    .line 3438
    .local v0, "accountId":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    if-ne v0, v1, :cond_2

    .line 3440
    :cond_0
    sget-object p0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NO_ACCOUNT:Lcom/fusepowered/util/FuseGameDataError;

    .end local p0    # "account":Lcom/fusepowered/util/Account;
    sget p1, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    .end local p1    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p0, p1}, Lcom/fusepowered/util/FuseGameDataCallback;->setFuseGameDataError(Lcom/fusepowered/util/FuseGameDataError;I)V

    .line 3476
    .end local v0    # "accountId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v7

    .line 3447
    .restart local v0    # "accountId":Ljava/lang/String;
    .restart local p0    # "account":Lcom/fusepowered/util/Account;
    .restart local p1    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-eqz p3, :cond_3

    .line 3449
    sget-object p0, Lcom/fusepowered/util/AccountType;->FUSE_USER:Lcom/fusepowered/util/AccountType;

    .end local p0    # "account":Lcom/fusepowered/util/Account;
    invoke-virtual {p0}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    .line 3450
    .local v3, "accountType":I
    move-object v2, p4

    .line 3458
    .local v2, "finalAccountId":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3459
    .local v1, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 3462
    .end local v0    # "accountId":Ljava/lang/String;
    .end local p1    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3464
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3465
    .local v0, "masterKey":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    move v6, p1

    :goto_3
    move v4, p3

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGetGameDataRequest(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;IZLcom/fusepowered/util/FuseGameDataCallback;Z)I

    move-result p1

    .line 3467
    .local p1, "reqID":I
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "reqID":I
    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3454
    .end local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "finalAccountId":Ljava/lang/String;
    .end local v3    # "accountType":I
    .local v0, "accountId":Ljava/lang/String;
    .local p0, "account":Lcom/fusepowered/util/Account;
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object p0

    .end local p0    # "account":Lcom/fusepowered/util/Account;
    invoke-virtual {p0}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    .line 3455
    .restart local v3    # "accountType":I
    move-object v2, v0

    .restart local v2    # "finalAccountId":Ljava/lang/String;
    goto :goto_1

    .line 3465
    .end local p1    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "masterKey":Ljava/lang/String;
    .restart local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    const/4 p1, 0x0

    move v6, p1

    goto :goto_3

    .line 3473
    .end local v0    # "masterKey":Ljava/lang/String;
    .end local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "finalAccountId":Ljava/lang/String;
    .end local v3    # "accountType":I
    .local p0, "account":Lcom/fusepowered/util/Account;
    .restart local p1    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    sget-object p0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NO_ACCOUNT:Lcom/fusepowered/util/FuseGameDataError;

    .end local p0    # "account":Lcom/fusepowered/util/Account;
    sget p1, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    .end local p1    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p0, p1}, Lcom/fusepowered/util/FuseGameDataCallback;->setFuseGameDataError(Lcom/fusepowered/util/FuseGameDataError;I)V

    goto :goto_0
.end method

.method private static getNotificationSkipCount(I)I
    .locals 3
    .param p0, "messageId"    # I

    .prologue
    .line 2369
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification_skip_count_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getNotificationViewCount(I)I
    .locals 3
    .param p0, "messageId"    # I

    .prologue
    .line 2360
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification_view_count_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getOriginalAccountAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3880
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->accountAlias:Ljava/lang/String;

    return-object v0
.end method

.method public static getOriginalAccountId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3854
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    .line 3856
    .local v0, "account":Lcom/fusepowered/util/Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getOriginalAccountType()I
    .locals 2

    .prologue
    .line 3914
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    .line 3916
    .local v0, "account":Lcom/fusepowered/util/Account;
    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v1

    return v1
.end method

.method private static getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V
    .locals 5
    .param p0, "accountId"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "gender"    # I
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "accountType"    # Lcom/fusepowered/util/AccountType;
    .param p5, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    const-string v4, "account_id"

    .line 3805
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 3807
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3809
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3810
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3812
    if-eqz p0, :cond_1

    .line 3814
    const-string v1, "account_id"

    invoke-virtual {v0, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3821
    :goto_0
    const-string v1, "account_alias"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3822
    const-string v1, "type"

    invoke-virtual {p4}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3823
    const-string v1, "gender"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3824
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3825
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_ID:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3827
    if-nez p5, :cond_0

    .line 3829
    new-instance p5, Lcom/fusepowered/util/FuseRegisterAccountCallback;

    .end local p5    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    invoke-direct {p5, p1}, Lcom/fusepowered/util/FuseRegisterAccountCallback;-><init>(Ljava/lang/String;)V

    .line 3832
    .restart local p5    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    :cond_0
    sput-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->accountAlias:Ljava/lang/String;

    .line 3833
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p5}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 3834
    return-void

    .line 3818
    :cond_1
    const-string v1, "account_id"

    const-string v1, ""

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getSignPost(Ljava/lang/String;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;

    .prologue
    .line 5022
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5023
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 5025
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5027
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5028
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5029
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5030
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5031
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5032
    const-string v1, "language_index"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {v2}, Lcom/fusepowered/util/DeviceInfoFactory;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5033
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_SIGN_POSTS:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5035
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 5037
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static getUserChatList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "fuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/util/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4047
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0, p0}, Lcom/fusepowered/util/ResponseValues;->getChatMessages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserChatListFromServer(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4003
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4004
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4006
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4008
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4009
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4010
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4011
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4012
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4013
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_MESSAGE_LIST:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4015
    if-nez p1, :cond_0

    .line 4016
    new-instance p1, Lcom/fusepowered/util/FuseMessageCallback;

    .end local p1    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    invoke-direct {p1}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    .line 4019
    .restart local p1    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4021
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private static getUserTransactionLog(Lcom/fusepowered/util/FuseGameDataCallback;)V
    .locals 4
    .param p0, "callback"    # Lcom/fusepowered/util/FuseGameDataCallback;

    .prologue
    .line 4927
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4929
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4931
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4933
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4934
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4935
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4936
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4937
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_USER_TRANSACTION_LOG:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4939
    if-nez p0, :cond_0

    .line 4941
    new-instance p0, Lcom/fusepowered/util/FuseGameDataCallbackImpl;

    .end local p0    # "callback":Lcom/fusepowered/util/FuseGameDataCallback;
    invoke-direct {p0}, Lcom/fusepowered/util/FuseGameDataCallbackImpl;-><init>()V

    .line 4944
    .restart local p0    # "callback":Lcom/fusepowered/util/FuseGameDataCallback;
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p0}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4946
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public static googlePlayLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "fuseCallBack"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3790
    const/4 v0, 0x0

    sget-object v1, Lcom/fusepowered/util/Gender;->FUSE_GENDER_UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v1}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_GOOGLE_PLAY:Lcom/fusepowered/util/AccountType;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3791
    return-void
.end method

.method private static incrementGameDataRequestId(Ljava/lang/String;)I
    .locals 4
    .param p0, "gameId"    # Ljava/lang/String;

    .prologue
    .line 2401
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "game_data_request_id_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2402
    .local v0, "property":Ljava/lang/String;
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 2403
    .local v1, "request_id":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/fusepowered/fuseapi/FuseAPI;->gameDataReqId:I

    .line 2404
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->gameDataReqId:I

    invoke-static {v2, v0, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2406
    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameDataReqId:I

    return v2
.end method

.method private static incrementRequestId(Ljava/lang/String;)V
    .locals 4
    .param p0, "gameId"    # Ljava/lang/String;

    .prologue
    .line 2389
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_id_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2390
    .local v0, "property":Ljava/lang/String;
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 2391
    .local v1, "request_id":I
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    .line 2392
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2, v0, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2393
    return-void
.end method

.method public static initializeFuseAPI(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 193
    if-nez p0, :cond_1

    .line 195
    new-instance v0, Lcom/fusepowered/fuseapi/FuseAPI;

    invoke-direct {v0, p1}, Lcom/fusepowered/fuseapi/FuseAPI;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->FuseAPI:Lcom/fusepowered/fuseapi/FuseAPI;

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 201
    :cond_2
    if-eqz p0, :cond_0

    .line 203
    new-instance v0, Lcom/fusepowered/fuseapi/FuseAPI;

    invoke-direct {v0, p0}, Lcom/fusepowered/fuseapi/FuseAPI;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->FuseAPI:Lcom/fusepowered/fuseapi/FuseAPI;

    goto :goto_0

    .line 208
    :cond_3
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->updateFuseAPI(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static isFuseChildActivityOnDisplay()Z
    .locals 4

    .prologue
    .line 867
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "child_activity_displayed_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v3}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 868
    .local v0, "isChildActivityOnDisplay":Z
    return v0
.end method

.method private static declared-synchronized isPreviousNotificationDisplayed(I)Z
    .locals 5
    .param p0, "nextMessageIndexToDisplay"    # I

    .prologue
    .line 2138
    const-class v3, Lcom/fusepowered/fuseapi/FuseAPI;

    monitor-enter v3

    const/4 v2, 0x0

    .line 2139
    .local v2, "previousNotificationDisplayed":Z
    if-lez p0, :cond_0

    .line 2140
    :try_start_0
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v4}, Lcom/fusepowered/util/ResponseValues;->getMessages()Ljava/util/ArrayList;

    move-result-object v0

    .line 2141
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    const/4 v4, 0x1

    sub-int v4, p0, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/util/Message;

    .line 2142
    .local v1, "previousMessage":Lcom/fusepowered/util/Message;
    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->isDisplayed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2144
    .end local v0    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    .end local v1    # "previousMessage":Lcom/fusepowered/util/Message;
    :cond_0
    monitor-exit v3

    return v2

    .line 2138
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method public static libraryVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2604
    const-string v0, "1.34.3"

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 5059
    const-string v0, "FUSE AIR"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5060
    return-void
.end method

.method private static logUserTransactions(Ljava/lang/String;Lcom/fusepowered/util/FuseAttackRobberyEventType;ZII)V
    .locals 4
    .param p0, "targetFuseId"    # Ljava/lang/String;
    .param p1, "eventType"    # Lcom/fusepowered/util/FuseAttackRobberyEventType;
    .param p2, "wasWon"    # Z
    .param p3, "amountWon"    # I
    .param p4, "amountLost"    # I

    .prologue
    .line 4950
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4952
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4954
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4956
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4957
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4958
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4959
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4960
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4961
    const-string v1, "user_event_type"

    invoke-virtual {p1}, Lcom/fusepowered/util/FuseAttackRobberyEventType;->getEventCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4962
    const-string v1, "outcome"

    if-eqz p2, :cond_1

    const-string v2, "1"

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4963
    const-string v1, "outcome_amount_won"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4964
    const-string v1, "outcome_amount_lost"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4965
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_LOG_USER_TRANSACTION:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4967
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4969
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 4962
    .restart local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v2, "0"

    goto :goto_0
.end method

.method public static migrateFriends(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4755
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4757
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4759
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4760
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4761
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4762
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4763
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4764
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_MIGRATE_FRIENDS:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4766
    if-nez p1, :cond_0

    .line 4768
    new-instance p1, Lcom/fusepowered/util/FuseMessageCallback;

    .end local p1    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    invoke-direct {p1}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    .line 4771
    .restart local p1    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4773
    return-void
.end method

.method private static moreGamesView()V
    .locals 4

    .prologue
    .line 2828
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v1, :cond_0

    .line 2830
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2832
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2834
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2835
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2836
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_MORE_GAMES_VIEW:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2838
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2840
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static notificationClick(I)V
    .locals 4
    .param p0, "messageId"    # I

    .prologue
    .line 2122
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v1, :cond_0

    .line 2124
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2128
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    const-string v1, "message_id"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NOTIFICATION_CLICK:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2133
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2135
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static notificationView(I)V
    .locals 4
    .param p0, "messageId"    # I

    .prologue
    .line 2097
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v1, :cond_0

    .line 2099
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->setNotificationViewed(I)V

    .line 2101
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2105
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    const-string v1, "message_id"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2108
    const-string v1, "shown_on_play"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->gamesPlayed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_NOTIFICATION_VIEW:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2115
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static openWebPage(Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2446
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2447
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2448
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2450
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2455
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2452
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2453
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->displayNotifications(Landroid/app/AlertDialog$Builder;)V

    goto :goto_0
.end method

.method public static postSignPost(Ljava/lang/String;II)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "messageId"    # I
    .param p2, "stickerId"    # I

    .prologue
    .line 5003
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5004
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 5006
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5008
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5009
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5010
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5011
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5012
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5013
    const-string v1, "message_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5014
    const-string v1, "sticker_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5015
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_SET_SIGN_POST:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5017
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 5019
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static postUserChatMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 3941
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3943
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 3945
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3947
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3948
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3949
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3950
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3951
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3952
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3953
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_POST_MESSAGE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3955
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 3957
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static recordGCM()V
    .locals 4

    .prologue
    .line 1450
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1453
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    const-string v1, "notification_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->notificationID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_PUSH_NOTIFICATION_VIEW:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1459
    const-string v1, "GCM"

    const-string v2, "Recording a user action after receiveing a GCM Message!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    return-void
.end method

.method public static registerCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "crashInfo"    # Ljava/lang/String;
    .param p1, "crashName"    # Ljava/lang/String;
    .param p2, "stack"    # Ljava/lang/String;

    .prologue
    .line 2746
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v1, :cond_0

    .line 2748
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2750
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2752
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2753
    const-string v1, "crash_info"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2754
    const-string v1, "crash_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    const-string v1, "stack"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2756
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2757
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GAME_CRASH:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2759
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2761
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static registerCurrency(II)V
    .locals 0
    .param p0, "currencyType"    # I
    .param p1, "balance"    # I

    .prologue
    .line 4814
    invoke-static {p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->sendRegisterResource(II)V

    .line 4815
    return-void
.end method

.method public static registerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/fusepowered/util/FuseEvent;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "param_name"    # Ljava/lang/String;
    .param p2, "param_value"    # Ljava/lang/String;
    .param p3, "variable_name"    # Ljava/lang/String;
    .param p4, "variable_value"    # Ljava/lang/Number;

    .prologue
    const-string v4, ""

    .line 1948
    const/4 v1, 0x0

    .line 1949
    .local v1, "noMoreVars":Z
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1950
    :cond_0
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    .line 2009
    :goto_0
    return-object v3

    .line 1952
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 1953
    :cond_2
    const/4 v1, 0x1

    .line 1955
    :cond_3
    if-nez p2, :cond_4

    .line 1957
    if-nez v1, :cond_5

    .line 1958
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1960
    :cond_4
    if-eqz v1, :cond_5

    const-string v3, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 1961
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1964
    :cond_5
    if-nez p3, :cond_7

    .line 1965
    const/4 v1, 0x1

    .line 1974
    :cond_6
    :goto_1
    if-nez p4, :cond_9

    .line 1976
    if-nez v1, :cond_a

    .line 1977
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1968
    :cond_7
    const-string v3, ""

    invoke-virtual {p3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    .line 1969
    const/4 v1, 0x1

    goto :goto_1

    .line 1970
    :cond_8
    if-eqz v1, :cond_6

    .line 1971
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1979
    :cond_9
    if-eqz v1, :cond_a

    .line 1980
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1982
    :cond_a
    sget-boolean v3, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v3, :cond_b

    .line 1984
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1986
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1990
    .local v2, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "id"

    sget v4, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1991
    const-string v3, "timestamp"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1992
    const-string v3, "e1"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1993
    const-string v3, "e2"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1994
    const-string v3, "e3"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1995
    const-string v3, "e4"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1996
    const-string v3, "v"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1998
    const-string v3, "action"

    sget-object v4, Lcom/fusepowered/util/ActionType;->ACTION_ANALYTICS:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v4}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2006
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v4, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v4}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    const/4 v5, 0x1

    invoke-static {v3, v2, v4, v5}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseCallback;Z)V

    .line 2009
    .end local v2    # "params":Lorg/json/JSONObject;
    :cond_b
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_OK:Lcom/fusepowered/util/FuseEvent;

    goto/16 :goto_0

    .line 2000
    .restart local v2    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2002
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "FuseAPI"

    const-string v4, "sendEvent JSONException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2003
    sget-object v3, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_BAD_VAL:Lcom/fusepowered/util/FuseEvent;

    goto/16 :goto_0
.end method

.method public static registerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fusepowered/util/FuseEvent;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "param_name"    # Ljava/lang/String;
    .param p2, "param_value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/fusepowered/util/FuseEvent;"
        }
    .end annotation

    .prologue
    .local p3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Number;>;"
    const-string v5, ""

    .line 1861
    const/4 v2, 0x0

    .line 1862
    .local v2, "noMoreVars":Z
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 1863
    :cond_0
    sget-object v4, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    .line 1913
    :goto_0
    return-object v4

    .line 1865
    :cond_1
    if-eqz p1, :cond_2

    const-string v4, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 1866
    :cond_2
    const/4 v2, 0x1

    .line 1868
    :cond_3
    if-nez p2, :cond_4

    .line 1870
    if-nez v2, :cond_5

    .line 1871
    sget-object v4, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1873
    :cond_4
    if-eqz v2, :cond_5

    const-string v4, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 1874
    sget-object v4, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1877
    :cond_5
    if-eqz p3, :cond_6

    .line 1878
    if-eqz v2, :cond_6

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_6

    .line 1879
    sget-object v4, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_NULL_PARAMETER:Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1882
    :cond_6
    sget-boolean v4, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v4, :cond_8

    .line 1884
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1886
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1890
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "id"

    sget v5, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1891
    const-string v4, "timestamp"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1892
    const-string v4, "e1"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1893
    const-string v4, "e2"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1894
    const-string v4, "e3"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1896
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_7

    .line 1898
    invoke-static {p3}, Lcom/fusepowered/fuseapi/MessagingService;->mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1899
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v4, "dictionary"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1902
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    :cond_7
    const-string v4, "action"

    sget-object v5, Lcom/fusepowered/util/ActionType;->ACTION_ANALYTICS:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v5}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1910
    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v5, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v5}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    const/4 v6, 0x1

    invoke-static {v4, v3, v5, v6}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseCallback;Z)V

    .line 1913
    .end local v3    # "params":Lorg/json/JSONObject;
    :cond_8
    sget-object v4, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_OK:Lcom/fusepowered/util/FuseEvent;

    goto/16 :goto_0

    .line 1904
    .restart local v3    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1906
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "FuseAPI"

    const-string v5, "sendEvent JSONException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1907
    sget-object v4, Lcom/fusepowered/util/FuseEvent;->FUSE_EVENT_BAD_VAL:Lcom/fusepowered/util/FuseEvent;

    goto/16 :goto_0
.end method

.method public static registerEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 1791
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1792
    return-void
.end method

.method public static registerEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1822
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1824
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v1, v2, v3, v3}, Lcom/fusepowered/fuseapi/FuseAPI;->registerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/fusepowered/util/FuseEvent;

    goto :goto_0

    .line 1828
    .end local v1    # "k":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static registerFlurryClick()V
    .locals 2

    .prologue
    .line 4848
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->sendRegisterResource(II)V

    .line 4849
    return-void
.end method

.method public static registerFlurryView()V
    .locals 2

    .prologue
    .line 4831
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->sendRegisterResource(II)V

    .line 4832
    return-void
.end method

.method public static registerFuseAdSkip(I)V
    .locals 4
    .param p0, "state"    # I

    .prologue
    const-string v2, "id"

    .line 1419
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1422
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v1, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    const-string v1, "id"

    sget v1, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_FUSE_AD_SKIP:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    const-string v1, "state"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1428
    return-void
.end method

.method public static registerGCM(Ljava/lang/String;)V
    .locals 4
    .param p0, "newRegistrationID"    # Ljava/lang/String;

    .prologue
    .line 1433
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1435
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1436
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    .line 1437
    const-string v1, "token"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_TOKEN_RECEIVED:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1441
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1445
    :goto_0
    return-void

    .line 1443
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;Z)V

    goto :goto_0
.end method

.method public static registerGender(I)V
    .locals 4
    .param p0, "gender"    # I

    .prologue
    .line 2881
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2883
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2885
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2886
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2887
    const-string v1, "gender"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2888
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GENDER_UPDATE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2890
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->setGender(I)V

    .line 2892
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2893
    return-void
.end method

.method public static registerInAppPurchase(Lcom/fusepowered/util/VerifiedPurchase;)V
    .locals 3
    .param p0, "verifiedPurchase"    # Lcom/fusepowered/util/VerifiedPurchase;

    .prologue
    .line 2502
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/fusepowered/fuseapi/FuseAPI;->registerInAppPurchase(Lcom/fusepowered/util/VerifiedPurchase;DLjava/lang/String;)V

    .line 2503
    return-void
.end method

.method public static registerInAppPurchase(Lcom/fusepowered/util/VerifiedPurchase;DLjava/lang/String;)V
    .locals 4
    .param p0, "verifiedPurchase"    # Lcom/fusepowered/util/VerifiedPurchase;
    .param p1, "price"    # D
    .param p3, "currency"    # Ljava/lang/String;

    .prologue
    .line 2546
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v1, :cond_0

    .line 2548
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2550
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2551
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2552
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2554
    const-string v1, "content_id"

    invoke-virtual {p0}, Lcom/fusepowered/util/VerifiedPurchase;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2555
    const-string v1, "order_id"

    invoke-virtual {p0}, Lcom/fusepowered/util/VerifiedPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2556
    const-string v1, "developer_payload"

    invoke-virtual {p0}, Lcom/fusepowered/util/VerifiedPurchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2557
    const-string v1, "purchase_state"

    invoke-virtual {p0}, Lcom/fusepowered/util/VerifiedPurchase;->getPurchaseState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2558
    const-string v1, "purchase_time"

    invoke-virtual {p0}, Lcom/fusepowered/util/VerifiedPurchase;->getPurchaseTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2559
    const-string v1, "purchase_token"

    invoke-virtual {p0}, Lcom/fusepowered/util/VerifiedPurchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2560
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_INAPP_PURCHASE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2561
    const-string v1, "price"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2562
    const-string v1, "currency"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2563
    const-string v1, "purchased_on_play"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->gamesPlayed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2565
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2567
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static registerLevel(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 4795
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendRegisterResource(II)V

    .line 4796
    return-void
.end method

.method public static registerTapjoyReward(I)V
    .locals 1
    .param p0, "amount"    # I

    .prologue
    .line 4866
    const/4 v0, 0x7

    invoke-static {v0, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendRegisterResource(II)V

    .line 4867
    return-void
.end method

.method public static rejectFriend(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4733
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4735
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4737
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4738
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4739
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4740
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4741
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4742
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REJECT_FRIEND:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4744
    if-nez p1, :cond_0

    .line 4746
    new-instance p1, Lcom/fusepowered/util/FuseMessageCallback;

    .end local p1    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    invoke-direct {p1}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    .line 4749
    .restart local p1    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4750
    return-void
.end method

.method public static removeFriend(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4625
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4627
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4629
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4630
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4631
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4632
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4633
    const-string v1, "fuse_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4634
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REMOVE_FRIEND:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4636
    if-nez p1, :cond_0

    .line 4638
    new-instance p1, Lcom/fusepowered/util/FuseMessageCallback;

    .end local p1    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    invoke-direct {p1}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    .line 4641
    .restart local p1    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4642
    return-void
.end method

.method private static resetDisplayedAdDetails()V
    .locals 2

    .prologue
    .line 2409
    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->setDisplayedAdDetails(ILjava/lang/String;)V

    .line 2410
    return-void
.end method

.method private static resetFuseChildActivityOnDisplay()V
    .locals 1

    .prologue
    .line 862
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->setFuseChildActivityOnDisplay(Z)V

    .line 863
    return-void
.end method

.method private static resetGameDataRequestId()V
    .locals 3

    .prologue
    .line 2396
    const/4 v0, 0x0

    sput v0, Lcom/fusepowered/fuseapi/FuseAPI;->gameDataReqId:I

    .line 2397
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "game_data_request_id_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameDataReqId:I

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2398
    return-void
.end method

.method private static resetRequestId()V
    .locals 3

    .prologue
    .line 2384
    const/4 v0, 0x0

    sput v0, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    .line 2385
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request_id_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2386
    return-void
.end method

.method public static resumeSession(Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    const/4 v5, 0x0

    .line 787
    sget-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->showingMopubAd:Z

    if-eqz v2, :cond_0

    .line 789
    sput-boolean v5, Lcom/fusepowered/fuseapi/FuseAPI;->showingMopubAd:Z

    .line 790
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v2, v3}, Lcom/fusepowered/util/FuseAdCallback;->onInterstitialDismissed(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)V

    .line 793
    :cond_0
    sget-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->showingApplifier:Z

    if-eqz v2, :cond_1

    .line 795
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-virtual {v2}, Lcom/fusepowered/util/FuseAdCallback;->onImpactClose()V

    .line 798
    :cond_1
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->onResume()V

    .line 800
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->isFuseChildActivityOnDisplay()Z

    move-result v2

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->suspended:Z

    if-eqz v2, :cond_4

    .line 803
    sget-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->showingMoreGames:Z

    if-eqz v2, :cond_3

    .line 805
    sput-boolean v5, Lcom/fusepowered/fuseapi/FuseAPI;->showingMoreGames:Z

    .line 845
    :cond_2
    :goto_0
    return-void

    .line 808
    :cond_3
    const-string v2, "RESUME SESSION"

    const-string v3, "Sending a resume...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 811
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 812
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string v2, "action"

    sget-object v3, Lcom/fusepowered/util/ActionType;->ACTION_RESUME_SESSION:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v3}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const-string v2, "wifi"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/fuseapi/NetworkService;->isWifiConnection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    if-eqz p0, :cond_6

    .line 819
    sput-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    .line 826
    :goto_1
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {v2, v1, v3}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 828
    sput-boolean v5, Lcom/fusepowered/fuseapi/FuseAPI;->suspended:Z

    .line 831
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    sget-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->showingManditoryMessage:Z

    if-eqz v2, :cond_5

    .line 833
    const-string v2, "MANDITORY MESSAGE"

    const-string v3, "REDISPLAY THE UPDATE MESSAGE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 835
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 836
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 839
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_5
    sget-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->displayNotifications:Z

    if-eqz v2, :cond_2

    .line 841
    invoke-static {v5}, Lcom/fusepowered/fuseapi/FuseAPI;->showNextMessage(I)V

    goto :goto_0

    .line 823
    .restart local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    sput-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    goto :goto_1
.end method

.method public static sendAttack(Ljava/lang/String;ZII)V
    .locals 1
    .param p0, "attackedFuseId"    # Ljava/lang/String;
    .param p1, "wasWon"    # Z
    .param p2, "amountWon"    # I
    .param p3, "amountLost"    # I

    .prologue
    .line 4893
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4895
    sget-object v0, Lcom/fusepowered/util/FuseAttackRobberyEventType;->FUSE_ATTACK:Lcom/fusepowered/util/FuseAttackRobberyEventType;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->logUserTransactions(Ljava/lang/String;Lcom/fusepowered/util/FuseAttackRobberyEventType;ZII)V

    .line 4897
    :cond_0
    return-void
.end method

.method private static sendEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .param p0, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2020
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v3, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-nez v3, :cond_1

    .line 2022
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2024
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2028
    .local v2, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "id"

    sget v4, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2029
    const-string v3, "timestamp"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2030
    const-string v3, "event"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2031
    const-string v3, "action"

    sget-object v4, Lcom/fusepowered/util/ActionType;->ACTION_ANALYTICS:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v4}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2033
    if-eqz p1, :cond_0

    .line 2035
    invoke-static {p1}, Lcom/fusepowered/fuseapi/MessagingService;->mapToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2036
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v3, "dictionary"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2045
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    :cond_0
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v4, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v4}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    const/4 v5, 0x1

    invoke-static {v3, v2, v4, v5}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseCallback;Z)V

    .line 2047
    .end local v2    # "params":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 2039
    .restart local v2    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2041
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "FuseAPI"

    const-string v4, "sendEvent JSONException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sendFuseAdSkip(I)V
    .locals 4
    .param p0, "state"    # I

    .prologue
    const-string v2, "FuseAPI"

    .line 1748
    const-string v1, "FuseAPI"

    const-string v1, "send Fuse Ad Skip"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    const-string v1, "FuseAPI"

    const-string v1, "Skipping ad display, resetting displayingAd flag"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    const/4 v1, 0x0

    sput-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->displayingAd:Z

    .line 1752
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1754
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1755
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_FUSE_AD_SKIP:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    const-string v1, "state"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1762
    return-void
.end method

.method private static sendGameDataMap(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseGameDataCallback;Z)I
    .locals 5
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "paramJson"    # Lorg/json/JSONObject;
    .param p3, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;
    .param p4, "doSendNow"    # Z

    .prologue
    const-string v2, "type"

    const-string v2, "fuse_object_key"

    const-string v2, "account_id"

    .line 3092
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 3093
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->incrementGameDataRequestId(Ljava/lang/String;)I

    move-result v1

    .line 3097
    .local v1, "reqID":I
    :try_start_0
    const-string v2, "id"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3098
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3099
    const-string v2, "action"

    sget-object v3, Lcom/fusepowered/util/ActionType;->ACTION_SET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v3}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3101
    const-string v2, "reqID"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->gameDataReqId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3103
    if-eqz p0, :cond_0

    .line 3105
    const-string v2, "friend"

    const-string v3, "1"

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3106
    const-string v2, "account_id"

    invoke-virtual {p2, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3107
    const-string v2, "type"

    sget-object v3, Lcom/fusepowered/util/AccountType;->FUSE_USER:Lcom/fusepowered/util/AccountType;

    invoke-virtual {v3}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3115
    :goto_0
    invoke-static {p1}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3117
    const-string v2, "fuse_object_key"

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3132
    :goto_1
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v2, p2, p3, p4}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseCallback;Z)V

    move v2, v1

    .line 3135
    :goto_2
    return v2

    .line 3111
    :cond_0
    :try_start_1
    const-string v2, "account_id"

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3112
    const-string v2, "type"

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3124
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 3126
    .local v0, "je":Lorg/json/JSONException;
    const-string v2, "FuseAPI"

    const-string v3, "sendGameDataMap JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3129
    const/4 v2, 0x0

    goto :goto_2

    .line 3121
    .end local v0    # "je":Lorg/json/JSONException;
    :cond_1
    :try_start_2
    const-string v2, "fuse_object_key"

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private static sendGameDataRequest(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseGameDataCallback;Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p2, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;
    .param p3, "fuseId"    # Ljava/lang/String;

    .prologue
    .line 3028
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3030
    invoke-virtual {p1}, Lcom/fusepowered/util/GameKeyValuePairs;->getMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3032
    invoke-virtual {p1}, Lcom/fusepowered/util/GameKeyValuePairs;->getMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/fuseapi/FuseAPI;->buildDataPayloadJSON(Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3034
    .local v0, "paramJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 3036
    const/4 v1, 0x1

    invoke-static {p3, p0, v0, p2, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGameDataMap(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseGameDataCallback;Z)I

    move-result v1

    .line 3041
    .end local v0    # "paramJson":Lorg/json/JSONObject;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static sendGameDataRequestCollection(Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseGameDataCallback;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p0, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p1, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;
    .param p2, "fuseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/util/GameKeyValuePairs;",
            "Lcom/fusepowered/util/FuseGameDataCallback;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3049
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3060
    .local v6, "reqIDs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v7}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 3062
    invoke-virtual {p0}, Lcom/fusepowered/util/GameKeyValuePairs;->getObjectMapKeys()Ljava/util/Set;

    move-result-object v3

    .line 3064
    .local v3, "objectMapKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 3066
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3068
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3070
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3071
    .local v2, "objectMapKey":Ljava/lang/String;
    invoke-static {v2, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->buildDataPayloadJSON(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3073
    .local v4, "paramJson":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 3075
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    move v0, v7

    .line 3076
    .local v0, "doSendNow":Z
    :goto_1
    invoke-static {p2, v2, v4, p1, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGameDataMap(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/fusepowered/util/FuseGameDataCallback;Z)I

    move-result v5

    .line 3078
    .local v5, "reqID":I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3075
    .end local v0    # "doSendNow":Z
    .end local v5    # "reqID":I
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    .line 3084
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "objectMapKey":Ljava/lang/String;
    .end local v3    # "objectMapKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "paramJson":Lorg/json/JSONObject;
    :cond_2
    return-object v6
.end method

.method private static sendGetAd()V
    .locals 8

    .prologue
    .line 1470
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 1472
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1474
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "wifi"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/fusepowered/fuseapi/NetworkService;->isWifiConnection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    const-string v5, "id"

    sget v6, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    const-string v5, "timestamp"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    const-string v5, "action"

    sget-object v6, Lcom/fusepowered/util/ActionType;->ACTION_GET_AD:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v6}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1480
    .local v2, "r":Landroid/graphics/Rect;
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1481
    .local v3, "w":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1483
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v5, v6

    .line 1484
    .local v0, "height":I
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, v5, v6

    .line 1487
    .local v4, "width":I
    const-string v5, "w"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    const-string v5, "h"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    const-string v5, "t"

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    const-string v5, "b"

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-static {v5, v1, v6}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 1493
    return-void
.end method

.method private static sendGetGameDataRequest(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;IZLcom/fusepowered/util/FuseGameDataCallback;Z)I
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "accountType"    # I
    .param p4, "friendsRequest"    # Z
    .param p5, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;
    .param p6, "sendNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/fusepowered/util/FuseGameDataCallback;",
            "Z)I"
        }
    .end annotation

    .prologue
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "fuse_object_key"

    .line 3484
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 3486
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->incrementGameDataRequestId(Ljava/lang/String;)I

    move-result v1

    .line 3488
    .local v1, "reqID":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3490
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3491
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3492
    const-string v2, "account_id"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3493
    const-string v2, "type"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3494
    const-string v2, "friend"

    if-eqz p4, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3495
    const-string v2, "action"

    sget-object v3, Lcom/fusepowered/util/ActionType;->ACTION_GET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v3}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3496
    const-string v2, "reqID"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->gameDataReqId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3498
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3500
    const-string v2, "fuse_object_key"

    invoke-virtual {v0, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3507
    :goto_1
    const-string v2, "fuse_object_keys"

    invoke-static {p1}, Lcom/fusepowered/util/StringUtil;->commaSeparatedArray(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3509
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v2, v0, p5, p6}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;Z)V

    .line 3511
    return v1

    .line 3494
    :cond_0
    const-string v3, "0"

    goto :goto_0

    .line 3504
    :cond_1
    const-string v2, "fuse_object_key"

    const-string v2, ""

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static sendMail(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)I
    .locals 2
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    const/4 v1, 0x0

    .line 4226
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4228
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v0, p2}, Lcom/fusepowered/fuseapi/FuseAPI;->sendMailWithGift(Ljava/lang/String;Ljava/lang/String;IILcom/fusepowered/util/FuseCallback;)I

    move-result v0

    .line 4231
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static sendMailWithGift(Ljava/lang/String;Ljava/lang/String;IILcom/fusepowered/util/FuseCallback;)I
    .locals 5
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "giftId"    # I
    .param p3, "giftAmount"    # I
    .param p4, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4277
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4279
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4281
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->incrementGameDataRequestId(Ljava/lang/String;)I

    move-result v1

    .line 4283
    .local v1, "reqID":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4285
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4286
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4287
    const-string v2, "account_id"

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4288
    const-string v2, "type"

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4289
    const-string v2, "fuse_id"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4290
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4291
    const-string v2, "gift_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4292
    const-string v2, "gift_amount"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4293
    const-string v2, "action"

    sget-object v3, Lcom/fusepowered/util/ActionType;->ACTION_SEND_MAIL:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v3}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4294
    const-string v2, "reqID"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4296
    if-nez p4, :cond_0

    .line 4298
    new-instance p4, Lcom/fusepowered/util/FuseMessageCallback;

    .end local p4    # "callback":Lcom/fusepowered/util/FuseCallback;
    invoke-direct {p4}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    .line 4301
    .restart local p4    # "callback":Lcom/fusepowered/util/FuseCallback;
    :cond_0
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v2, v0, p4}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    move v2, v1

    .line 4306
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "reqID":I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static sendRegisterResource(II)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "value"    # I

    .prologue
    .line 4874
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4876
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4878
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4879
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4880
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_REGISTER_RESOURCE:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4881
    const-string v1, "type"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4882
    const-string v1, "value"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4884
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4885
    return-void
.end method

.method public static sendRobbery(Ljava/lang/String;ZII)V
    .locals 1
    .param p0, "robbedFuseId"    # Ljava/lang/String;
    .param p1, "wasWon"    # Z
    .param p2, "amountWon"    # I
    .param p3, "amountLost"    # I

    .prologue
    .line 4901
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4903
    sget-object v0, Lcom/fusepowered/util/FuseAttackRobberyEventType;->FUSE_ROBBERY:Lcom/fusepowered/util/FuseAttackRobberyEventType;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/fusepowered/fuseapi/FuseAPI;->logUserTransactions(Ljava/lang/String;Lcom/fusepowered/util/FuseAttackRobberyEventType;ZII)V

    .line 4905
    :cond_0
    return-void
.end method

.method private static setDisplayedAdDetails(ILjava/lang/String;)V
    .locals 2
    .param p0, "adId"    # I
    .param p1, "adAction"    # Ljava/lang/String;

    .prologue
    .line 2413
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const-string v1, "displayed_ad_id"

    invoke-static {v0, v1, p0}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2414
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const-string v1, "displayed_ad_action"

    invoke-static {v0, v1, p1}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    return-void
.end method

.method public static setFuseChildActivityOnDisplay(Z)V
    .locals 3
    .param p0, "isDisplayed"    # Z

    .prologue
    .line 849
    const-string v0, "FuseAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child activity display changed, setting displayingAd to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    sput-boolean p0, Lcom/fusepowered/fuseapi/FuseAPI;->displayingAd:Z

    .line 857
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child_activity_displayed_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 858
    return-void

    .line 849
    :cond_0
    const-string v2, "false"

    goto :goto_0
.end method

.method public static setGameData(Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseGameDataCallback;)I
    .locals 1
    .param p0, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p1, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;

    .prologue
    .line 2950
    const-string v0, ""

    invoke-static {v0, p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI;->setGameData(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseGameDataCallback;)I

    move-result v0

    return v0
.end method

.method public static setGameData(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseGameDataCallback;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p2, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;

    .prologue
    .line 2981
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGameDataRequest(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseGameDataCallback;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setGameData(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseGameDataCallback;)I
    .locals 1
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p3, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;

    .prologue
    .line 2997
    invoke-static {p1, p2, p3, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGameDataRequest(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseGameDataCallback;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setGameDataCollection(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseGameDataCallback;)Ljava/util/HashMap;
    .locals 1
    .param p0, "fuseId"    # Ljava/lang/String;
    .param p1, "gameKeyValuePairs"    # Lcom/fusepowered/util/GameKeyValuePairs;
    .param p2, "fuseGameDataCallback"    # Lcom/fusepowered/util/FuseGameDataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fusepowered/util/GameKeyValuePairs;",
            "Lcom/fusepowered/util/FuseGameDataCallback;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3011
    invoke-static {p1, p2, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendGameDataRequestCollection(Lcom/fusepowered/util/GameKeyValuePairs;Lcom/fusepowered/util/FuseGameDataCallback;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static setGender(I)V
    .locals 2
    .param p0, "gender"    # I

    .prologue
    .line 2900
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    const-string v1, "gender"

    invoke-static {v0, v1, p0}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2901
    return-void
.end method

.method public static setMailAsReceived(I)V
    .locals 4
    .param p0, "mailId"    # I

    .prologue
    .line 4321
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4323
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4327
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4328
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4329
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4330
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4331
    const-string v1, "mail_id"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4332
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_MARK_MAIL_AS_READ:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4334
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4336
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static setNotificationSkipped(I)V
    .locals 4
    .param p0, "messageId"    # I

    .prologue
    .line 2373
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->getNotificationSkipCount(I)I

    move-result v0

    .line 2374
    .local v0, "notificationSkipCount":I
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notification_skip_count_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2375
    return-void
.end method

.method private static setNotificationViewed(I)V
    .locals 4
    .param p0, "messageId"    # I

    .prologue
    .line 2364
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->getNotificationViewCount(I)I

    move-result v0

    .line 2365
    .local v0, "notificationViewCount":I
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notification_view_count_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2366
    return-void
.end method

.method private static setNumPlays(Ljava/lang/String;)V
    .locals 5
    .param p0, "gameId"    # Ljava/lang/String;

    .prologue
    const-string v4, "num_plays_"

    .line 2378
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num_plays_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2379
    .local v0, "notificationViewCount":I
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/fusepowered/fuseapi/FuseAPI;->numPlays:I

    .line 2380
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num_plays_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->numPlays:I

    invoke-static {v1, v2, v3}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2381
    return-void
.end method

.method private static setOptOut(I)V
    .locals 3
    .param p0, "optOutValue"    # I

    .prologue
    .line 2721
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opt_out_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/fusepowered/util/SharedPrefsUtil;->writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2722
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    .line 2723
    return-void

    .line 2722
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setupGCM(Ljava/lang/String;Landroid/content/Intent;Landroid/app/Activity;II)V
    .locals 9
    .param p0, "GCM_Project_Number"    # Ljava/lang/String;
    .param p1, "gcm_Intent"    # Landroid/content/Intent;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "smallIconID"    # I
    .param p4, "largeIconID"    # I

    .prologue
    const-string v8, "Push Notification"

    const-string v7, "PUSH NOTIFICATION"

    const-string v4, "FUSE_GCM"

    const-string v6, ""

    .line 507
    if-nez p2, :cond_0

    .line 509
    const-string v3, "FUSE_GCM"

    const-string v3, "Activity should not be null"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_0
    return-void

    .line 513
    :cond_0
    if-nez p1, :cond_1

    .line 515
    const-string v3, "FUSE_GCM"

    const-string v3, "Intent should not be null"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    :cond_1
    if-eqz p0, :cond_2

    const-string v3, ""

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 521
    :cond_2
    const-string v3, "FUSE_GCM"

    const-string v3, "Project number can NOT be null"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 526
    :cond_3
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 528
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    .line 531
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 534
    :cond_4
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 535
    .local v2, "resID":I
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    .line 538
    .end local v2    # "resID":I
    :cond_5
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    if-eqz v3, :cond_6

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 540
    :cond_6
    const-string v3, "PUSH NOTIFICATION"

    const-string v3, "Error: The app name is null.  Stopping the registration. Push Notifications will be disabled"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :cond_7
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    const-string v4, "[^A-Za-z0-9]"

    const-string v5, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    .line 547
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    .line 549
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_8

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    .line 551
    :cond_8
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    .line 554
    :cond_9
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_a

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    .line 556
    :cond_a
    const-string v3, "PUSH NOTIFICATION"

    const-string v3, "Error: The package name is null.  Stopping the registration. Push Notifications will be disabled"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 559
    :cond_b
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 560
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 562
    :cond_c
    sput p3, Lcom/fusepowered/fuseapi/FuseAPI;->iconID:I

    .line 563
    if-nez p4, :cond_e

    .line 564
    sput p3, Lcom/fusepowered/fuseapi/FuseAPI;->drawerIconID:I

    .line 572
    :goto_1
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->gcmContext:Landroid/content/Context;

    .line 574
    invoke-static {p2}, Lcom/fusepowered/push/FuseGCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 577
    invoke-static {p2}, Lcom/fusepowered/push/FuseGCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 579
    invoke-static {p2}, Lcom/fusepowered/push/FuseGCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    .line 580
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 582
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {p2, v3}, Lcom/fusepowered/push/FuseGCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 585
    :cond_d
    const-string v3, "Push Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is the Registration:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->registrationID:Ljava/lang/String;

    invoke-static {v3}, Lcom/fusepowered/fuseapi/FuseAPI;->registerGCM(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_2
    sput-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->forGCMEvents:Landroid/content/Intent;

    goto/16 :goto_0

    .line 566
    :cond_e
    sput p4, Lcom/fusepowered/fuseapi/FuseAPI;->drawerIconID:I

    goto :goto_1

    .line 588
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Push Notification"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static declared-synchronized showDialog(Lcom/fusepowered/util/Message;I)V
    .locals 9
    .param p0, "message"    # Lcom/fusepowered/util/Message;
    .param p1, "next"    # I

    .prologue
    const/4 v8, 0x1

    .line 2197
    const-class v4, Lcom/fusepowered/fuseapi/FuseAPI;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getActionTitle()Ljava/lang/String;

    move-result-object v0

    .line 2198
    .local v0, "actionTile":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2199
    :cond_0
    const-string v0, "OK"

    .line 2202
    :cond_1
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2203
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2204
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2205
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2206
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2209
    const-string v5, "FUSE NOTIFICATION"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "These are the message variables "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    const/4 v1, 0x0

    .line 2211
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getMandatory()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getIsUrl()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 2213
    new-instance v3, Lcom/fusepowered/fuseapi/FuseAPI$5;

    invoke-direct {v3, p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI$5;-><init>(Lcom/fusepowered/util/Message;I)V

    .line 2246
    .local v3, "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v2, "Cancel"

    .line 2248
    .local v2, "dismissString":Ljava/lang/String;
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/fusepowered/fuseapi/FuseAPI$6;

    invoke-direct {v6, p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI$6;-><init>(Lcom/fusepowered/util/Message;I)V

    invoke-virtual {v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2346
    .end local v2    # "dismissString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getIsUpgrade()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2347
    const/4 v5, 0x1

    sput-boolean v5, Lcom/fusepowered/fuseapi/FuseAPI;->showingManditoryMessage:Z

    .line 2354
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/fusepowered/util/Message;->setDisplayed(Z)V

    .line 2355
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2356
    monitor-exit v4

    return-void

    .line 2264
    .end local v3    # "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getIsUrl()I

    move-result v5

    if-nez v5, :cond_4

    .line 2267
    new-instance v3, Lcom/fusepowered/fuseapi/FuseAPI$7;

    invoke-direct {v3, p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI$7;-><init>(Lcom/fusepowered/util/Message;I)V

    .line 2301
    .restart local v3    # "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2305
    goto :goto_0

    .line 2308
    .end local v3    # "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_4
    new-instance v3, Lcom/fusepowered/fuseapi/FuseAPI$8;

    invoke-direct {v3, p0}, Lcom/fusepowered/fuseapi/FuseAPI$8;-><init>(Lcom/fusepowered/util/Message;)V

    .line 2340
    .restart local v3    # "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/fusepowered/util/Message;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2197
    .end local v0    # "actionTile":Ljava/lang/String;
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v3    # "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method public static showFuseApiAdBrowser(Lcom/fusepowered/activities/FuseApiBrowser;)V
    .locals 5
    .param p0, "fuseApiAdBrowser"    # Lcom/fusepowered/activities/FuseApiBrowser;

    .prologue
    .line 2460
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    invoke-virtual {v3}, Lcom/fusepowered/util/Ad;->getHtmlBody()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2461
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    invoke-virtual {v3}, Lcom/fusepowered/util/Ad;->getId()I

    move-result v1

    .line 2462
    .local v1, "adId":I
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    invoke-virtual {v3}, Lcom/fusepowered/util/Ad;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2463
    .local v0, "adAction":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/fusepowered/fuseapi/FuseAPI;->setDisplayedAdDetails(ILjava/lang/String;)V

    .line 2469
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2470
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "AD_ACTION"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2471
    const-string v3, "AD_HTML"

    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    invoke-virtual {v4}, Lcom/fusepowered/util/Ad;->getHtmlBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2472
    const-string v3, "AD_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2473
    const-string v3, "PW"

    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget v4, v4, Lcom/fusepowered/util/Ad;->pw:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2474
    const-string v3, "LW"

    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget v4, v4, Lcom/fusepowered/util/Ad;->lw:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2475
    const-string v3, "PH"

    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget v4, v4, Lcom/fusepowered/util/Ad;->ph:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2476
    const-string v3, "LH"

    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget v4, v4, Lcom/fusepowered/util/Ad;->lh:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2477
    const-string v3, "o"

    sget-object v4, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    iget v4, v4, Lcom/fusepowered/util/Ad;->o:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2478
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2488
    .end local v0    # "adAction":Ljava/lang/String;
    .end local v1    # "adId":I
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2481
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/fusepowered/fuseapi/FuseAPI;->setFuseChildActivityOnDisplay(Z)V

    .line 2482
    const/4 v3, -0x1

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/fusepowered/fuseapi/FuseAPI;->setDisplayedAdDetails(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static showFuseApiMoreGamesBrowser(Ljava/lang/String;Lcom/fusepowered/activities/FuseApiBrowser;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "fuseApiMoregamesBrowser"    # Lcom/fusepowered/activities/FuseApiBrowser;

    .prologue
    .line 2847
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2849
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2850
    const-string v1, "RETURN"

    invoke-static {}, Lcom/fusepowered/util/FuseServer;->getMoreGamesCloseImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2852
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2853
    return-void
.end method

.method private static declared-synchronized showNextMessage(I)V
    .locals 9
    .param p0, "i"    # I

    .prologue
    const/4 v8, 0x1

    .line 2149
    const-class v6, Lcom/fusepowered/fuseapi/FuseAPI;

    monitor-enter v6

    :try_start_0
    sget-boolean v7, Lcom/fusepowered/fuseapi/FuseAPI;->showingManditoryMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 2194
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 2154
    :cond_1
    :try_start_1
    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v7}, Lcom/fusepowered/util/ResponseValues;->getNextMessage()Lcom/fusepowered/util/Message;

    move-result-object v1

    .line 2156
    .local v1, "m":Lcom/fusepowered/util/Message;
    if-nez v1, :cond_2

    .line 2157
    const/4 v7, 0x0

    sput-boolean v7, Lcom/fusepowered/fuseapi/FuseAPI;->displayNotifications:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2149
    .end local v1    # "m":Lcom/fusepowered/util/Message;
    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7

    .line 2161
    .restart local v1    # "m":Lcom/fusepowered/util/Message;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getId()I

    move-result v2

    .line 2162
    .local v2, "messageId":I
    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->getNotificationViewCount(I)I

    move-result v5

    .line 2163
    .local v5, "notificationViewCount":I
    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->getNotificationSkipCount(I)I

    move-result v4

    .line 2165
    .local v4, "notificationSkipCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2173
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getSticky()I

    move-result v3

    .line 2174
    .local v3, "messageSticky":I
    if-eq v3, v8, :cond_5

    if-nez v3, :cond_4

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getMax_views()I

    move-result v7

    if-ge v5, v7, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getShowOnView()I

    move-result v7

    if-lt v4, v7, :cond_4

    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/fusepowered/util/FusePowerManager;->isSleepMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getMandatory()I

    move-result v7

    if-ne v7, v8, :cond_6

    :cond_5
    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->isDisplayed()Z

    move-result v7

    if-nez v7, :cond_6

    .line 2178
    add-int/lit8 p0, p0, 0x1

    invoke-static {v1, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->showDialog(Lcom/fusepowered/util/Message;I)V

    goto :goto_0

    .line 2182
    :cond_6
    add-int/lit8 p0, p0, 0x1

    .line 2183
    if-eqz v5, :cond_7

    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getMax_views()I

    move-result v7

    if-ge v5, v7, :cond_8

    :cond_7
    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->getShowOnView()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 2188
    invoke-static {v2}, Lcom/fusepowered/fuseapi/FuseAPI;->setNotificationSkipped(I)V

    .line 2190
    :cond_8
    invoke-virtual {v1}, Lcom/fusepowered/util/Message;->isDisplayed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2191
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->showNextMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static startSession(Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Lcom/fusepowered/util/FuseCallback;)V
    .locals 3
    .param p0, "gameId"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 313
    invoke-static {p1, p2}, Lcom/fusepowered/fuseapi/FuseAPI;->initializeFuseAPI(Landroid/app/Activity;Landroid/content/Context;)V

    .line 314
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .line 316
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 318
    :cond_0
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->clearAll()V

    .line 319
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->setNumPlays(Ljava/lang/String;)V

    .line 321
    new-instance v0, Lcom/fusepowered/util/GameInfo;

    invoke-static {}, Lcom/fusepowered/util/PropertyManager;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/util/GameInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    .line 323
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->resetRequestId()V

    .line 324
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->resetGameDataRequestId()V

    .line 325
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->resetFuseChildActivityOnDisplay()V

    .line 326
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->resetDisplayedAdDetails()V

    .line 328
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "opt_out_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0    # "gameId":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p2, p0, v0}, Lcom/fusepowered/util/SharedPrefsUtil;->readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    :goto_0
    sput-boolean p0, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    .line 331
    const/4 p0, 0x0

    sput-boolean p0, Lcom/fusepowered/fuseapi/FuseAPI;->suspended:Z

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 335
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 336
    .local p0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .end local p2    # "ctx":Landroid/content/Context;
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0    # "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 337
    .local p0, "applicationName":Ljava/lang/String;
    const-string p2, "[^A-Za-z0-9]"

    const-string v1, ""

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 338
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 340
    .local p2, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fuse."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2    # "packageName":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0    # "applicationName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 342
    .local p0, "fileName":Ljava/lang/String;
    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .end local p0    # "fileName":Ljava/lang/String;
    sput-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    .line 345
    sget-boolean p0, Lcom/fusepowered/fuseapi/FuseAPI;->optOut:Z

    if-eqz p0, :cond_5

    .line 347
    const-string p0, "opt_out"

    const-string p1, "1"

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :goto_1
    const-string p0, "wifi"

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/fusepowered/fuseapi/NetworkService;->isWifiConnection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string p0, "jb"

    sget-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {p1}, Lcom/fusepowered/util/GameInfo;->getJailBroken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string p0, "e"

    sget-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {p1}, Lcom/fusepowered/util/GameInfo;->getJailBroken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string p0, "id"

    sget p1, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string p0, "timestamp"

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string p0, "action"

    sget-object p1, Lcom/fusepowered/util/ActionType;->ACTION_SESSION_START:Lcom/fusepowered/util/ActionType;

    invoke-virtual {p1}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {p0}, Lcom/fusepowered/util/DeviceInfoFactory;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    .line 386
    .local p0, "deviceId":Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 388
    const-string p1, "android_device_id"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_1
    sget-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    .end local p0    # "deviceId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "android_id"

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 393
    .local p0, "androidId":Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 395
    const-string p1, "android_id"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_2
    if-eqz p3, :cond_6

    move-object p0, p3

    .end local p0    # "androidId":Ljava/lang/String;
    :goto_2
    sput-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    .line 400
    sget-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    sget-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->fuseCallback:Lcom/fusepowered/util/FuseCallback;

    invoke-static {p0, v0, p1}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 405
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-void

    .line 330
    .restart local p1    # "activity":Landroid/app/Activity;
    .local p2, "ctx":Landroid/content/Context;
    :cond_4
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 351
    .end local p2    # "ctx":Landroid/content/Context;
    .restart local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string p0, "timestamp"

    new-instance p1, Ljava/util/Date;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string p0, "opt_out"

    const-string p1, "0"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string p0, "name"

    sget-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {p1}, Lcom/fusepowered/util/DeviceInfoFactory;->getUser()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string p0, "model"

    sget-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {p1}, Lcom/fusepowered/util/DeviceInfoFactory;->getModel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string p0, "sysver"

    sget-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {p1}, Lcom/fusepowered/util/DeviceInfoFactory;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string p0, "machine"

    sget-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {p1}, Lcom/fusepowered/util/DeviceInfoFactory;->getHardware()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string p0, "carrier"

    sget-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {p1}, Lcom/fusepowered/util/DeviceInfoFactory;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string p0, "country"

    sget-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {p1}, Lcom/fusepowered/util/DeviceInfoFactory;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string p0, "language"

    sget-object p1, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {p1}, Lcom/fusepowered/util/DeviceInfoFactory;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 362
    .local p1, "r":Landroid/graphics/Rect;
    sget-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 363
    .local p0, "w":Landroid/view/Window;
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .end local p0    # "w":Landroid/view/Window;
    invoke-virtual {p0, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 365
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p2

    .line 366
    .local p0, "height":I
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    .end local p1    # "r":Landroid/graphics/Rect;
    sub-int p1, p2, p1

    .line 369
    .local p1, "width":I
    const-string p2, "w"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "width":I
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string p1, "h"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "height":I
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    .line 373
    .local p0, "Rotation":I
    const-string p1, "o"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "Rotation":I
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 398
    .local p0, "androidId":Ljava/lang/String;
    :cond_6
    new-instance p0, Lcom/fusepowered/util/FuseMessageCallback;

    .end local p0    # "androidId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    goto/16 :goto_2
.end method

.method public static suspendSession()V
    .locals 4

    .prologue
    .line 733
    const-string v1, "SUSPEND"

    const-string v2, "Got a request to Suspend"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->onPause()V

    .line 735
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->isFuseChildActivityOnDisplay()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->suspended:Z

    if-eqz v1, :cond_1

    :cond_0
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->overrideSuspend:Z

    if-eqz v1, :cond_2

    .line 738
    :cond_1
    sget-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->showingMoreGames:Z

    if-eqz v1, :cond_3

    .line 765
    :cond_2
    :goto_0
    return-void

    .line 747
    :cond_3
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 749
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 750
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_SUSPEND_SESSION:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 754
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->suspended:Z

    .line 755
    const/4 v1, 0x0

    sput-boolean v1, Lcom/fusepowered/fuseapi/FuseAPI;->overrideSuspend:Z

    goto :goto_0
.end method

.method public static testGCMSetup(Landroid/app/Activity;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const-string v10, "."

    const-string v9, ""

    const-string v8, "PUSH NOTIFICATION"

    .line 417
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 419
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    .line 421
    const-string v5, "PUSH NOTIFICATION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This is the app name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 426
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v3, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 427
    .local v3, "resID":I
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    .line 428
    const-string v5, "PUSH NOTIFICATION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alternative App Name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v3    # "resID":I
    :cond_1
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 433
    :cond_2
    const-string v5, "PUSH NOTIFICATION"

    const-string v5, "Error: The app name is null.  Stopping the registration. Push Notifications will be disabled"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_3
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appNameDisplay:Ljava/lang/String;

    .line 436
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    const-string v6, "[^A-Za-z0-9]"

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    .line 439
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    .line 440
    const-string v5, "PUSH NOTIFICATION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This is the package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 444
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    .line 445
    const-string v5, "PUSH NOTIFICATION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alternative method to get package name... This is the package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_5
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 450
    :cond_6
    const-string v5, "PUSH NOTIFICATION"

    const-string v5, "Error: The package name is null.  Stopping the registration. Push Notifications will be disabled"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_7
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 453
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 458
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".fusepowered.push.FuseRecordGCMResponse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "intentName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v2, "receiver":Landroid/content/Intent;
    sget-object v5, Lcom/fusepowered/fuseapi/FuseAPI;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const/16 v5, 0x20

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 463
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_9

    .line 465
    const-string v5, "PUSH NOTIFICATION"

    const-string v5, "The setup is correct."

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_0
    return-void

    .line 470
    :cond_9
    const-string v5, "PUSH NOTIFICATION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The setup for the broadcast receiver is not working. Intent name we are looking for is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static triggerFuseAdDisplay(Lcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 2
    .param p0, "fuseApiAdBrowser"    # Lcom/fusepowered/activities/FuseApiBrowser;
    .param p1, "adCallback"    # Lcom/fusepowered/util/FuseAdCallback;

    .prologue
    .line 1354
    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    .line 1355
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-virtual {v0, p0}, Lcom/fusepowered/util/FuseAdCallback;->setFuseApiAdBrowser(Lcom/fusepowered/activities/FuseApiBrowser;)V

    .line 1356
    const-string v0, "FUSE AD"

    const-string v1, "Showing a fuse ad, assuming there is already an add"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAd()Lcom/fusepowered/util/Ad;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    .line 1358
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->showFuseApiAdBrowser(Lcom/fusepowered/activities/FuseApiBrowser;)V

    .line 1360
    return-void

    .line 1354
    :cond_0
    new-instance v0, Lcom/fusepowered/util/FuseAdCallbackImpl;

    invoke-direct {v0}, Lcom/fusepowered/util/FuseAdCallbackImpl;-><init>()V

    goto :goto_0
.end method

.method public static triggerMopubAdDisplay(Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 3
    .param p0, "adCallback"    # Lcom/fusepowered/util/FuseAdCallback;

    .prologue
    .line 1365
    const-string v0, "Mopub"

    const-string v1, "Trying to show a mobup ad"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    if-eqz p0, :cond_0

    move-object v0, p0

    :goto_0
    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->fuseAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    .line 1368
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getAd()Lcom/fusepowered/util/Ad;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->adToDisplay:Lcom/fusepowered/util/Ad;

    .line 1370
    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/fusepowered/fuseapi/FuseAPI;->displayMoPubAd([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    .line 1371
    return-void

    .line 1366
    :cond_0
    new-instance v0, Lcom/fusepowered/util/FuseAdCallbackImpl;

    invoke-direct {v0}, Lcom/fusepowered/util/FuseAdCallbackImpl;-><init>()V

    goto :goto_0
.end method

.method public static twitterLogin(Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "twitterId"    # Ljava/lang/String;
    .param p1, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3635
    const-string v1, ""

    sget-object v0, Lcom/fusepowered/util/Gender;->FUSE_GENDER_UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_TWITTER:Lcom/fusepowered/util/AccountType;

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3636
    return-void
.end method

.method public static twitterLogin(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/FuseCallback;)V
    .locals 6
    .param p0, "twitterId"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 3665
    sget-object v0, Lcom/fusepowered/util/Gender;->FUSE_GENDER_UNKNOWN:Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lcom/fusepowered/util/AccountType;->FUSE_TWITTER:Lcom/fusepowered/util/AccountType;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/fuseapi/FuseAPI;->getRegisterId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/fusepowered/util/AccountType;Lcom/fusepowered/util/FuseCallback;)V

    .line 3666
    return-void
.end method

.method private static updateCommonParams()V
    .locals 4

    .prologue
    const-string v3, "session_id"

    .line 216
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    .line 219
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "game_ver"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "game_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "udid"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {v2}, Lcom/fusepowered/util/DeviceInfoFactory;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "mac"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    invoke-virtual {v2}, Lcom/fusepowered/util/DeviceInfoFactory;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "debug"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getDebug()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "pl"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v2}, Lcom/fusepowered/util/GameInfo;->getPl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "dt"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "session_id"

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    :goto_0
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "session_id"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 240
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v0}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "session_id"

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v1}, Lcom/fusepowered/util/ResponseValues;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_1
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->gameInfo:Lcom/fusepowered/util/GameInfo;

    invoke-virtual {v0}, Lcom/fusepowered/util/GameInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->incrementRequestId(Ljava/lang/String;)V

    .line 247
    return-void

    .line 234
    :cond_2
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    const-string v1, "session_id"

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static updateFriendsListFromServer(Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 4499
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 4501
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4503
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4504
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4505
    const-string v1, "account_id"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4506
    const-string v1, "type"

    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4507
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_GET_FRIENDS_LIST:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4509
    if-nez p0, :cond_0

    .line 4511
    new-instance p0, Lcom/fusepowered/util/FuseMessageCallback;

    .end local p0    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    invoke-direct {p0}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    .line 4514
    .restart local p0    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p0}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 4515
    return-void
.end method

.method private static updateFuseAPI(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 186
    sput-object p0, Lcom/fusepowered/fuseapi/FuseAPI;->mainActivity:Landroid/app/Activity;

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    .line 188
    new-instance v0, Lcom/fusepowered/util/DeviceInfoFactory;

    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fusepowered/util/DeviceInfoFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->deviceInfoFactory:Lcom/fusepowered/util/DeviceInfoFactory;

    .line 189
    return-void
.end method

.method public static userOptOut(I)V
    .locals 4
    .param p0, "optOut"    # I

    .prologue
    .line 2702
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2704
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2706
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2707
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2708
    const-string v1, "opt_out"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2709
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_USER_OPT_OUT:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2711
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2713
    invoke-static {p0}, Lcom/fusepowered/fuseapi/FuseAPI;->setOptOut(I)V

    .line 2714
    return-void
.end method

.method public static userPushNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "fuse_id"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 622
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->responseValues:Lcom/fusepowered/util/ResponseValues;

    invoke-virtual {v2}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    .line 624
    .local v0, "acct":Lcom/fusepowered/util/Account;
    if-nez v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 629
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 630
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    sget v3, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v2, "action"

    sget-object v3, Lcom/fusepowered/util/ActionType;->ACTION_SEND_PUSH_USER:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v3}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v2, "type"

    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v2, "account_id"

    invoke-virtual {v0}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string v2, "fuse_id"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v2, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v3, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v3}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v2, v1, v3}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    goto :goto_0
.end method

.method public static utcTimeFromServer(Lcom/fusepowered/util/FuseCallback;)V
    .locals 4
    .param p0, "callback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 2668
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->updateCommonParams()V

    .line 2670
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2672
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    sget v2, Lcom/fusepowered/fuseapi/FuseAPI;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2673
    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    const-string v1, "action"

    sget-object v2, Lcom/fusepowered/util/ActionType;->ACTION_FETCH_SERVER_UTC_TIME:Lcom/fusepowered/util/ActionType;

    invoke-virtual {v2}, Lcom/fusepowered/util/ActionType;->getMessageCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2676
    if-eqz p0, :cond_0

    .line 2678
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    invoke-static {v1, v0, p0}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    .line 2684
    :goto_0
    return-void

    .line 2682
    :cond_0
    sget-object v1, Lcom/fusepowered/fuseapi/FuseAPI;->commonParams:Ljava/util/HashMap;

    new-instance v2, Lcom/fusepowered/util/FuseMessageCallback;

    invoke-direct {v2}, Lcom/fusepowered/util/FuseMessageCallback;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/fusepowered/fuseapi/MessagingService;->sendJsonMessage(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fusepowered/util/FuseCallback;)V

    goto :goto_0
.end method
