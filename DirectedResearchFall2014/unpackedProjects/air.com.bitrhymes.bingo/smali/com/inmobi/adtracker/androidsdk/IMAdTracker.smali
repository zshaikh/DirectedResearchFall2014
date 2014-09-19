.class public Lcom/inmobi/adtracker/androidsdk/IMAdTracker;
.super Ljava/lang/Object;
.source "IMAdTracker.java"


# static fields
.field private static a:Lcom/inmobi/adtracker/androidsdk/IMAdTracker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/inmobi/adtracker/androidsdk/IMAdTracker;
    .locals 3

    .prologue
    .line 39
    const-class v0, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;

    monitor-enter v0

    :try_start_0
    const-string v1, "3.6.1"

    invoke-static {}, Lcom/inmobi/commons/IMCommonUtil;->getReleaseVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;

    const-string v2, "SDK Bundle mismatch. Ad Tracker SDK version : 2.5.1, IMCommons SDK version : 3.6.1.Please add Ad Tracker SDK and IMCommons SDK jars from the latest bundle"

    invoke-direct {v1, v2}, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 43
    :cond_0
    :try_start_1
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;->a:Lcom/inmobi/adtracker/androidsdk/IMAdTracker;

    if-nez v1, :cond_1

    .line 44
    new-instance v1, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;

    invoke-direct {v1}, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;-><init>()V

    sput-object v1, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;->a:Lcom/inmobi/adtracker/androidsdk/IMAdTracker;

    .line 45
    :cond_1
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;->a:Lcom/inmobi/adtracker/androidsdk/IMAdTracker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-string v2, "IMAdTrackerSDK_V_2_5_1"

    .line 59
    if-nez p1, :cond_0

    .line 60
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    const-string v0, "Application Context NULL"

    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    if-nez p2, :cond_1

    .line 65
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    const-string v0, "APP ID Cannot be NULL"

    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;

    .line 67
    const-string v1, "appId cannot be null"

    .line 66
    invoke-direct {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 70
    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;

    const-string v1, "appId cannot be blank"

    invoke-direct {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    const-string v0, "IMAdtracker init successfull"

    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p1}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->setAppContext(Landroid/content/Context;)V

    .line 75
    const-string v0, "IMAdTrackerStatusUpload"

    const-string v1, "appId"

    invoke-static {p1, v0, v1, p2}, Lcom/inmobi/commons/internal/IMFileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->checkPermManifest()Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;

    const-string v1, "Add android.permission.INTERNET and android.permission.ACCESS_NETWORK_STATE permission in Android manifest"

    invoke-direct {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->init()V

    .line 83
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;->initializeWebview()Z

    .line 85
    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/ConnBroadcastReciever;

    invoke-direct {v0}, Lcom/inmobi/adtracker/androidsdk/impl/ConnBroadcastReciever;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void
.end method

.method public reportAppDownloadGoal()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;->reportInternalGoals(Ljava/lang/String;)Z

    .line 96
    return-void
.end method

.method public reportCustomGoal(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    const-string v0, "download"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;

    const-string v1, "Download Goal should be reported using reportAppDownloadGoal().."

    invoke-direct {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inmobi/adtracker/androidsdk/IMAdTracker;->reportInternalGoals(Ljava/lang/String;)Z

    .line 113
    return-void
.end method

.method protected reportInternalGoals(Ljava/lang/String;)Z
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v3, ""

    const-string v4, "IMAdTrackerSDK_V_2_5_1"

    .line 118
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "appId"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/IMFileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-ne v3, v1, :cond_1

    .line 120
    :cond_0
    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;

    const-string v1, "Please call init() with valid context and app id"

    invoke-direct {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    :cond_2
    new-instance v0, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;

    const-string v1, "Please pass a valid GoalName"

    invoke-direct {v0, v1}, Lcom/inmobi/adtracker/androidsdk/impl/IMAdTrackerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    const-string v1, "download"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->checkDownloadGoalUploaded()Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v6

    .line 163
    :goto_0
    return v0

    .line 131
    :cond_4
    const-string v1, "download"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 133
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->checkDownloadGoalAdded()Z

    move-result v1

    if-nez v1, :cond_5

    .line 135
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IMAdTrackerStatusUpload"

    const-string v3, "insertStatus"

    invoke-static {v1, v2, v3, v5}, Lcom/inmobi/commons/internal/IMFileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Goal Queued "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v1, p1, v5, v7, v8}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->addGoal(Ljava/lang/String;IJ)Z

    .line 146
    :cond_5
    :goto_1
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 147
    const-string v0, "IMAdTrackerSDK_V_2_5_1"

    const-string v0, "Not connected to Internet"

    invoke-static {v4, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 148
    goto :goto_0

    .line 142
    :cond_6
    const-string v1, "IMAdTrackerSDK_V_2_5_1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Goal Queued "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v1, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->goalEventList:Lcom/inmobi/adtracker/androidsdk/impl/GoalList;

    invoke-virtual {v1, p1, v5, v7, v8}, Lcom/inmobi/adtracker/androidsdk/impl/GoalList;->addGoal(Ljava/lang/String;IJ)Z

    goto :goto_1

    .line 151
    :cond_7
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    if-nez v1, :cond_8

    .line 154
    const-string v2, "IMAdTrackerSDK_V_2_5_1"

    const-string v2, "ODIN1 generation failed"

    invoke-static {v4, v2}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_8
    invoke-static {}, Lcom/inmobi/adtracker/androidsdk/impl/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getAndroidIdMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 158
    if-nez v2, :cond_9

    .line 159
    const-string v3, "IMAdTrackerSDK_V_2_5_1"

    const-string v3, "UDID generation failed"

    invoke-static {v4, v3}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_9
    invoke-static {v0, v1, v2}, Lcom/inmobi/adtracker/androidsdk/impl/net/NetworkInterface;->reportToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/adtracker/androidsdk/impl/ConfigConstants$StatusCode;

    move v0, v5

    .line 163
    goto/16 :goto_0
.end method
